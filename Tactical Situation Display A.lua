m,i,o,p,s,T,F = math,input,output,property,screen,true,false
ign,osn,igb,osb = i.getNumber, o.setNumber, i.getBool, o.setBool
pgn,pgb = p.getNumber, p.getBool
abs,cos,sin,floor,atan = m.abs, m.cos, m.sin, m.floor,m.atan
pi = m.pi
pi2 = pi*2

s = screen
text,textbox,triangl,trianglF,rect,rectF,circl,circlF,clear,setcolor = s.drawText,s.drawTextBox,s.drawTriangle,s.drawTriangleF,s.drawRect,s.drawRectF,s.drawCircle,s.drawCircleF,s.drawClear,s.setColor

function line(x1,y1,x2,y2)
	dx=x2-x1
	dy=y2-y1
	if abs(dx) >= abs(dy) then
		step = abs(dx)
	else
		step = abs(dy)
	end
	dx = dx / step
	dy = dy / step
	x = x1
	y = y1
	i = 0
	while (i <= step) do
		rectF(x,y,1,1)
		x = x + dx
		y = y + dy
		i = i + 1
	end
end
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

--function delta(c,b)if not a then a={}a[b]={oldVar=0,deltaVar=0}elseif not a[b]then a[b]={oldVar=0,deltaVar=0}end;a[b].deltaVar=c-a[b].oldVar;a[b].oldVar=c;return a[b].deltaVar end
function clamp(a, min, max) return m.max(min, m.min(a, max)) end
function round(x) return floor(x + 0.5) end

--radar & tgt info
radartype = pgb("Mode")--assuming sweep is true
rangelim = pgn("R Max Rng")
xfov = pgn("X FOV")*pi
sweeplim = pgn("Swep Lim")*pi2+xfov

tgtfiles = {[1]={pos=vec()}}
friendlies = {}

zoom,zoominteg=7,0
function onTick()
	--some inputs
	mpos = vec(ign(1),ign(2),ign(3))
	forwangle = -ign(27)*pi2
	rearangle = forwangle+pi
	
	tgtfiles[1].pos = vec(ign(23),ign(24),ign(25))--bandaid :yum:

	--facing vectors
	rx,ry,rz=ign(4),ign(5),ign(6)
	cx,cy,cz=cos(rx),cos(ry),cos(rz)
	sx,sy,sz=sin(rx),sin(ry),sin(rz)
	right = vec(cy*cz, -sy, cy*sz)
	fwd = vec(sx*sz + cx*sy*cz, cx*cy, -sx*cz + cx*sy*sz)
	up = cross(right,fwd)
	
	--Zooming functionality, assumes 100% sens -1 to 1
	zoomkey=ign(26)
	if zoomkey < 0.01 and zoomkey > -0.01 then
		zoominteg = zoominteg-zoominteg/5
	else
		zoominteg = clamp((zoominteg+zoomkey/160),-0.1,0.1)
	end
	if zoom >= 50 then zoominteg = 0 end
	zoom=clamp(zoom+(zoomkey/55*zoom/2.4)+zoominteg*zoom/2.4,0.1,50)

	heading = -atan(fwd.x,fwd.y)+pi

	viewedx,viewedy=mpos.x,mpos.y--will change to let you pan the map
