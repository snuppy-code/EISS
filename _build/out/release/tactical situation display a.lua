-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2751 (3085 with comment) chars

af=screen
L=map.mapToScreen
f,l,al,ag,c,aX,aL=math,input,output,property,af,true,false
n,aY,aK,aW=l.getNumber,al.setNumber,l.getBool,al.setBool
V,aD=ag.getNumber,ag.getBool
abs,cos,sin,floor,atan=f.abs,f.cos,f.sin,f.floor,f.atan
pi=f.pi
ab=pi*2
c=af
b_,aS,aM,aO,as,s,aA,aQ,aN,o=c.drawText,c.drawTextBox,c.drawTriangle,c.drawTriangleF,c.drawRect,c.drawRectF,c.drawCircle,c.drawCircleF,c.drawClear,c.setColor
function C(ap,an,aH,aw)A=aH-ap
v=aw-an
if abs(A)>=abs(v)then
K=abs(A)else
K=abs(v)end
A=A/K
v=v/K
a=ap
b=an
l=0
while(l<=K)do
s(a,b,1,1)a=a+A
b=b+v
l=l+1
end
end
function m(a,b,e)return{a=a or 0,b=b or 0,e=e or 0}end
function Q(_,d)return m(_.a+d.a,_.b+d.b,_.e+d.e)end
function aT(_,d)return m(_.a*d.a,_.b*d.b,_.e*d.e)end
function w(_,x)return m(_.a*x,_.b*x,_.e*x)end
function ax(_)return w(_,-1)end
function aU(_,d)return Q(_,ax(d))end
function ay(_)return f.sqrt(_.a*_.a+_.b*_.b+_.e*_.e)end
function aE(_,x)return w(_,1/x)end
function ba(_)return aE(_,ay(_))end
function Z(_,d)return _.a*d.a+_.b*d.b+_.e*d.e
end
function az(_,d)return m(_.b*d.e-_.e*d.b,_.e*d.a-_.a*d.e,_.a*d.b-_.b*d.a)end
function aZ(ah,Y,u)local u=u or 1
return m(f.sin(ah)*f.cos(Y)*u,f.cos(ah)*f.cos(Y)*u,f.sin(Y)*u)end
function aP(_,O,P,W)return m(Z(O,_),Z(P,_),Z(W,_))end
function aV(_,O,P,W)return Q(Q(w(O,_.a),w(P,_.b)),w(W,_.e))end
function aj(_,min,max)return f.max(min,f.min(_,max))end
function ac(a)return floor(a+.5)end
aC=aD("Mode")aB=V("R Max Rng")B=V("X FOV")*pi
r=V("Swep Lim")*ab+B
aG={}av={}k,p=.5,0
function onTick()q=m(n(21),n(23),n(22))I=-n(20)*ab
ad,aq,ae=n(24),n(25),n(26)aa,S,X=cos(ad),cos(aq),cos(ae)am,R,U=sin(ad),sin(aq),sin(ae)au=m(S*X,-R,S*U)T=m(am*U+aa*R*X,aa*S,-am*X+aa*R*U)aI=az(au,T)G=n(32)if G<.01 and G>-.01 then
p=p-p/5
else
p=aj((p+G/160),-.1,.1)end
if k>=50 then p=0 end
k=aj(k+(G/55*k/2.4)+p*k/2.4,.1,50)j=-atan(T.a,T.b)+pi
z,y=q.a,q.b
end
function onDraw()M,F=c.getWidth(),c.getHeight()c.setMapColorOcean(0,0,0)c.setMapColorShallows(2,2,2)c.setMapColorLand(7,7,7)c.setMapColorGrass(8,10,8)c.setMapColorSand(6,6,4)c.setMapColorSnow(25,25,26)c.drawMap(z,y,k)i,h=L(z,y,k,M,F,q.a,q.b)aR,aF=L(z,y+aB,k,M,F,q.a,q.b)g=f.abs(aF-h)o(80,255,0,38)C(i,h,i+sin(I+j-B)*g,h+cos(I+j-B)*g)C(i,h,i+sin(I+j+B)*g,h+cos(I+j+B)*g)if aC then
o(0,180,0,23)C(i,h,i+sin(-r+j)*g,h+cos(-r+j)*g)C(i,h,i+sin(r+j)*g,h+cos(r+j)*g)do
N=-j-r+pi/2
ai=(-j+r+pi/2-N)/18
for l=1,18 do
ar=N+ai*l
ao=N+ai*(l-1)C(i+cos(ar)*g,h+sin(ar)*g,i+cos(ao)*g,h+sin(ao)*g)end
end
else
o(0,255,0,8)aA(i,h,g)end
for ak,t in ipairs(aG)do
D,E=L(z,y,k,M,F,t.at.a,t.at.b)D,E=ac(D),ac(E)if aJ==ak then
o(90,2,5)s(D-2,E-3,5,1)o(99,20,3)else
o(80,13,1)end
as(D-1,E-1,2,2)end
o(0,40,255)for ak,t in pairs(av)do
local J,H=L(z,y,k,M,F,t.a,t.b)s(J,H-1,1,1)s(J+1,H,1,1)s(J,H+1,1,1)s(J-1,H,1,1)end
end
