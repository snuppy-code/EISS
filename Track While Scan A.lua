--math input and other shorthands
m,i,o,p,s,T,F = math,input,output,property,screen,true,false
ign,osn,igb,osb = i.getNumber, o.setNumber, i.getBool, o.setBool
pgn,pgb = p.getNumber, p.getBool
abs,cos,sin,floor,atan = m.abs, m.cos, m.sin, m.floor,m.atan
pi = m.pi
pi2 = pi*2

--vector functions
function vec(x,y,z)
return {x=x or 0,y=y or 0,z=z or 0}
end
function add(a,b)
return vec(a.x+b.x, a.y+b.y, a.z+b.z)
end
function mult(a,b)
return vec(a.x*b.x, a.y*b.y, a.z*b.z)
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
function divf(a,n)
return multf(a,1/n)
end
function norm(a)
return divf(a,length(a))
end
function dot(a,b)
return a.x*b.x+a.y*b.y+a.z*b.z
end
function cross(a,b)
return vec(a.y*b.z-a.z*b.y, a.z*b.x-a.x*b.z, a.x*b.y-a.y*b.x)
end
--function project(a,b)
--return multf(norm(b), dot(a, norm(b)))
--end
--function reject(a,b)
--return subt(a, multf(norm(b), dot(a, norm(b))))
--end
--function reflect(a,b,factor)
--return subt(a, multf(reject(a, b), factor or 2))
--end
function stoc(hor,ver,d)
local d=d or 1
return vec(m.sin(hor)*m.cos(ver)*d, m.cos(hor)*m.cos(ver)*d, m.sin(ver)*d)
end
function tolocal(a,r,f,u)
return vec(dot(r,a),dot(f,a),dot(u,a))
end
function torelative(a,r,f,u)
return add(add(multf(r,a.x), multf(f,a.y)), multf(u,a.z))
end

--basic functions
function delta(c,b)if not a then a={}a[b]={oldVar=0,deltaVar=0}elseif not a[b]then a[b]={oldVar=0,deltaVar=0}end;a[b].deltaVar=c-a[b].oldVar;a[b].oldVar=c;return a[b].deltaVar end
--vector delta function goes here
function clamp(a, min, max) return m.max(min, m.min(a, max)) end

--functional functions
function stoctoglobal(azim,elev,dist)
	if dist > 0 then
		return add(torelative( stoc(azim*pi2, elev*pi2, dist) , right, fwd, up), mpos)
	else
		return vec()
	end
end

--VICLINK (vehicle datalink)
vicstartfreq = pgn("VL Strt Frq")
vicuserf = pgn("VL You Frq")
vicendf = pgn("VL End Frq")
vicmyuser = property.getText("VL User")
viccurrentfreq=vicstartfreq

--MSLLINK (missile datalink)
mslstartfreq = pgn("ML Strt Frq")
mslendf = pgn("ML End Frq")

--radar & tgt handling info
mergedist = pgn("Merge Dist")
culltime = pgn("Cull Time")

rawemissiontargets = {}
rawradartargets = {}--"pos" stores position, "tsd" stores time since detected
targetfiles = {}--"pos" stores position, "t" stores ticks since target was updated
friendlyfiles = {}
missilefiles = {}

selectedtgt,tgtcycletouch = 0,0
enemytrans1index,friendlytransindex,missiletransindex=0,0,0

