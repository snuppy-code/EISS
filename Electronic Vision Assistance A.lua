m,i,o,p,s,T,F = math,input,output,property,screen,true,false
ign,osn,igb,osb = i.getNumber, o.setNumber, i.getBool, o.setBool
pgn,pgb = p.getNumber, p.getBool
abs,cos,sin,floor,atan = m.abs, m.cos, m.sin, m.floor,m.atan
pi = m.pi
pi2 = pi*2

s = screen
text,textbox,line,rect,rectF,circl,clear,setcolor = s.drawText,s.drawTextBox,s.drawLine,s.drawRect,s.drawRectF,s.drawCircle,s.drawClear,s.setColor

function vec(x,y,z,w) --defines a vector
return {x=x or 0,y=y or 0,z=z or 0, w=w or 0}
end

function add(a,b) --adds 2 vectors
return vec(a.x+b.x, a.y+b.y, a.z+b.z)
end

function mult(a,b) --multiplies 2 vectors
return vec(a.x*b.x, a.y*b.y, a.z*b.z)
end

function multf(a,n) --multiplies a vector by a factor
return vec(a.x*n, a.y*n, a.z*n)
end

function invert(a) --inverts a vector
return multf(a,-1)
end

function subt(a,b) --subtracts a vector from another
return add(a,invert(b))
end

function length(a) --gets length of a vector
return m.sqrt(a.x*a.x+a.y*a.y+a.z*a.z)
end

function divf(a,n) --divides vector by a factor
return multf(a,1/n)
end

function norm(a) --normalizes a vector
return divf(a,length(a))
end

function dot(a,b) --dot product between 2 vectors
return a.x*b.x+a.y*b.y+a.z*b.z
end

function cross(a,b) --cross product between 2 vectors
return vec(a.y*b.z-a.z*b.y, a.z*b.x-a.x*b.z, a.x*b.y-a.y*b.x)
end

function spherical_to_cart(hor,ver,d) --spherical to cartesian conversion
local d=d or 1
return vec(m.sin(hor)*m.cos(ver)*d, m.cos(hor)*m.cos(ver)*d, m.sin(ver)*d)
end

function vecDelta(a,spot) --gets delta of a vector
	if not vecDeltaTable then
	vecDeltaTable = {}
	vecDeltaTable[spot] = {oldVec = vec(),deltaVec = vec()}
	elseif not vecDeltaTable[spot] then
	vecDeltaTable[spot] = {oldVec = vec(),deltaVec = vec()}
	end
	vecDeltaTable[spot].deltaVec = subt(a,vecDeltaTable[spot].oldVec)
	vecDeltaTable[spot].oldVec = a
	return vecDeltaTable[spot].deltaVec
end

--Advanced Functions
function to_local_frame(a,r,f,u) --converts a vector to local frame of reference
return vec(dot(r,a),dot(f,a),dot(u,a))
end

function to_global_frame(a,r,f,u) --converts a vector to global frame of reference, origin set at vehicle
return add(add(multf(r,a.x), multf(f,a.y)), multf(u,a.z))
end

function clamp(x,s,l) return x < s and s or x > l and l or x --clamp (used for seat to head position function)
end

function to_monitor(point,cam_offset,zoom,w,h) --calculates local point display on monitor
	local fov=zoom*(0.025-2.2)+2.2
	local center_x=w/2; local center_y=h/2
	local aspect=(center_x-128*0.025)/(center_y-128*0.025)
	local fov_y=m.tan(fov/2); local fov_x=fov_y*aspect
	local pcam=subt(point,cam_offset)
	local pixel_x,pixel_y=pcam.y>0 and center_x*(1+pcam.x/pcam.y/fov_x) or 0, pcam.y>0 and h-center_y*(1+pcam.z/pcam.y/fov_y) or 0
	return pixel_x,pixel_y
end

---- EVA SETUP VARS ----
points={}
max_points=1000--pgn("LIDAR Max Points")
t=3

camera_offset=vec(0,2.625,-0.5)--vec(pgn("CAM X"),pgn("CAM Y"),pgn("CAM Z"))
laser_offset=vec(0,3.125,-0.25)--vec(pgn("LSR X"),pgn("LSR Y"),pgn("LSR Z"))

laser_angles = {}
for i=1,t do
    laser_angles[i] = {hor=0,ver=0}
end

---- NON-EVA SETUP VARS ----
culltime = 10
friendlies = {}
tgtfiles = {}

function onTick()
	----  CONTROLS  ----
	ACM = ign(28) == 1

	----  MY DATA  ----
	mypos = vec(ign(1),ign(2),ign(3))

	rx,ry,rz=ign(4),ign(5),ign(6)
	cx,cy,cz=cos(rx),cos(ry),cos(rz)
	sx,sy,sz=sin(rx),sin(ry),sin(rz)
	right = vec(cy*cz, -sy, cy*sz)
	fwd = vec(sx*sz + cx*sy*cz, cx*cy, -sx*cz + cx*sy*sz)
	up = cross(right,fwd)

	myvel = multf(vecDelta(mypos,"myvel"),60)
	myacc = multf(vecDelta(myvel,"myacc"),60)

	myspd = length(myvel)
	myg = length(myacc)/9.81

	---- GET TARGETS & FRIENDLIES ----
	inindex = ign(19)
	intgt = vec(ign(7),ign(8),ign(9))
	if length(intgt) > 0 then
		tgtfiles[inindex] = {pos=intgt,t=0}
	end
	intgt = vec(ign(10),ign(11),ign(12))
	if length(intgt) > 0 then
		tgtfiles[inindex+1] = {pos=intgt,t=0}
	end
	inindex = ign(21)
	intgt = vec(ign(13),ign(14),ign(15))
	if length(intgt) > 0 then
		friendlies[inindex] = {pos=intgt,t=0}
	end
	--cull/timeout targets
	for k,_ in pairs(tgtfiles) do
		tgtfiles[k].t = tgtfiles[k].t + 1
		if tgtfiles[k].t >= culltime then 
			tgtfiles[k] = nil
		end
	end
	--cull/timeout friendlies
	for k,_ in pairs(friendlies) do
		friendlies[k].t = friendlies[k].t + 1
		if friendlies[k].t >= culltime then 
			friendlies[k] = nil
		end
	end

	selectedtgt = vec(ign(23),ign(24),ign(25))
	--debug.log("tsdx: "..selectedtgt.x.." y: "..selectedtgt.y.." z: "..selectedtgt.z)
	


end
function onDraw()
	w,h = screen.getWidth(),screen.getHeight()
	whalf,hhalf = w/2,h/2
	if ACM then
		setcolor(255,0,0)
		rectF(0,0,1,h)
		rectF(w-1,0,1,h)
	end
    if length(selectedtgt) > 0 then
        setcolor(80,13,1)
		rectF(0,0,w,3)
        rectF(0,h-3,w,3)
    end
	setcolor(255,120,120)
	text(6,6,"Gs: "..myg)
	text(6,12,"Spd: "..myspd)
end



