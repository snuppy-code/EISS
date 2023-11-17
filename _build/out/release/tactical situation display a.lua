-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2868 (3202 with comment) chars

ai=screen
L=map.mapToScreen
i,o,au,aq,c,aN,aR=math,input,output,property,ai,true,false
l,aY,aT,aW=o.getNumber,au.setNumber,o.getBool,au.setBool
V,az=aq.getNumber,aq.getBool
abs,cos,sin,floor,atan=i.abs,i.cos,i.sin,i.floor,i.atan
pi=i.pi
ar=pi*2
c=ai
aU,aO,aK,aS,aF,u,aH,b_,aV,q=c.drawText,c.drawTextBox,c.drawTriangle,c.drawTriangleF,c.drawRect,c.drawRectF,c.drawCircle,c.drawCircleF,c.drawClear,c.setColor
function r(an,at,ax,aE)D=ax-an
v=aE-at
if abs(D)>=abs(v)then
M=abs(D)else
M=abs(v)end
D=D/M
v=v/M
a=an
b=at
o=0
while(o<=M)do
u(a,b,1,1)a=a+D
b=b+v
o=o+1
end
end
function k(a,b,f)return{a=a or 0,b=b or 0,f=f or 0}end
function T(_,d)return k(_.a+d.a,_.b+d.b,_.f+d.f)end
function aZ(_,d)return k(_.a*d.a,_.b*d.b,_.f*d.f)end
function x(_,A)return k(_.a*A,_.b*A,_.f*A)end
function aB(_)return x(_,-1)end
function aL(_,d)return T(_,aB(d))end
function aC(_)return i.sqrt(_.a*_.a+_.b*_.b+_.f*_.f)end
function ay(_,A)return x(_,1/A)end
function aJ(_)return ay(_,aC(_))end
function O(_,d)return _.a*d.a+_.b*d.b+_.f*d.f
end
function aD(_,d)return k(_.b*d.f-_.f*d.b,_.f*d.a-_.a*d.f,_.a*d.b-_.b*d.a)end
function bb(ah,aa,C)local C=C or 1
return k(i.sin(ah)*i.cos(aa)*C,i.cos(ah)*i.cos(aa)*C,i.sin(aa)*C)end
function aP(_,Z,X,Q)return k(O(Z,_),O(X,_),O(Q,_))end
function ba(_,Z,X,Q)return T(T(x(Z,_.a),x(X,_.b)),x(Q,_.f))end
function af(_,min,max)return i.max(min,i.min(_,max))end
function as(a)return floor(a+.5)end
aG=az("Mode")aw=V("R Max Rng")n=V("X FOV")*pi
t=V("Swep Lim")*ar+n
ad={[1]={P=k()}}aA={}m,p=7,0
function onTick()s=k(l(1),l(2),l(3))B=-l(27)*ar
I=B+pi
ad[1].P=k(l(23),l(24),l(25))ak,am,al=l(4),l(5),l(6)ac,R,W=cos(ak),cos(am),cos(al)aj,S,U=sin(ak),sin(am),sin(al)av=k(R*W,-S,R*U)ab=k(aj*U+ac*S*W,ac*R,-aj*W+ac*S*U)aQ=aD(av,ab)J=l(26)if J<.01 and J>-.01 then
p=p-p/5
else
p=af((p+J/160),-.1,.1)end
if m>=50 then p=0 end
m=af(m+(J/55*m/2.4)+p*m/2.4,.1,50)j=-atan(ab.a,ab.b)+pi
y,z=s.a,s.b
end
function onDraw()F,E=c.getWidth(),c.getHeight()c.setMapColorOcean(0,0,0)c.setMapColorShallows(2,2,2)c.setMapColorLand(7,7,7)c.setMapColorGrass(8,10,8)c.setMapColorSand(6,6,4)c.setMapColorSnow(25,25,26)c.drawMap(y,z,m)h,g=L(y,z,m,F,E,s.a,s.b)aM,aI=L(y,z+aw,m,F,E,s.a,s.b)e=i.abs(aI-g)q(80,255,0,38)r(h,g,h+sin(B+j-n)*e,g+cos(B+j-n)*e)r(h,g,h+sin(B+j+n)*e,g+cos(B+j+n)*e)r(h,g,h+sin(I+j-n)*e,g+cos(I+j-n)*e)r(h,g,h+sin(I+j+n)*e,g+cos(I+j+n)*e)if aG then
q(0,180,0,23)r(h,g,h+sin(-t+j)*e,g+cos(-t+j)*e)r(h,g,h+sin(t+j)*e,g+cos(t+j)*e)do
Y=-j-t+pi/2
ag=(-j+t+pi/2-Y)/18
for o=1,18 do
ae=Y+ag*o
ap=Y+ag*(o-1)r(h+cos(ae)*e,g+sin(ae)*e,h+cos(ap)*e,g+sin(ap)*e)end
end
else
q(0,255,0,8)aH(h,g,e)end
for ao,w in ipairs(ad)do
G,K=L(y,z,m,F,E,w.P.a,w.P.b)G,K=as(G),as(K)if aX==ao then
q(90,2,5)u(G-2,K-3,5,1)q(99,20,3)else
q(80,13,1)end
aF(G-1,K-1,2,2)end
q(0,40,255)for ao,w in pairs(aA)do
local N,H=L(y,z,m,F,E,w.a,w.b)u(N,H-1,1,1)u(N+1,H,1,1)u(N,H+1,1,1)u(N-1,H,1,1)end
end
