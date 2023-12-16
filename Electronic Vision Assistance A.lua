m,i,o,p,s,T,F = math,input,output,property,screen,true,false
ign,osn,igb,osb = i.getNumber, o.setNumber, i.getBool, o.setBool
pgn,pgb = p.getNumber, p.getBool
abs,cos,sin,floor,atan = m.abs, m.cos, m.sin, m.floor,m.atan
pi = m.pi
pi2 = pi*2

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

function dotline(x1,y1,x2,y2)
	segments = 11
	drawnyes = true
	
	xrel = x2-x1
	yrel = y2-y1
	
	xseg = xrel/segments
	yseg = yrel/segments
	
	for i = 1,segments do
		if drawnyes then
			line(x1+xseg*(i-1), y1+yseg*(i-1), x1+xseg*i, y1+yseg*i)
		end
		drawnyes = not drawnyes
	end
end

camera_offset=vec(0,0.875,0)

---- NON-EVA SETUP VARS ----
culltime = 40
friendlies = {}
tgtfiles = {}

function onTick()

	----  CONTROLS  ----
	ACM = ign(28) == 1
    zoom_in = 0.36	

	----  MY DATA  ----
	mypos = vec(ign(1),ign(3),ign(2))

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
	intgt1 = vec(ign(7),ign(8),ign(9))
	if length(intgt1) > 0 then
		tgtfiles[inindex] = {pos=intgt1,t=0}
	end
	intgt1 = vec(ign(10),ign(11),ign(12))
	if length(intgt1) > 0 then
		tgtfiles[inindex+1] = {pos=intgt1,t=0}
	end

	inindex = ign(21)
	intgt1 = vec(ign(13),ign(14),ign(15))
	intgt2 = vec(ign(16),ign(17),ign(18))
	if length(intgt1) > 0 then--friendly position
		friendlies[inindex] = {pos=intgt1,sel=intgt2,t=0}
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
	w,h = s.getWidth(),s.getHeight()
	
	---- SYMBOLS ----
	--targets
	for k,v in ipairs(tgtfiles) do
		targetvector = v.pos
		if targetvector.z < 0 then
			targetvector = add(targetvector,vec(0,0,9999))
			setcolor(240,0,0)
			drawaltline = false
		else
			drawaltline = true
			setcolor(80,13,1,230)
		end

		relative_position = subt(targetvector,mypos)
		local_position = to_local_frame(relative_position,right,fwd,up)
		tgtpixelx, tgtpixely = to_monitor(local_position,camera_offset,zoom_in,w,h)
		
		thistargetalt=targetvector.z
		if drawaltline then
			thistargetalt=m.max(m.min(thistargetalt/500,5),0)
			line(tgtpixelx-thistargetalt,tgtpixely-2,tgtpixelx+thistargetalt+1,tgtpixely-2)
		end
		rect(tgtpixelx-1,tgtpixely-1,2,2)
	end
	 
	--selected target
	setcolor(55,20,40,180)
	if length(selectedtgt) > 0 then
		relative_position = subt(selectedtgt,mypos)
		local_position = to_local_frame(relative_position,right,fwd,up)
		tgtpixelx, tgtpixely = to_monitor(local_position,camera_offset,zoom_in,w,h)
		
		dotline(w/2,h,tgtpixelx,tgtpixely)
		
		setcolor(46,0,25,240)
		rectF(tgtpixelx-2,tgtpixely-2,1,5)
		rectF(tgtpixelx+2,tgtpixely-2,1,5)
		rectF(tgtpixelx,tgtpixely,1,1)
	end
	
	--friendlies & their selecteds
	setcolor(0,40,255,230)
	for k,v in pairs(friendlies) do
		relative_position = subt(v.pos,mypos)
		local_position = to_local_frame(relative_position,right,fwd,up)
		fpixelx, fpixely = to_monitor(local_position,camera_offset,zoom_in,w,h)
		
		thistargetalt=v.pos.z
		thistargetalt=m.max(m.min(thistargetalt/500,5),0)
		line(fpixelx-thistargetalt,fpixely-2,fpixelx+thistargetalt+1,fpixely-2)

		rectF(fpixelx,fpixely-1,1,1)
		rectF(fpixelx+1,fpixely,1,1)
		rectF(fpixelx,fpixely+1,1,1)
		rectF(fpixelx-1,fpixely,1,1)

		if length(v.sel) > 0 then
			relative_position = subt(v.sel,mypos)
			local_position = to_local_frame(relative_position,right,fwd,up)
			ftrkpixelx, ftrkpixely = to_monitor(local_position,camera_offset,zoom_in,w,h)

			setcolor(30,90,255,155)
			dotline(fpixelx,fpixely,ftrkpixelx,ftrkpixely)

			setcolor(40,40,110,165)
			rectF(ftrkpixelx-2,ftrkpixely-2,1,5)
			rectF(ftrkpixelx+2,ftrkpixely-2,1,5)
			rectF(ftrkpixelx,ftrkpixely,1,1)
		end
	end
	
	---- HUD INFO ----
	


	if ACM then
		setcolor(255,0,0)
		rectF(7,4,1,88)
		rectF(88,4,1,88)
	end

end



