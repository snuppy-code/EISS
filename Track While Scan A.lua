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

function delta(c,b)if not a then a={}a[b]={oldVar=0,deltaVar=0}elseif not a[b]then a[b]={oldVar=0,deltaVar=0}end;a[b].deltaVar=c-a[b].oldVar;a[b].oldVar=c;return a[b].deltaVar end
--vector delta function
function clamp(a, min, max) return m.max(min, m.min(a, max)) end

--VICLINK (vehicle datalink)
vicstartfreq = pgn("VL Strt Frq")
vicuserf = pgn("VL You Frq")
vicendf = pgn("VL End Frq")
vicmyuser = property.getText("VL User")
viccurrentfreq=vicstartfreq

--MSLLINK (missile datalink)
mslstartfreq = pgn("ML Strt Frq")
mslendf = pgn("ML End Frq")

raw_ets_targets = {}
rawradartargets = {}
targetfiles = {}
friendlyfiles = {}
missilefiles = {}

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

	---- VICLINK ----
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

	---- MSLLINK ----
	--since we don't have username, we rely on the cycle speed being constant. the data for each index will be outdated/mismatched but we don't care
	--output read freq on comp 4

	
    ---- Raw Radar Targets ----
	--we are only using target 1 from 2/4 scanning radars so I to store them simply

	rawradartargets[]
	


	--[[output
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
end

--[[
start
589340
used
friendly1 589341 AAA1
friendly2 589345 BBB2
me	  589349 CCC3
end
589352
]]