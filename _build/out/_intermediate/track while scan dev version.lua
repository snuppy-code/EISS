
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
function clamp(a, min, max) return m.max(min, m.min(a, max)) end

--radar & tgt handling info
mergedist = pgn("Merge Dist")
culltime = pgn("Cull Time")
selfignoredist = pgn("Self ignore dist")

rawradartargets = {--"pos" stores position, "rel" stores relative vec, "tsd" stores time since detected
	{}
}
targetfiles = {}--"pos" stores position, "t" stores ticks since target was updated


function onTick()
	mpos = vec(ign(1),ign(2),ign(3))

	--facing vectors
	rx,ry,rz=ign(4),ign(5),ign(6)
	cx,cy,cz=math.cos(rx),math.cos(ry),math.cos(rz)
	sx,sy,sz=math.sin(rx),math.sin(ry),math.sin(rz)
	right = vec(cy*cz, -sy, cy*sz)
	fwd = vec(sx*sz + cx*sy*cz, cx*cy, -sx*cz + cx*sy*sz)
	up = cross(right,fwd)

	debug.log("pos,rot done")

	rawradartargets[1].loc = stoc(ign(19)*pi2,ign(20)*pi2,ign(18))
	rawradartargets[1].rel = torelative(rawradartargets[1].loc,right,fwd,up)	--new1 r tgt d,a,e 18,19,20
	rawradartargets[1].pos = add(rawradartargets[1].rel, mpos)
	rawradartargets[1].tsd = ign(31)														--tsd: 31
	
	for k,v in ipairs(rawradartargets) do
		debug.log("for k:"..k..",type:"..type(v).." ipairs(rawradartargets) do\nlength(v.rel) = "..length(v.rel).." v.tsd = "..v.tsd)
		if (length(v.rel) > 10) and not (v.tsd > 0) then--there is actually a target, not ourself, and its on tick 1 of info
			local tgtpos = v.pos
			debug.log("loc x: "..v.loc.x.." y: "..v.loc.y.." z: "..v.loc.z.."\nrel x: "..v.rel.x.." y: "..v.rel.y.." z: "..v.rel.z.."\nglo x: "..v.pos.x.." y: "..v.pos.y.." z: "..v.pos.z)
			local match = 0 --no match with a target file found yet
			for fileindex,file in ipairs(targetfiles) do
				debug.log("filindex: "..fileindex.." match: "..match)
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
	end
	debug.log(#targetfiles.." target files")
	for k,v in ipairs(targetfiles) do
		if k <= 3 then
			debug.log("x: "..v.pos.x.." y: "..v.pos.y.." z: "..v.pos.z)
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