end
function onDraw()
	w,h = s.getWidth(),s.getHeight()

	--map colors
	s.setMapColorOcean(0,0,0)
	s.setMapColorShallows(2,2,2)
	s.setMapColorLand(7,7,7)
	s.setMapColorGrass(8,10,8)
	s.setMapColorSand(6,6,4)
	s.setMapColorSnow(25,25,26)
	--s.setMapColorRock(3,3,3)
	--s.setMapColorGravel(4,4,4)--commented cuz miniifer keeps yoinking them
	
	s.drawMap(viewedx,viewedy,zoom)

	--find my position on the map and the size of the radar circle on the map
	mpixelx, mpixely = map.mapToScreen(viewedx,viewedy,zoom,w,h,mpos.x,mpos.y)
	maxrangex, maxrangey = map.mapToScreen(viewedx,viewedy+rangelim,zoom,w,h,mpos.x,mpos.y)
	maxrangepixels = m.abs(maxrangey-mpixely)

	--lines for current radar look angles
	setcolor(80,255,0,38)
	line(mpixelx,mpixely,mpixelx + sin(forwangle+heading-xfov)*maxrangepixels, mpixely + cos(forwangle+heading-xfov)*maxrangepixels)
	line(mpixelx,mpixely,mpixelx + sin(forwangle+heading+xfov)*maxrangepixels, mpixely + cos(forwangle+heading+xfov)*maxrangepixels)
	
	line(mpixelx,mpixely,mpixelx + sin(rearangle+heading-xfov)*maxrangepixels, mpixely + cos(rearangle+heading-xfov)*maxrangepixels)
	line(mpixelx,mpixely,mpixelx + sin(rearangle+heading+xfov)*maxrangepixels, mpixely + cos(rearangle+heading+xfov)*maxrangepixels)

	if radartype then
		--radar borders for SWEEP
		setcolor(0,180,0,23)
		line(mpixelx,mpixely,mpixelx + sin(-sweeplim+heading)*maxrangepixels, mpixely + cos(-sweeplim+heading)*maxrangepixels)
		line(mpixelx,mpixely,mpixelx + sin(sweeplim+heading)*maxrangepixels, mpixely + cos(sweeplim+heading)*maxrangepixels)
	    do
		    bordercurvestart = -heading-sweeplim+pi/2
		    step2 = (-heading+sweeplim+pi/2 - bordercurvestart) / 18
		    for i = 1, 18 do
		        ang1 = bordercurvestart + step2 * i
		        ang2 = bordercurvestart + step2 * (i - 1)
		        line(mpixelx + cos(ang1) * maxrangepixels,
				mpixely + sin(ang1) * maxrangepixels,
				mpixelx + cos(ang2) * maxrangepixels,
				mpixely + sin(ang2) * maxrangepixels)
		    end
		end
	else
		--radar borders for CIRCLE
		setcolor(0,255,0,8)
		circl(mpixelx,mpixely,maxrangepixels)
		--setcolor(0,255,0,4)
		--circl(mpixelx,mpixely,maxrangepixels-0.6)
		--setcolor(0,255,0,2)
		--circl(mpixelx,mpixely,maxrangepixels-1.2)
	end

	--draw actual target files
	for k,v in ipairs(tgtfiles) do
		tgtpixelx, tgtpixely = map.mapToScreen(viewedx,viewedy,zoom,w,h,v.pos.x,v.pos.y)
		tgtpixelx,tgtpixely = round(tgtpixelx),round(tgtpixely)
		if selectedtgt == k then
			setcolor(90,2,5)
			rectF(tgtpixelx-2,tgtpixely-3,5,1)
			setcolor(99,20,3)
		else
			setcolor(80,13,1)
		end
		rect(tgtpixelx-1,tgtpixely-1,2,2)
	end

	--friendlies
	setcolor(0,40,255)
	for k,v in pairs(friendlies) do
		--debug.log("v.x: "..v.x.." v.y: "..v.y.." v.z: "..v.z)
		local fpixelx, fpixely = map.mapToScreen(viewedx,viewedy,zoom,w,h,v.x,v.y)
		--ang,spd,alt
		--if ang then
		--	linex1,liney1 = rotate2((m.ceil(m.min(alt/1000,4))),1.5,ang)
		--	linex2,liney2 = rotate2(-(m.ceil(m.min(alt/1000,4))),1.5,ang)
		--
		--	linex3,liney3 = rotate2(0,1,ang)
		--	linex4,liney4 = rotate2(0,floor(m.max(spd,100)/100),ang)
		--
		--	line(fpixelx+linex1, fpixely+liney1, fpixelx+linex2, fpixely+liney2)--alt line
		--	line(fpixelx+linex3, fpixely+liney3, fpixelx+linex4, fpixely+liney4)--spd line
		--end
		rectF(fpixelx,fpixely-1,1,1)
		rectF(fpixelx+1,fpixely,1,1)
		rectF(fpixelx,fpixely+1,1,1)
		rectF(fpixelx-1,fpixely,1,1)
	end
	
	--missile
	--setcolor(255,0,0)
	--line(50,50,52,52)
	--line(50,49,49,50)

	--my target
	--setcolor(80,13,1)
	--rect(1,1,2,2)
	
	--friend target
	--setcolor(90,26,1)
	--rect(1,5,2,2)

	--debug text
	--setcolor(255,255,255)
	--text(5,5,"tgts: "..#tgtfiles)
end