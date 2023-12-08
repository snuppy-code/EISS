-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3461 (3795 with comment) chars
aY="1"
aX=""

av=tonumber
N=ipairs
ar=string
ax=tostring
W=false
aC=property
ac=table.remove
m,q,aq,az,aT,aR,aS=math,input,output,aC,screen,true,W
b,c,aP,aW=q.getNumber,aq.setNumber,q.getBool,aq.setBool
H,aO=az.getNumber,az.getBool
abs,cos,sin,floor,atan=m.abs,m.cos,m.sin,m.floor,m.atan
pi=m.pi
y=pi*2
function f(h,i,g)return{h=h or 0,i=i or 0,g=g or 0}end
function u(_,j)return f(_.h+j.h,_.i+j.i,_.g+j.g)end
function C(_,F)return f(_.h*F,_.i*F,_.g*F)end
function aI(_)return C(_,-1)end
function M(_,j)return u(_,aI(j))end
function t(_)return m.sqrt(_.h*_.h+_.i*_.i+_.g*_.g)end
function aJ(_,F)return C(_,1/F)end
function aU(_)return aJ(_,t(_))end
function ae(_,j)return _.h*j.h+_.i*j.i+_.g*j.g
end
function aL(_,j)return f(_.i*j.g-_.g*j.i,_.g*j.h-_.h*j.g,_.h*j.i-_.i*j.h)end
function ad(aB,ab,ak)aE=aE or 1
return f(m.sin(aB)*m.cos(ab)*ak,m.cos(aB)*m.cos(ab)*ak,m.sin(ab)*ak)end
function aN(_,E,ag,R)return f(ae(E,_),ae(ag,_),ae(R,_))end
function aj(_,E,ag,R)return u(u(C(E,_.h),C(ag,_.i)),C(R,_.g))end
af=H("VL Strt Frq")aM=H("VL You Frq")ao=H("VL End Frq")O=aC.getText("VL User")r=af
X=H("Merge Dist")aG=H("Cull Time")e={{},{},{},{}}a={}B={}v={}p=0
k,x=0,0
function onTick()A=f(b(1),b(2),b(3))ay=b(27)==1
if ay and not aD and(#a>0)then
p=p%(#a)+1
end
aD=ay
aH=b(28)==1
at,as,aA=b(4),b(5),b(6)ah,Y,T=cos(at),cos(as),cos(aA)ap,an,al=sin(at),sin(as),sin(aA)D=f(Y*T,-an,Y*al)G=f(ap*al+ah*an*T,ah*Y,-ap*T+ah*an*al)J=aL(D,G)aw=f(b(7),b(9),b(8))aK=f(b(21),b(22),b(23))if t(aw)>0 then
local P={b(10),b(11)}s=aX
if P[1]>=1000000 and P[1]>=1000000 then
au=ax(P[1]):sub(2,7)..ax(P[2]):sub(2,7)for q=1,#au,3 do
s=s..ar.char(au:sub(q,q+3-1))end
else
s="XXXX"
end
B[s]={d=aw,ai=aK}Z=nil
for n,S in N(v)do
if S==s then
Z=n
end
end
if Z then
v[Z]=s
else
v[#v+1]=s
end
end
B[O]={d=A,ai=f()}if a[p]then
B[O].ai=a[p].d
end
K=aX
for q=1,#O do
K=K..ar.format("%03d",O:byte(q))end
c(1,av(aY..K:sub(1,6)))c(2,av(aY..K:sub(7,12)))r=r==ao and af or r+1
if r==aM then
r=r==ao and af or r+1
end
c(3,r)if b(18)>0 then
e[1].o=ad(b(19)*y,b(20)*y,b(18))e[1].l=aj(e[1].o,D,G,J)e[1].d=u(e[1].l,A)else
e[1]={o=f(),l=f(),d=f()}end
e[1].Q=b(30)if b(12)>0 then
e[2].o=ad(b(13)*y,b(14)*y,b(12))e[2].l=aj(e[2].o,D,G,J)e[2].d=u(e[2].l,A)else
e[2]={o=f(),l=f(),d=f()}end
e[2].Q=b(31)if b(24)>0 then
e[3].o=ad(b(25)*y+pi,b(26)*y,b(24))e[3].l=aj(e[3].o,D,G,J)e[3].d=u(e[3].l,A)else
e[3]={o=f(),l=f(),d=f()}end
e[3].Q=b(32)e[4].d=f(b(15),b(16),b(17))if t(e[4].d)>0 then
e[4].l=M(A,e[4].d)e[4].o=aN(e[4].l,D,G,J)else
e[4]={o=f(),l=f(),d=f()}end
e[4].Q=0
for n,w in N(e)do
if(t(w.l)>0)and not(w.Q>0)then
local U=0
for z,aQ in N(a)do
if U==0 then
if t(M(a[z].d,w.d))<=X then
U=z
a[z].d=w.d
a[z].I=0
end
else
if t(M(a[z].d,w.d))<=X then
ac(a,z)end
end
end
if U==0 then
a[#a+1]={d=w.d,I=0}end
end
end
aF=0
for n,S in N(a)do
a[n].I=a[n].I+1
if(S.I>=aG)then
if L then
ac(a,n)L=W
end
else
if a[n].d.g<=-1 then
a[n].d.g=5
end
for q,E in pairs(B)do
if L then
if t(M(E.d,a[n].d))<=X then
if L then
ac(a,n)L=W
end
end
end
end
end
end
if aF>0 then aV=0 end
if a[k]then
c(14,a[k].d.h)c(15,a[k].d.i)c(16,a[k].d.g)end
if a[k+1]then
c(17,a[k+1].d.h)c(18,a[k+1].d.i)c(19,a[k+1].d.g)end
c(26,k)k=k+2
if k>#a then
k=1
end
am=B[v[x]]if am then
V=am.d
aa=am.ai
c(20,V.h)c(21,V.i)c(22,V.g)c(23,aa.h)c(24,aa.i)c(25,aa.g)end
c(28,x)x=x+1
if x>#v then
x=1
end
if aH then
c(30,0)c(31,0)c(32,0)else
if a[p]then
c(30,a[p].h)c(31,a[p].i)c(32,a[p].g)c(11,a[p].I)else
c(30,0)c(31,0)c(32,0)c(11,0)end
end
c(7,0)c(8,0)c(9,1)c(10,1)end
