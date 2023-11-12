-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2751 (3085 with comment) chars

ad=screen
J=map.mapToScreen
f,l,ag,an,d,aW,aI=math,input,output,property,ad,true,false
n,aT,aZ,aS=l.getNumber,ag.setNumber,l.getBool,ag.setBool
Y,as=an.getNumber,an.getBool
abs,cos,sin,floor,atan=f.abs,f.cos,f.sin,f.floor,f.atan
pi=f.pi
am=pi*2
d=ad
aM,aY,aO,aV,at,s,aC,aN,b_,p=d.drawText,d.drawTextBox,d.drawTriangle,d.drawTriangleF,d.drawRect,d.drawRectF,d.drawCircle,d.drawCircleF,d.drawClear,d.setColor
function A(aj,ai,aw,aF)v=aw-aj
x=aF-ai
if abs(v)>=abs(x)then
L=abs(v)else
L=abs(x)end
v=v/L
x=x/L
a=aj
b=ai
l=0
while(l<=L)do
s(a,b,1,1)a=a+v
b=b+x
l=l+1
end
end
function m(a,b,e)return{a=a or 0,b=b or 0,e=e or 0}end
function P(_,c)return m(_.a+c.a,_.b+c.b,_.e+c.e)end
function aP(_,c)return m(_.a*c.a,_.b*c.b,_.e*c.e)end
function t(_,y)return m(_.a*y,_.b*y,_.e*y)end
function aB(_)return t(_,-1)end
function aX(_,c)return P(_,aB(c))end
function av(_)return f.sqrt(_.a*_.a+_.b*_.b+_.e*_.e)end
function aD(_,y)return t(_,1/y)end
function aU(_)return aD(_,av(_))end
function R(_,c)return _.a*c.a+_.b*c.b+_.e*c.e
end
function ax(_,c)return m(_.b*c.e-_.e*c.b,_.e*c.a-_.a*c.e,_.a*c.b-_.b*c.a)end
function aQ(ar,O,w)local w=w or 1
return m(f.sin(ar)*f.cos(O)*w,f.cos(ar)*f.cos(O)*w,f.sin(O)*w)end
function aK(_,Z,W,N)return m(R(Z,_),R(W,_),R(N,_))end
function aL(_,Z,W,N)return P(P(t(Z,_.a),t(W,_.b)),t(N,_.e))end
function ak(_,min,max)return f.max(min,f.min(_,max))end
function ap(a)return floor(a+.5)end
au=as("Mode")aA=Y("R Max Rng")u=Y("X FOV")*pi
q=Y("Swep Lim")*am+u
aE={}az={}k,o=.5,0
function onTick()r=m(n(21),n(23),n(22))K=-n(20)*am
aq,af,ae=n(24),n(25),n(26)V,X,T=cos(aq),cos(af),cos(ae)ab,S,U=sin(aq),sin(af),sin(ae)aG=m(X*T,-S,X*U)Q=m(ab*U+V*S*T,V*X,-ab*T+V*S*U)ba=ax(aG,Q)E=n(32)if E<.01 and E>-.01 then
o=o-o/5
else
o=ak((o+E/160),-.1,.1)end
if k>=50 then o=0 end
k=ak(k+(E/55*k/2.4)+o*k/2.4,.1,50)j=-atan(Q.a,Q.b)+pi
C,z=r.a,r.b
end
function onDraw()D,G=d.getWidth(),d.getHeight()d.setMapColorOcean(0,0,0)d.setMapColorShallows(2,2,2)d.setMapColorLand(7,7,7)d.setMapColorGrass(8,10,8)d.setMapColorSand(6,6,4)d.setMapColorSnow(25,25,26)d.drawMap(C,z,k)i,h=J(C,z,k,D,G,r.a,r.b)aJ,ay=J(C,z+aA,k,D,G,r.a,r.b)g=f.abs(ay-h)p(80,255,0,38)A(i,h,i+sin(K+j-u)*g,h+cos(K+j-u)*g)A(i,h,i+sin(K+j+u)*g,h+cos(K+j+u)*g)if au then
p(0,180,0,23)A(i,h,i+sin(-q+j)*g,h+cos(-q+j)*g)A(i,h,i+sin(q+j)*g,h+cos(q+j)*g)do
aa=-j-q+pi/2
al=(-j+q+pi/2-aa)/18
for l=1,18 do
ah=aa+al*l
ao=aa+al*(l-1)A(i+cos(ah)*g,h+sin(ah)*g,i+cos(ao)*g,h+sin(ao)*g)end
end
else
p(0,255,0,8)aC(i,h,g)end
for ac,B in ipairs(aE)do
M,F=J(C,z,k,D,G,B.aH.a,B.aH.b)M,F=ap(M),ap(F)if aR==ac then
p(90,2,5)s(M-2,F-3,5,1)p(99,20,3)else
p(80,13,1)end
at(M-1,F-1,2,2)end
p(0,40,255)for ac,B in pairs(az)do
local H,I=J(C,z,k,D,G,B.a,B.b)s(H,I-1,1,1)s(H+1,I,1,1)s(H,I+1,1,1)s(H-1,I,1,1)end
end
