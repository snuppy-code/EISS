-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2751 (3085 with comment) chars

al=screen
K=map.mapToScreen
f,l,af,ae,d,aK,aL=math,input,output,property,al,true,false
n,aU,aQ,aO=l.getNumber,af.setNumber,l.getBool,af.setBool
N,az=ae.getNumber,ae.getBool
abs,cos,sin,floor,atan=f.abs,f.cos,f.sin,f.floor,f.atan
pi=f.pi
ah=pi*2
d=al
aP,b_,aJ,aS,ax,q,au,aY,aX,p=d.drawText,d.drawTextBox,d.drawTriangle,d.drawTriangleF,d.drawRect,d.drawRectF,d.drawCircle,d.drawCircleF,d.drawClear,d.setColor
function z(ak,ag,aD,ay)w=aD-ak
C=ay-ag
if abs(w)>=abs(C)then
E=abs(w)else
E=abs(C)end
w=w/E
C=C/E
a=ak
b=ag
l=0
while(l<=E)do
q(a,b,1,1)a=a+w
b=b+C
l=l+1
end
end
function m(a,b,e)return{a=a or 0,b=b or 0,e=e or 0}end
function O(_,c)return m(_.a+c.a,_.b+c.b,_.e+c.e)end
function aV(_,c)return m(_.a*c.a,_.b*c.b,_.e*c.e)end
function u(_,v)return m(_.a*v,_.b*v,_.e*v)end
function aG(_)return u(_,-1)end
function aZ(_,c)return O(_,aG(c))end
function aA(_)return f.sqrt(_.a*_.a+_.b*_.b+_.e*_.e)end
function aw(_,v)return u(_,1/v)end
function aI(_)return aw(_,aA(_))end
function P(_,c)return _.a*c.a+_.b*c.b+_.e*c.e
end
function aH(_,c)return m(_.b*c.e-_.e*c.b,_.e*c.a-_.a*c.e,_.a*c.b-_.b*c.a)end
function aT(ar,W,y)local y=y or 1
return m(f.sin(ar)*f.cos(W)*y,f.cos(ar)*f.cos(W)*y,f.sin(W)*y)end
function aW(_,V,aa,Z)return m(P(V,_),P(aa,_),P(Z,_))end
function aR(_,V,aa,Z)return O(O(u(V,_.a),u(aa,_.b)),u(Z,_.e))end
function ac(_,min,max)return f.max(min,f.min(_,max))end
function am(a)return floor(a+.5)end
as=az("Mode")aC=N("R Max Rng")t=N("X FOV")*pi
s=N("Swep Lim")*ah+t
aE={}aF={}j,o=.5,0
function onTick()r=m(n(21),n(23),n(22))L=-n(20)*ah
ab,aq,ai=n(24),n(25),n(26)Q,S,Y=cos(ab),cos(aq),cos(ai)aj,T,U=sin(ab),sin(aq),sin(ai)aB=m(S*Y,-T,S*U)R=m(aj*U+Q*T*Y,Q*S,-aj*Y+Q*T*U)aN=aH(aB,R)I=n(32)if I<.01 and I>-.01 then
o=o-o/5
else
o=ac((o+I/160),-.1,.1)end
if j>=50 then o=0 end
j=ac(j+(I/55*j/2.4)+o*j/2.4,.1,50)k=-atan(R.a,R.b)+pi
x,A=r.a,r.b
end
function onDraw()D,G=d.getWidth(),d.getHeight()d.setMapColorOcean(0,0,0)d.setMapColorShallows(2,2,2)d.setMapColorLand(7,7,7)d.setMapColorGrass(8,10,8)d.setMapColorSand(6,6,4)d.setMapColorSnow(25,25,26)d.drawMap(x,A,j)i,h=K(x,A,j,D,G,r.a,r.b)ba,at=K(x,A+aC,j,D,G,r.a,r.b)g=f.abs(at-h)p(80,255,0,38)z(i,h,i+sin(L+k-t)*g,h+cos(L+k-t)*g)z(i,h,i+sin(L+k+t)*g,h+cos(L+k+t)*g)if as then
p(0,180,0,23)z(i,h,i+sin(-s+k)*g,h+cos(-s+k)*g)z(i,h,i+sin(s+k)*g,h+cos(s+k)*g)do
X=-k-s+pi/2
ad=(-k+s+pi/2-X)/18
for l=1,18 do
ao=X+ad*l
an=X+ad*(l-1)z(i+cos(ao)*g,h+sin(ao)*g,i+cos(an)*g,h+sin(an)*g)end
end
else
p(0,255,0,8)au(i,h,g)end
for ap,B in ipairs(aE)do
F,M=K(x,A,j,D,G,B.av.a,B.av.b)F,M=am(F),am(M)if aM==ap then
p(90,2,5)q(F-2,M-3,5,1)p(99,20,3)else
p(80,13,1)end
ax(F-1,M-1,2,2)end
p(0,40,255)for ap,B in pairs(aF)do
local H,J=K(x,A,j,D,G,B.a,B.b)q(H,J-1,1,1)q(H+1,J,1,1)q(H,J+1,1,1)q(H-1,J,1,1)end
end
