-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2751 (3085 with comment) chars

ap=screen
F=map.mapToScreen
f,m,ak,ag,d,aQ,aN=math,input,output,property,ap,true,false
n,aZ,aM,aY=m.getNumber,ak.setNumber,m.getBool,ak.setBool
Z,aF=ag.getNumber,ag.getBool
abs,cos,sin,floor,atan=f.abs,f.cos,f.sin,f.floor,f.atan
pi=f.pi
ao=pi*2
d=ap
aU,aS,aW,aL,au,r,aB,aO,aR,p=d.drawText,d.drawTextBox,d.drawTriangle,d.drawTriangleF,d.drawRect,d.drawRectF,d.drawCircle,d.drawCircleF,d.drawClear,d.setColor
function t(aq,an,aw,as)C=aw-aq
w=as-an
if abs(C)>=abs(w)then
G=abs(C)else
G=abs(w)end
C=C/G
w=w/G
a=aq
b=an
m=0
while(m<=G)do
r(a,b,1,1)a=a+C
b=b+w
m=m+1
end
end
function l(a,b,e)return{a=a or 0,b=b or 0,e=e or 0}end
function S(_,c)return l(_.a+c.a,_.b+c.b,_.e+c.e)end
function aV(_,c)return l(_.a*c.a,_.b*c.b,_.e*c.e)end
function v(_,B)return l(_.a*B,_.b*B,_.e*B)end
function aD(_)return v(_,-1)end
function aT(_,c)return S(_,aD(c))end
function aA(_)return f.sqrt(_.a*_.a+_.b*_.b+_.e*_.e)end
function aC(_,B)return v(_,1/B)end
function b_(_)return aC(_,aA(_))end
function R(_,c)return _.a*c.a+_.b*c.b+_.e*c.e
end
function at(_,c)return l(_.b*c.e-_.e*c.b,_.e*c.a-_.a*c.e,_.a*c.b-_.b*c.a)end
function aI(ai,Q,u)local u=u or 1
return l(f.sin(ai)*f.cos(Q)*u,f.cos(ai)*f.cos(Q)*u,f.sin(Q)*u)end
function aJ(_,O,T,Y)return l(R(O,_),R(T,_),R(Y,_))end
function aX(_,O,T,Y)return S(S(v(O,_.a),v(T,_.b)),v(Y,_.e))end
function aj(_,min,max)return f.max(min,f.min(_,max))end
function ah(a)return floor(a+.5)end
av=aF("Mode")ay=Z("R Max Rng")z=Z("X FOV")*pi
s=Z("Swep Lim")*ao+z
aH={}az={}k,o=.5,0
function onTick()q=l(n(21),n(23),n(22))E=-n(20)*ao
ae,al,af=n(24),n(25),n(26)aa,N,P=cos(ae),cos(al),cos(af)am,W,V=sin(ae),sin(al),sin(af)aE=l(N*P,-W,N*V)U=l(am*V+aa*W*P,aa*N,-am*P+aa*W*V)aP=at(aE,U)D=n(32)if D<.01 and D>-.01 then
o=o-o/5
else
o=aj((o+D/160),-.1,.1)end
if k>=50 then o=0 end
k=aj(k+(D/55*k/2.4)+o*k/2.4,.1,50)j=-atan(U.a,U.b)+pi
A,y=q.a,q.b
end
function onDraw()L,H=d.getWidth(),d.getHeight()d.setMapColorOcean(0,0,0)d.setMapColorShallows(2,2,2)d.setMapColorLand(7,7,7)d.setMapColorGrass(8,10,8)d.setMapColorSand(6,6,4)d.setMapColorSnow(25,25,26)d.drawMap(A,y,k)i,h=F(A,y,k,L,H,q.a,q.b)aK,ax=F(A,y+ay,k,L,H,q.a,q.b)g=f.abs(ax-h)p(80,255,0,38)t(i,h,i+sin(E+j-z)*g,h+cos(E+j-z)*g)t(i,h,i+sin(E+j+z)*g,h+cos(E+j+z)*g)if av then
p(0,180,0,23)t(i,h,i+sin(-s+j)*g,h+cos(-s+j)*g)t(i,h,i+sin(s+j)*g,h+cos(s+j)*g)do
X=-j-s+pi/2
ad=(-j+s+pi/2-X)/18
for m=1,18 do
ab=X+ad*m
ac=X+ad*(m-1)t(i+cos(ab)*g,h+sin(ab)*g,i+cos(ac)*g,h+sin(ac)*g)end
end
else
p(0,255,0,8)aB(i,h,g)end
for ar,x in ipairs(aH)do
J,K=F(A,y,k,L,H,x.aG.a,x.aG.b)J,K=ah(J),ah(K)if ba==ar then
p(90,2,5)r(J-2,K-3,5,1)p(99,20,3)else
p(80,13,1)end
au(J-1,K-1,2,2)end
p(0,40,255)for ar,x in pairs(az)do
local I,M=F(A,y,k,L,H,x.a,x.b)r(I,M-1,1,1)r(I+1,M,1,1)r(I,M+1,1,1)r(I-1,M,1,1)end
end
