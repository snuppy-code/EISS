--math input and other shorthands
m,i,o,p = math,input,output,property
ign,osn,igb,osb = i.getNumber, o.setNumber, i.getBool, o.setBool
pgn,pgb = p.getNumber, p.getBool
cos,sin = m.cos, m.sin
pi = m.pi
pi2 = pi*2

--vector functions
function vec(x,y,z)
return {x=x or 0,y=y or 0,z=z or 0}
end
function add(a,b)
return vec(a.x+b.x, a.y+b.y, a.z+b.z)
end
function multf(a,n)
return vec(a.x*n, a.y*n, a.z*n)
end
function invert(a)
return multf(a,-1)
end
function subt(a,b)
return add(a,invert(b))
end
function length(a)
return m.sqrt(a.x*a.x+a.y*a.y+a.z*a.z)
end
function dot(a,b)
return a.x*b.x+a.y*b.y+a.z*b.z
end
function cross(a,b)
return vec(a.y*b.z-a.z*b.y, a.z*b.x-a.x*b.z, a.x*b.y-a.y*b.x)
end
function stoc(hor,ver,stocd)
stocd=stocd or 1
return vec(m.sin(hor)*m.cos(ver)*stocd, m.cos(hor)*m.cos(ver)*stocd, m.sin(ver)*stocd)
end
function tolocal(a,r,f,u)
return vec(dot(r,a),dot(f,a),dot(u,a))
end
function torelative(a,r,f,u)
return add(add(multf(r,a.x), multf(f,a.y)), multf(u,a.z))
end


---- IFF / DATALINK SETUP ----
maxfriendlies = pgn("Max friendlies")
usernumber = pgn("User number")
freqseed = pgn("Frequency seed")
encseed = pgn("Encryption seed")
basefreqmin,basefreqmax = 1871759, 6393518

-- find base frequency all friendlies will go from, based on freq seed
m.randomseed(freqseed)
basefreq = m.random(basefreqmin,basefreqmax)

--define table that will hold friendly offsets, and later, their final frequency
friendlyfreq = {}

-- find offsets for each friendly, ensuring no duplicates, based on freq seed
m.randomseed(freqseed)
for i = 1,maxfriendlies do
  thisoffset = m.random(-605791, 605791)
  for _,v in ipairs(friendlyfreq) do
    while v == thisoffset do
      thisoffset = m.random(-605791, 605791)
    end
  end
  friendlyfreq[i] = thisoffset
end
-- add the base frequency to each friendly's offset to get them to their true freq
for k in ipairs(friendlyfreq) do
  friendlyfreq[k] = friendlyfreq[k] + basefreq
end

-- setup vars 
currentfriend = 1
currentenemy = 1
enemybase = 719700
ticksdelay = 7
radiobuffer = {}
radiobufferlength = 8

friendlyfiles = {}--number indexed table with all friendlies, specific order or anything doesn't really matter as long as they are all there
emissiontargets = {}--number indexed table with all enemies found through datalink sniffing, again specific order doesn't matter
targetfiles = {}

--radar & tgt handling info
mergedist = pgn("Merge Dist")
culltime = pgn("Cull Time")

rawtargets = {}--"pos" stores position, "rel" stores relative vec, "tsd" stores time since detected
for i = 1,14 do
	rawtargets[i] = {}
end

--these work
function encrypt(h)
    --print("encseed: "..round(encseed,2))
    --print(string.format("Normal:\nx: %.2f\ny: %.2f\nz: %.2f", h.x, h.y, h.z))
    --h = vec(h.y/(3.57*encseed), h.x/(3.81*encseed), h.z/(4.19*encseed))
    --print(string.format("Encrypted:\nx: %.2f\ny: %.2f\nz: %.2f", h.x, h.y, h.z))
    return vec(h.y/(3.57*encseed), h.x/(3.81*encseed), h.z/(4.19*encseed))
end

function decrypt(g)
    --g = vec(g.y*(3.81*encseed), g.x*(3.57*encseed), g.z*(4.19*encseed))
    --print(string.format("Decrypted:\nx: %.2f\ny: %.2f\nz: %.2f", g.x, g.y, g.z))
    return vec(g.y*(3.81*encseed), g.x*(3.57*encseed), g.z*(4.19*encseed))
end

