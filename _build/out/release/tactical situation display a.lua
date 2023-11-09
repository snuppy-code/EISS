-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2751 (3085 with comment) chars

ad=screen
I=map.mapToScreen
f,m,aj,ab,d,aU,aQ=math,input,output,property,ad,true,false
n,aW,aP,aO=m.getNumber,aj.setNumber,m.getBool,aj.setBool
R,ax=ab.getNumber,ab.getBool
abs,cos,sin,floor,atan=f.abs,f.cos,f.sin,f.floor,f.atan
pi=f.pi
ag=pi*2
d=ad
aN,aM,b_,aT,at,r,aC,aX,aJ,p=d.drawText,d.drawTextBox,d.drawTriangle,d.drawTriangleF,d.drawRect,d.drawRectF,d.drawCircle,d.drawCircleF,d.drawClear,d.setColor
function t(ar,ak,aH,au)C=aH-ar
A=au-ak
if abs(C)>=abs(A)then
J=abs(C)else
J=abs(A)end
C=C/J
A=A/J
a=ar
b=ak
m=0
while(m<=J)do
r(a,b,1,1)a=a+C
b=b+A
m=m+1
end
end
function l(a,b,e)return{a=a or 0,b=b or 0,e=e or 0}end
function Q(_,c)return l(_.a+c.a,_.b+c.b,_.e+c.e)end
function ba(_,c)return l(_.a*c.a,_.b*c.b,_.e*c.e)end
function B(_,u)return l(_.a*u,_.b*u,_.e*u)end
function aA(_)return B(_,-1)end
function aY(_,c)return Q(_,aA(c))end
function az(_)return f.sqrt(_.a*_.a+_.b*_.b+_.e*_.e)end
function aG(_,u)return B(_,1/u)end
function aS(_)return aG(_,az(_))end
function aa(_,c)return _.a*c.a+_.b*c.b+_.e*c.e
end
function av(_,c)return l(_.b*c.e-_.e*c.b,_.e*c.a-_.a*c.e,_.a*c.b-_.b*c.a)end
function aI(af,V,w)local w=w or 1
return l(f.sin(af)*f.cos(V)*w,f.cos(af)*f.cos(V)*w,f.sin(V)*w)end
function aK(_,W,T,Z)return l(aa(W,_),aa(T,_),aa(Z,_))end
function aL(_,W,T,Z)return Q(Q(B(W,_.a),B(T,_.b)),B(Z,_.e))end
function ae(_,min,max)return f.max(min,f.min(_,max))end
function ac(a)return floor(a+.5)end
aB=ax("Mode")aF=R("R Max Rng")z=R("X FOV")*pi
s=R("Swep Lim")*ag+z
aw={}ay={}k,o=.5,0
function onTick()q=l(n(21),n(23),n(22))L=-n(20)*ag
al,ap,ai=n(24),n(25),n(26)S,P,U=cos(al),cos(ap),cos(ai)ao,Y,O=sin(al),sin(ap),sin(ai)as=l(P*U,-Y,P*O)N=l(ao*O+S*Y*U,S*P,-ao*U+S*Y*O)aV=av(as,N)F=n(32)if F<.01 and F>-.01 then
o=o-o/5
else
o=ae((o+F/160),-.1,.1)end
if k>=50 then o=0 end
k=ae(k+(F/55*k/2.4)+o*k/2.4,.1,50)j=-atan(N.a,N.b)+pi
v,y=q.a,q.b
end
function onDraw()G,H=d.getWidth(),d.getHeight()d.setMapColorOcean(0,0,0)d.setMapColorShallows(2,2,2)d.setMapColorLand(7,7,7)d.setMapColorGrass(8,10,8)d.setMapColorSand(6,6,4)d.setMapColorSnow(25,25,26)d.drawMap(v,y,k)i,h=I(v,y,k,G,H,q.a,q.b)aR,aE=I(v,y+aF,k,G,H,q.a,q.b)g=f.abs(aE-h)p(80,255,0,38)t(i,h,i+sin(L+j-z)*g,h+cos(L+j-z)*g)t(i,h,i+sin(L+j+z)*g,h+cos(L+j+z)*g)if aB then
p(0,180,0,23)t(i,h,i+sin(-s+j)*g,h+cos(-s+j)*g)t(i,h,i+sin(s+j)*g,h+cos(s+j)*g)do
X=-j-s+pi/2
ah=(-j+s+pi/2-X)/18
for m=1,18 do
aq=X+ah*m
am=X+ah*(m-1)t(i+cos(aq)*g,h+sin(aq)*g,i+cos(am)*g,h+sin(am)*g)end
end
else
p(0,255,0,8)aC(i,h,g)end
for an,x in ipairs(aw)do
M,K=I(v,y,k,G,H,x.aD.a,x.aD.b)M,K=ac(M),ac(K)if aZ==an then
p(90,2,5)r(M-2,K-3,5,1)p(99,20,3)else
p(80,13,1)end
at(M-1,K-1,2,2)end
p(0,40,255)for an,x in pairs(ay)do
local D,E=I(v,y,k,G,H,x.a,x.b)r(D,E-1,1,1)r(D+1,E,1,1)r(D,E+1,1,1)r(D-1,E,1,1)end
end