function onTick()
	--my position vector
	mpos = vec(ign(1),ign(3),ign(2))

	--facing vectors
	rx,ry,rz=ign(ign(4)),ign(ign(5)),ign(ign(6))
	cx,cy,cz=cos(rx),cos(ry),cos(rz)
	sx,sy,sz=sin(rx),sin(ry),sin(rz)
	right = vec(cy*cz, -sy, cy*sz)
	fwd = vec(sx*sz + cx*sy*cz, cx*cy, -sx*cz + cx*sy*sz)
	up = cross(right,fwd)

	do ---- VICLINK ----
		--get current friendly's pos, if it is anything except 0,0,0 then get their ASCII and put their pos in friendlyfiles table at index of their ASCII
		fpos = vec(ign(7),ign(8),ign(9))
		--debug.log(fpos.x.." "..fpos.y.." "..fpos.z)
		if length(fpos)>0 then
			local userascii2 = {ign(10),ign(11)}
			user=""
			if userascii2[1]>=1000000 and userascii2[1]>=1000000 then
				userascii = tostring(userascii2[1]):sub(2,7)..tostring(userascii2[2]):sub(2,7)
				for i=1, #userascii, 3 do
					user = user..string.char(userascii:sub(i,i+3-1))
				end
			else
				user = "XXXX"
			end
			friendlyfiles[user]=fpos
		end

		--output my ASCII on radio
		myuserascii = ""
		for i=1, #vicmyuser do
			myuserascii = myuserascii..string.format("%03d", vicmyuser:byte(i))
		end
		osn(1,tonumber("1"..myuserascii:sub(1,6)))
		osn(2,tonumber("1"..myuserascii:sub(7,12)))

		--increment freq scan
		viccurrentfreq=viccurrentfreq==vicendf and vicstartfreq or viccurrentfreq+1
		if viccurrentfreq==vicuserf then 
			viccurrentfreq=viccurrentfreq==vicendf and vicstartfreq or viccurrentfreq+1 
		end
		osn(3,viccurrentfreq)
	end

	do ---- MSLLINK ----
		--since we don't have username, we rely on the cycle speed being constant. the data for each index will be outdated/mismatched but we don't care
		--output read freq on comp 4
		--use missilefiles table
	end

    do ---- Raw Radar Targets to TWS ----
		--store targets in raw table we loop through for actual logic
		rawradartargets[1] = {}
		rawradartargets[1].pos = vec(ign(15),ign(16),ign(17))				--verold r tgt xyz 15,16,17
		rawradartargets[1].tsd = 0
		rawradartargets[2] = {}											--tsd: X
		rawradartargets[2].pos = stoctoglobal(ign(18),ign(19),ign(20))		--new1 r tgt d,a,e 18,19,20
		rawradartargets[2].tsd = ign(31)									--tsd: 31
		rawradartargets[3] = {}
		rawradartargets[3].pos = stoctoglobal(ign(24),ign(25),ign(26))		--new3 r tgt d,a,e 24,25,26
		rawradartargets[3].tsd = ign(31)									--tsd: 31
		--rawradartargets[4] = {}
		--rawradartargets[4] = stoctoglobal(ign(27),ign(28),ign(29))		--vernew r tgt d,a,e 27,28,29, 30..
		--rawradartargets[4].tsd = ign(32)									--tsd: 32
		
		for k,v in ipairs(rawradartargets) do
			if (length(v.pos) > 0) and not (v.tsd > 0) then--there is actually a target and its on tick 1 of info
				local tgtpos = v.pos
				
				--try to match to existing target file
				local match = 0 --no match with a target file found yet
				for fileindex,file in ipairs(targetfiles) do
					if not match == 0 then--we already have a match? ❌CHANGE THIS❌ !!! I think its causing issues
						if length(subt(file.pos,tgtpos)) <= mergedist then--length of rel vector from raw tgt to this tgt file is less than or equal to merge dist, eg match found
							match = fileindex
							targetfiles[fileindex] = {pos=tgtpos,vel=vec(),t=0}--update found existing tgt file with raw tgt
						end
					else--we don't already have a match?
						if length(subt(file.pos,tgtpos)) <= mergedist and not (fileindex == selectedtgt) then
							--length of rel vector from raw tgt to this tgt file is less than or equal to merge dist, eg match found
							--also not a selected target
							table.remove(targetfiles,fileindex)--we already matched raw tgt to a file so we will delete this one
						end
					end
				end
				if match == 0 then
					--create target file
					targetfiles[#targetfiles+1] = {pos=tgtpos,vel=vec(),t=0}
				end
			end
		end
		--target file culling
		for k,v in ipairs(targetfiles) do
			targetfiles[k].t = v.t+1
			if (v.t >= culltime) and not (k == selectedtgt) then
				table.remove(targetfiles,k)
				--debug.log("CULLED tgt: "..k)
			elseif v.pos.z <= -1 then
				targetfiles[k].pos.z = 5
			end
			--debug.log("tgt: "..k.." alt: "..v.pos.z)
			for i,r in pairs(friendlies) do
				if length(subt(r,v.pos))<=mergedist then
					table.remove(targetfiles,k)-- this might cause issues with table.remove() getting called twice, idk, if its both greater than cull time and on a friendly... smart to add a check for this
				end
			end
		end
	end
	
	---- OUTPUTS ----
	--4 loops using these index variables to output one thing at a time each tick

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
	osn(27,enemytransindex+1)
	enemytransindex = enemytransindex + 2
	if enemytransindex > #targetfiles then
		enemytransindex = 1
	end

	--friendlies
	if friendlyfiles[friendlytransindex] then
		osn(20,friendlyfiles[friendlytransindex].pos.x)
		osn(21,friendlyfiles[friendlytransindex].pos.y)
		osn(22,friendlyfiles[friendlytransindex].pos.z)
	end
	osn(28,friendlytransindex)
	friendlytransindex = friendlytransindex + 1
	if friendlytransindex > #friendlyfiles then
		friendlytransindex = 1
	end
	
	--missiles
	if missilefiles[missiletransindex] then
		osn(23,missilefiles[missiletransindex].pos.x)
		osn(24,missilefiles[missiletransindex].pos.y)
		osn(25,missilefiles[missiletransindex].pos.z)
	end
	osn(29,missiletransindex)
	missiletransindex = missiletransindex + 1
	if missiletransindex > #missilefiles then
		missiletransindex = 1
	end

	--selected tgt
	for k,v in ipairs(targetfiles) do--99% sure this can be just targetfiles[selectedtgt]
		if k == selectedtgt then
			osn(1,v.pos.x)
			osn(2,v.pos.y)
			osn(3,v.pos.z)
		end
	end
end

--[[inputs
1	my x						ME XYZ
2	my y						ME XYZ
3	my z						ME XYZ
4	rx
5	ry
6	rz
7	friend x					FRIEND XYZ
8	friend y					FRIEND XYZ
9	friend z					FRIEND XYZ
10	friend user1
11	friend user2
12	msl x						MISSILE XYZ
13	msl y						MISSILE XYZ
14	msl z						MISSILE XYZ
15	old r x						RADAR XYZ
16	old r y						RADAR XYZ
17	old r z						RADAR XYZ
18	new 1 dist					RADAR RAW
19	new 1 azim					RADAR RAW
20	new 1 elev					RADAR RAW
21	select x
22	select y
23	select z
24	new 3 dist					RADAR RAW
25	new 3 azim					RADAR RAW
26	new 3 elev					RADAR RAW
27	new check dist				RADAR RAW
28	new check azim				RADAR RAW
29	new check elev				RADAR RAW
30	new check current azim		RADAR RAW AZIM
31	time since detected scan	
32	time since detected new check
]]

--[[outputs
1	my username 1
2	my username 2
3	viclink receive freq
4	msllink receive freq
5	file verify new radar elevation slew
6	file verify new radar azimuth slew speed
7	file verify old radar Y slew
8	file verify old radar X slew
9	file verify old radar Y FOV
10	file verify old radar X FOV
11	gimbal FOV
12	gimbal pitch
13	gimbal pivot
]]

--[[frequencies
start:
	589340
used:
	friendly1	589341 AAA1
	friendly2	589345 BBB2
	me			589349 CCC3
end:
	589352
]]