ticks = 0
selectedtgt = 0
enemytransindex,friendlytransindex=0,0
function onTick()
	ticks = ticks + 1
	--my position vector
	mpos = vec(ign(1),ign(2),ign(3))
	touchin = ign(27) == 1
	if touchin and not touch and (#targetfiles > 0) then
		if targetfiles[selectedtgt%(#targetfiles)+1].pos.z > 0 then
			selectedtgt = selectedtgt%(#targetfiles)+1
			--debug.log("cycled: "..selectedtgt)
		end
	end
	touch = touchin

	ACM = ign(28) == 1

	--facing vectors
	rx,ry,rz=ign(4),ign(5),ign(6)
	cx,cy,cz=cos(rx),cos(ry),cos(rz)
	sx,sy,sz=sin(rx),sin(ry),sin(rz)
	right = vec(cy*cz, -sy, cy*sz)
	fwd = vec(sx*sz + cx*sy*cz, cx*cy, -sx*cz + cx*sy*sz)
	up = cross(right,fwd)

	---- VICLINK & ENEMY SNIFF ----
	--set freq
	currentiff = ticks % 3 > 0
	if currentiff then
		--2/3 ticks, check next friendly
		--if currentfriend == maxfriendlies then 
		--	currentfriend = 1 
		--else
		--	currentfriend = currentfriend+1
		--end
		--if currentfriend == usernumber then 
		--	if currentfriend == maxfriendlies then
		--		currentfriend = 1
		--	else
		--		currentfriend = currentfriend+1
		--	end
		--end
		--usedfreq = friendlyfreq[currentfriend]
		currentfriend = (currentfriend == maxfriendlies) and 1 or currentfriend + 1
		currentfriend = (currentfriend == usernumber) and ((currentfriend == maxfriendlies) and 1 or currentfriend + 1) or currentfriend
		usedfreq = friendlyfreq[currentfriend]
	else
		--1/3 ticks, check next enemy
		--if currentenemy == 9 then 
		--	currentenemy = 1 
		--else
		--	currentenemy = currentenemy+1
		--end
		--usedfreq = enemybase+currentenemy
		currentenemy = (currentenemy == 9) and 1 or currentenemy + 1
		usedfreq = enemybase + currentenemy
	end

	--copy and overwrite everything up one
	for i=radiobufferlength,2,-1 do
		radiobuffer[i] = radiobuffer[i-1]
	end
	if currentiff then 
		radiobuffer[1] = {iff = currentiff,id=currentfriend}
		--debug.log("checking friend: "..currentfriend.." freq: "..usedfreq)
	else
		radiobuffer[1] = {iff = currentiff,id=currentenemy}
		--debug.log("checking enemy: "..currentenemy.." freq: "..usedfreq)
	end
	if #radiobuffer == radiobufferlength then
		--debug.log("#radiobuffer == radiobufferlength")
		if radiobuffer[ticksdelay].iff then
			--debug.log("radiobuffer[ticksdelay].iff")
			friendlyfiles[radiobuffer[ticksdelay].id]={pos=decrypt(vec(ign(7),ign(8),ign(9))),sel=decrypt(vec(ign(21),ign(22),ign(23)))}
		else
			--debug.log("NOT radiobuffer[ticksdelay].iff")
			--debug.log("inserted at "..radiobuffer[ticksdelay].id)
			rawtargets[4 + radiobuffer[ticksdelay].id].pos = vec(ign(10),ign(11),0)
			rawtargets[4 + radiobuffer[ticksdelay].id].tsd = 0
			rawtargets[4 + radiobuffer[ticksdelay].id].e = true
		end
		--[[debug.log("friendlies:")
		for k,v in pairs(friendlyfiles) do
			debug.log("k: "..k.." v: "..v)
		end
		debug.log("emissiontargets:")
		for k,v in ipairs(emissiontargets) do
			debug.log("k: "..tostring(k).." v: "..tostring(v.x))
		end]]
	end

	osn(3,usedfreq)--set the next frequency to check, be it friendly or enemy
	osn(29,friendlyfreq[usernumber])--set our frequency, even though it isn't changing we need to output it still

	encryptedposition = encrypt(mpos)
	osn(4,encryptedposition.x)--encrypted my pos x
	osn(5,encryptedposition.y)--encrypted my pos y
	osn(6,encryptedposition.z)--encrypted my pos z

    ---- Raw Radar Targets to TWS ----
	--data from new radar 1
	if ign(18) > 0 then
		rawtargets[1].loc = stoc(ign(19)*pi2,ign(20)*pi2,ign(18))
		rawtargets[1].rel = torelative(rawtargets[1].loc,right,fwd,up)	--new1 r tgt d,a,e 18,19,20
		rawtargets[1].pos = add(rawtargets[1].rel, mpos)
	else
		rawtargets[1] = {loc=vec(),rel=vec(),pos=vec()}
	end
	rawtargets[1].tsd = ign(30)											--tsd: 31

	--data from new radar 2
	if ign(12) > 0 then
		rawtargets[2].loc = stoc(ign(13)*pi2,ign(14)*pi2,ign(12))
		rawtargets[2].rel = torelative(rawtargets[2].loc,right,fwd,up)	--new2 r tgt d,a,e 12,13,14
		rawtargets[2].pos = add(rawtargets[2].rel, mpos)
	else
		rawtargets[2] = {loc=vec(),rel=vec(),pos=vec()}
	end
	rawtargets[2].tsd = ign(31)											--tsd: 31

	--data from new radar 3
	if ign(24) > 0 then
		rawtargets[3].loc = stoc(ign(25)*pi2+pi,ign(26)*pi2,ign(24))
		rawtargets[3].rel = torelative(rawtargets[3].loc,right,fwd,up)	--new3 r tgt d,a,e 24,25,26
		rawtargets[3].pos = add(rawtargets[3].rel, mpos)
	else
		rawtargets[3] = {loc=vec(),rel=vec(),pos=vec()}
	end
	rawtargets[3].tsd = ign(32)											--tsd: 32

	--data from old radar / short range STT radar
	rawtargets[4].pos = vec(ign(15),ign(16),ign(17))
	if length(rawtargets[4].pos) > 0 then
		rawtargets[4].rel = subt(mpos,rawtargets[4].pos)			--verold r tgt xyz 15,16,17
		rawtargets[4].loc = tolocal(rawtargets[4].rel,right,fwd,up)
	else
		rawtargets[4] = {loc=vec(),rel=vec(),pos=vec()}
	end
	rawtargets[4].tsd = 0												--tsd: X

	--raw tgts to target files
	for k,rawtgt in ipairs(rawtargets) do
		--debug.log("k: "..k.."  pos: "..rawtgt.pos.x.." "..rawtgt.pos.y.." "..rawtgt.pos.z)
		if rawtgt.pos and rawtgt.tsd and (length(rawtgt.pos) > 0) then
			if rawtgt.e then
				rawtgt.pos = add(rawtgt.pos, vec(0,0,-9999))
				rawtgt.rel = subt(mpos,rawtgt.pos)
			end
			
			if (length(rawtgt.rel) > 0) and not (rawtgt.tsd > 0) then--there is actually a target and its on tick 1 of info
				local rawradarmatch = 0 --no match with a target file found yet
				for fileindex,file in ipairs(targetfiles) do
					if rawradarmatch == 0 then--we havent matched something
						if length(subt(targetfiles[fileindex].pos,rawtgt.pos)) <= mergedist then
							--length of rel vector from raw tgt to this tgt file is less than or equal to merge dist, eg match found
							rawradarmatch = fileindex
							--update found existing tgt file with raw tgt
							targetfiles[fileindex].pos = rawtgt.pos
							targetfiles[fileindex].t = 0

						end
					else--we already have a match
						if length(subt(targetfiles[fileindex].pos,rawtgt.pos)) <= mergedist then
							--length of rel vector from raw tgt to this tgt file is less than or equal to merge dist, eg match found, also not a selected target
							--debug.log("merged: "..fileindex.."\n"..file.pos.x.." "..file.pos.y.." "..file.pos.z)
							table.remove(targetfiles,fileindex)--we already matched raw tgt to a file so we will delete this one
						end
					end
				end
				if rawradarmatch == 0 then
					--create target file
					targetfiles[#targetfiles+1] = {pos = rawtgt.pos, t = 0}
				end
			end
		end
	end
	-- target file culling
	for k, v in ipairs(targetfiles) do
		thisnotculled = true
		targetfiles[k].t = targetfiles[k].t + 1

		--cull if really old and not selected
		if (v.t >= culltime) and not (k == selectedtgt) then
			--debug.log("tmdout: "..k.."\n"..v.pos.x.." "..v.pos.y.." "..v.pos.z)
			if thisnotculled then
				table.remove(targetfiles,k)
				thisnotculled = false
				if k < selectedtgt then
					selectedtgt = selectedtgt - 1
					--debug.log("shifted selected down 1 to "..selectedtgt)
				end
			end
		else
			--if under the sea, move to altitude of 5
			if targetfiles[k].pos.z <= -1 and targetfiles[k].pos.z >= -7999  then
				targetfiles[k].pos.z = 5
			end

			--if within 50m of ME, cull
			if thisnotculled then
				if length(subt(mpos,targetfiles[k].pos))<= 50 then
					--debug.log("me dist-removed: "..k.."\n"..v.pos.x.." "..v.pos.y.." "..v.pos.z)
					table.remove(targetfiles,k)
					thisnotculled = false
					if k < selectedtgt then
						selectedtgt = selectedtgt - 1
						--debug.log("shifted selected down 1 to "..selectedtgt)
					end
				end
			end
			
			--if within 300m of a friendly, cull
			for i,r in pairs(friendlyfiles) do
				if thisnotculled then
					if length(subt(r.pos,targetfiles[k].pos))<=300 then
						--debug.log("fr dist-removed: "..k.."\n"..v.pos.x.." "..v.pos.y.." "..v.pos.z)
						table.remove(targetfiles,k)
						thisnotculled = false
						if k < selectedtgt then
							selectedtgt = selectedtgt - 1
							--debug.log("shifted selected down 1 to "..selectedtgt)
						end
					end
				end
			end
		end
	end

	---- OUTPUTS ----
	--targets
	if targetfiles[enemytransindex] then
		osn(14,targetfiles[enemytransindex].pos.x)
		osn(15,targetfiles[enemytransindex].pos.y)
		osn(16,targetfiles[enemytransindex].pos.z)
	end
	if targetfiles[enemytransindex+1] then
		osn(17,targetfiles[enemytransindex+1].pos.x)
		osn(18,targetfiles[enemytransindex+1].pos.y)
		osn(19,targetfiles[enemytransindex+1].pos.z)
	end
	osn(26,enemytransindex)
	enemytransindex = enemytransindex + 2
	if enemytransindex > #targetfiles then
		enemytransindex = 1
	end

	--friendlies
	yup = friendlyfiles[friendlytransindex]
	if yup then
		osn(20,yup.pos.x)
		osn(21,yup.pos.y)
		osn(22,yup.pos.z)
		--debug.log(yup.sel.x.."\n"..yup.sel.y.."\n"..yup.sel.z)
		osn(23,yup.sel.x)
		osn(24,yup.sel.y)
		osn(25,yup.sel.z)
	end
	osn(28,friendlytransindex)
	friendlytransindex = friendlytransindex + 1
	if friendlytransindex > #friendlyfiles then
		friendlytransindex = 1
	end

	--output selected tgt
	--debug.log("E")
	if ACM then
		osn(30,0)
		osn(31,0)
		osn(32,0)
		--osn(30,rawtargets[3].pos.x)
		--osn(31,rawtargets[3].pos.y)
		--osn(32,rawtargets[3].pos.z)
	else
		if targetfiles[selectedtgt] then
			osn(30,targetfiles[selectedtgt].pos.x)
			osn(31,targetfiles[selectedtgt].pos.y)
			osn(32,targetfiles[selectedtgt].pos.z)

			encryptedselected = encrypt(targetfiles[selectedtgt].pos)
			osn(2,encryptedselected.x)--encrypted my sel pos x
			osn(12,encryptedselected.y)--encrypted my sel pos y
			osn(13,encryptedselected.z)--encrypted my sel pos z
			
			osn(11,targetfiles[selectedtgt].t)
		else
			osn(30,0)
			osn(31,0)
			osn(32,0)
			osn(11,0)
		end
	end
	--debug.log("F")
	--old radar slew
	osn(7,0)
	osn(8,0)
	--old radar fov
	osn(9,1)
	osn(10,1)
end

--[[
--debug.log("TWS\nraw radar target loop start")
--debug.log("->k: "..k)
debug.log("k:"..k..",type:"..type(rawtgt).."\nlength(rawtgt.rel) = "..length(rawtgt.rel).." rawtgt.tsd = "..rawtgt.tsd)
--debug.log("->there is actually a target and it's on tick 1 of info")
debug.log("loc x: "..rawtgt.loc.x.." y: "..rawtgt.loc.y.." z: "..rawtgt.loc.z.."\nrel x: "..rawtgt.rel.x.." y: "..rawtgt.rel.y.." z: "..rawtgt.rel.z.."\nglo x: "..rawtgt.pos.x.." y: "..rawtgt.pos.y.." z: "..rawtgt.pos.z)
--debug.log("->target file loop start")
--debug.log("-->k: "..fileindex.."\n-->match: "..match)
--debug.log("-->yes, match == 0")
--debug.log("-->rel vec of rawtgt to tgtfile <= mergedist, match found\n-->targetfiles["..fileindex.."] set to rawtgt.pos")
--debug.log("-->no, match ~= 0")
--debug.log("-->rel vec of rawtgt to tgtfile <= mergedist, match found\n-->targetfiles["..fileindex.."] removed")
--debug.log("->no match for rawtgt.pos found, added as new tgt at end of targetfiles table")
--debug.log("#targetfiles is now: "..(#targetfiles))

--debug.log("culling:\ntargetfiles loop start")
--debug.log("->k: "..k)
--debug.log("->timeout culled tgt: "..k)
--debug.log("->updated tgtfiles["..k.."] z to 5")
debug.log("tgt: "..k.." alt: "..v.pos.z)
--debug.log("->friendlies loop start")
--debug.log("-->friendly proximity culled tgt: "..k)
debug.log(#targetfiles.." target files")
debug.log("x: "..v.pos.x.." y: "..v.pos.y.." z: "..v.pos.z)
]]