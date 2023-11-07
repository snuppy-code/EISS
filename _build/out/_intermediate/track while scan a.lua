
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

--MSLLINK (missile datalink)
mslstartfreq = pgn("ML Strt Frq")
mslendf = pgn("ML End Frq")

rawtargets = {}
targetfiles = {}
friendlyfiles = {}
missilefiles = {}


function onTick()

	--facing vectors--need rotx roty rotz
	rx,ry,rz=ign(rotx),ign(roty),ign(rotz)
	cx,cy,cz=cos(rx),cos(ry),cos(rz)
	sx,sy,sz=sin(rx),sin(ry),sin(rz)
	right = vec(cy*cz, -sy, cy*sz)
	fwd = vec(sx*sz + cx*sy*cz, cx*cy, -sx*cz + cx*sy*sz)
	up = cross(right,fwd)
    
	--get friendlies


	
	--get missiles



    --get targets
	
end