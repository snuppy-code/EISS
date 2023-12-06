-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2475 (2809 with comment) chars

R=nil
ad=pairs
A=screen
g,y,U,ac,h,aO,bb=math,input,output,property,A,true,false
b,aD,aI,ba=y.getNumber,U.setNumber,y.getBool,U.setBool
aZ,aM=ac.getNumber,ac.getBool
abs,cos,sin,floor,atan=g.abs,g.cos,g.sin,g.floor,g.atan
pi=g.pi
b_=pi*2
h=A
ag,aN,aQ,aH,w,aC,aF,D=h.drawText,h.drawTextBox,h.drawLine,h.drawRect,h.drawRectF,h.drawCircle,h.drawClear,h.setColor
function e(a,d,f,k)return{a=a or 0,d=d or 0,f=f or 0,k=k or 0}end
function N(_,c)return e(_.a+c.a,_.d+c.d,_.f+c.f)end
function aK(_,c)return e(_.a*c.a,_.d*c.d,_.f*c.f)end
function o(_,u)return e(_.a*u,_.d*u,_.f*u)end
function at(_)return o(_,-1)end
function Q(_,c)return N(_,at(c))end
function p(_)return g.sqrt(_.a*_.a+_.d*_.d+_.f*_.f)end
function an(_,u)return o(_,1/u)end
function aE(_)return an(_,p(_))end
function K(_,c)return _.a*c.a+_.d*c.d+_.f*c.f
end
function au(_,c)return e(_.d*c.f-_.f*c.d,_.f*c.a-_.a*c.f,_.a*c.d-_.d*c.a)end
function aJ(G,z,v)local v=v or 1
return e(g.sin(G)*g.cos(z)*v,g.cos(G)*g.cos(z)*v,g.sin(z)*v)end
function P(_,n)if not m then
m={}m[n]={J=e(),I=e()}elseif not m[n]then
m[n]={J=e(),I=e()}end
m[n].I=Q(_,m[n].J)m[n].J=_
return m[n].I
end
function aP(_,F,E,H)return e(K(F,_),K(E,_),K(H,_))end
function aL(_,F,E,H)return N(N(o(F,_.a),o(E,_.d)),o(H,_.f))end
function aU(a,h,S)return a<h and h or a>S and S or a
end
function aT(aq,ar,aB,k,q)local av=aB*(.025-2.2)+2.2
local Y=k/2; local V=q/2
local ai=(Y-128*.025)/(V-128*.025)local af=g.tan(av/2); local az=af*ai
local s=Q(aq,ar)local aA,ay=s.d>0 and Y*(1+s.a/s.d/az)or 0,s.d>0 and q-V*(1+s.f/s.d/af)or 0
return aA,ay
end
aG={}aS=1000
i=3
aY=e(0,2.625,-.5)aX=e(0,3.125,-.25)ap={}for y=1,i do
ap[y]={G=0,z=0}end
T=10
t={}r={}function onTick()am=b(28)==1
ak=e(b(1),b(2),b(3))X,ae,Z=b(4),b(5),b(6)M,L,O=cos(X),cos(ae),cos(Z)W,C,B=sin(X),sin(ae),sin(Z)aw=e(L*O,-C,L*B)aj=e(W*B+M*C*O,M*L,-W*O+M*C*B)aR=au(aw,aj)aa=o(P(ak,"myvel"),60)ax=o(P(aa,"myacc"),60)al=p(aa)ao=p(ax)/9.81
x=b(19)l=e(b(7),b(8),b(9))if p(l)>0 then
r[x]={ab=l,i=0}end
l=e(b(10),b(11),b(12))if p(l)>0 then
r[x+1]={ab=l,i=0}end
x=b(21)l=e(b(13),b(14),b(15))if p(l)>0 then
t[x]={ab=l,i=0}end
for j,ah in ad(r)do
r[j].i=r[j].i+1
if r[j].i>=T then
r[j]=R
end
end
for j,ah in ad(t)do
t[j].i=t[j].i+1
if t[j].i>=T then
t[j]=R
end
end
as=e(b(23),b(24),b(25))end
function onDraw()k,q=A.getWidth(),A.getHeight()aV,aW=k/2,q/2
if am then
D(255,0,0)w(0,0,1,q)w(k-1,0,1,q)end
if p(as)>0 then
D(80,13,1)w(0,0,k,3)w(0,q-3,k,3)end
D(255,120,120)ag(6,6,"Gs: "..ao)ag(6,12,"Spd: "..al)end
