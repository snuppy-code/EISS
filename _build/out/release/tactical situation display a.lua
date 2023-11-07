-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2751 (3085 with comment) chars

ah=screen
J=map.mapToScreen
f,l,al,am,c,aR,aO=math,input,output,property,ah,true,false
n,aM,aT,b_=l.getNumber,al.setNumber,l.getBool,al.setBool
O,as=am.getNumber,am.getBool
abs,cos,sin,floor,atan=f.abs,f.cos,f.sin,f.floor,f.atan
pi=f.pi
ar=pi*2
c=ah
aN,aJ,aI,aV,aB,q,aF,ba,aW,p=c.drawText,c.drawTextBox,c.drawTriangle,c.drawTriangleF,c.drawRect,c.drawRectF,c.drawCircle,c.drawCircleF,c.drawClear,c.setColor
function v(ai,ak,aC,au)z=aC-ai
w=au-ak
if abs(z)>=abs(w)then
F=abs(z)else
F=abs(w)end
z=z/F
w=w/F
a=ai
b=ak
l=0
while(l<=F)do
q(a,b,1,1)a=a+z
b=b+w
l=l+1
end
end
function m(a,b,e)return{a=a or 0,b=b or 0,e=e or 0}end
function V(_,d)return m(_.a+d.a,_.b+d.b,_.e+d.e)end
function aS(_,d)return m(_.a*d.a,_.b*d.b,_.e*d.e)end
function C(_,u)return m(_.a*u,_.b*u,_.e*u)end
function av(_)return C(_,-1)end
function aP(_,d)return V(_,av(d))end
function az(_)return f.sqrt(_.a*_.a+_.b*_.b+_.e*_.e)end
function aw(_,u)return C(_,1/u)end
function aY(_)return aw(_,az(_))end
function U(_,d)return _.a*d.a+_.b*d.b+_.e*d.e
end
function aE(_,d)return m(_.b*d.e-_.e*d.b,_.e*d.a-_.a*d.e,_.a*d.b-_.b*d.a)end
function aX(aj,Q,B)local B=B or 1
return m(f.sin(aj)*f.cos(Q)*B,f.cos(aj)*f.cos(Q)*B,f.sin(Q)*B)end
function aZ(_,T,R,N)return m(U(T,_),U(R,_),U(N,_))end
function aQ(_,T,R,N)return V(V(C(T,_.a),C(R,_.b)),C(N,_.e))end
function aq(_,min,max)return f.max(min,f.min(_,max))end
function ag(a)return floor(a+.5)end
aG=as("Mode")at=O("R Max Rng")x=O("X FOV")*pi
s=O("Swep Lim")*ar+x
aA={}ax={}k,o=.5,0
function onTick()r=m(n(21),n(23),n(22))D=-n(20)*ar
ab,ao,ae=n(24),n(25),n(26)X,S,aa=cos(ab),cos(ao),cos(ae)ac,Y,P=sin(ab),sin(ao),sin(ae)ay=m(S*aa,-Y,S*P)W=m(ac*P+X*Y*aa,X*S,-ac*aa+X*Y*P)aK=aE(ay,W)L=n(32)if L<.01 and L>-.01 then
o=o-o/5
else
o=aq((o+L/160),-.1,.1)end
if k>=50 then o=0 end
k=aq(k+(L/55*k/2.4)+o*k/2.4,.1,50)j=-atan(W.a,W.b)+pi
y,A=r.a,r.b
end
function onDraw()G,H=c.getWidth(),c.getHeight()c.setMapColorOcean(0,0,0)c.setMapColorShallows(2,2,2)c.setMapColorLand(7,7,7)c.setMapColorGrass(8,10,8)c.setMapColorSand(6,6,4)c.setMapColorSnow(25,25,26)c.drawMap(y,A,k)i,h=J(y,A,k,G,H,r.a,r.b)aU,aH=J(y,A+at,k,G,H,r.a,r.b)g=f.abs(aH-h)p(80,255,0,38)v(i,h,i+sin(D+j-x)*g,h+cos(D+j-x)*g)v(i,h,i+sin(D+j+x)*g,h+cos(D+j+x)*g)if aG then
p(0,180,0,23)v(i,h,i+sin(-s+j)*g,h+cos(-s+j)*g)v(i,h,i+sin(s+j)*g,h+cos(s+j)*g)do
Z=-j-s+pi/2
ad=(-j+s+pi/2-Z)/18
for l=1,18 do
af=Z+ad*l
ap=Z+ad*(l-1)v(i+cos(af)*g,h+sin(af)*g,i+cos(ap)*g,h+sin(ap)*g)end
end
else
p(0,255,0,8)aF(i,h,g)end
for an,t in ipairs(aA)do
E,M=J(y,A,k,G,H,t.aD.a,t.aD.b)E,M=ag(E),ag(M)if aL==an then
p(90,2,5)q(E-2,M-3,5,1)p(99,20,3)else
p(80,13,1)end
aB(E-1,M-1,2,2)end
p(0,40,255)for an,t in pairs(ax)do
local K,I=J(y,A,k,G,H,t.a,t.b)q(K,I-1,1,1)q(K+1,I,1,1)q(K,I+1,1,1)q(K-1,I,1,1)end
end
