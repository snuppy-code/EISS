-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3501 (3835 with comment) chars
bn="1"
bm=""

X=ipairs
aH=tonumber
aD=string
aq=tostring
P=pairs
H=nil
az=property
S=input
ac=table.remove
j,n,aK,ap,bk,aW,bd=math,S,output,az,screen,true,false
c,l,be,aX=n.getNumber,aK.setNumber,n.getBool,aK.setBool
o,ba=ap.getNumber,ap.getBool
abs,cos,sin,floor,atan=j.abs,j.cos,j.sin,j.floor,j.atan
pi=j.pi
N=pi*2
function e(i,h,f)return{i=i or 0,h=h or 0,f=f or 0}end
function x(_,b)return e(_.i+b.i,_.h+b.h,_.f+b.f)end
function b_(_,b)return e(_.i*b.i,_.h*b.h,_.f*b.f)end
function u(_,y)return e(_.i*y,_.h*y,_.f*y)end
function aN(_)return u(_,-1)end
function F(_,b)return x(_,aN(b))end
function s(_)return j.sqrt(_.i*_.i+_.h*_.h+_.f*_.f)end
function ao(_,y)return u(_,1/y)end
function aY(_)return ao(_,s(_))end
function ae(_,b)return _.i*b.i+_.h*b.h+_.f*b.f
end
function aU(_,b)return e(_.h*b.f-_.f*b.h,_.f*b.i-_.i*b.f,_.i*b.h-_.h*b.i)end
function aw(aM,ag,ad)aP=aP or 1
return e(j.sin(aM)*j.cos(ag)*ad,j.cos(aM)*j.cos(ag)*ad,j.sin(ag)*ad)end
function bb(_,C,ak,T)return e(ae(C,_),ae(ak,_),ae(T,_))end
function ar(_,C,ak,T)return x(x(u(C,_.i),u(ak,_.h)),u(T,_.f))end
function bh(aE,b)if not _ then _={}_[b]={V=0,af=0}elseif not _[b]then _[b]={V=0,af=0}end;_[b].af=aE-_[b].V;_[b].V=aE;return _[b].af end
function bl(_,min,max)return j.max(min,j.min(_,max))end
function M(S)local I=H
for g,aZ in P(S)do
if I==H or g>I then
I=g
end
end
return I
end
function r(av)return a[av].q[M(a[av].q)]end
ai=o("VL Strt Frq")aT=o("VL You Frq")ay=o("VL End Frq")R=az.getText("VL User")m=ai
bi=o("ML Strt Frq")bj=o("ML End Frq")Y=o("Merge Dist")aO=o("Cull Time")aQ=o("Min extrap dist delta")bf={}d={{},{}}a={}A={}at={}aS,bc=0,0
t,E,B=0,0,0
z=0
function onTick()z=z+1
W=e(c(1),c(2),c(3))aF,ax,aB=c(4),c(5),c(6)U,am,Q=cos(aF),cos(ax),cos(aB)aA,aa,ab=sin(aF),sin(ax),sin(aB)al=e(am*Q,-aa,am*ab)Z=e(aA*ab+U*aa*Q,U*am,-aA*Q+U*aa*ab)as=aU(al,Z)aJ=e(c(7),c(8),c(9))if s(aJ)>0 then
local G={c(10),c(11)}L=bm
if G[1]>=1000000 and G[1]>=1000000 then
au=aq(G[1]):sub(2,7)..aq(G[2]):sub(2,7)for n=1,#au,3 do
L=L..aD.char(au:sub(n,n+3-1))end
else
L="XXXX"
end
A[L]=aJ
end
A[R]=W
K=bm
for n=1,#R do
K=K..aD.format("%03d",R:byte(n))end
l(1,aH(bn..K:sub(1,6)))l(2,aH(bn..K:sub(7,12)))m=m==ay and ai or m+1
if m==aT then
m=m==ay and ai or m+1
end
l(3,m)d[1].p=e(c(15),c(16),c(17))debug.log("x: "..c(15))if c(18)>0 then
d[1].D=aw(c(19)*N,c(20)*N,c(18))d[1].v=ar(d[1].D,al,Z,as)d[1].p=x(d[1].v,W)else
d[1].D=e()d[1].v=e()d[1].p=e()end
d[1].aL=c(31)if c(24)>0 then
d[2].D=aw(c(25)*N+pi,c(26)*N,c(24))d[2].v=ar(d[2].D,al,Z,as)d[2].p=x(d[2].v,W)else
d[2].D=e()d[2].v=e()d[2].p=e()end
d[2].aL=c(31)for g,w in X(d)do
if(s(w.v)>0)and not(w.aL>0)then
local match=0
for k,bg in X(a)do
if match==0 then
if s(F(r(k),w.p))<=Y then
match=k
a[k].q[z]=w.p
a[k].J=0
an=H
ah=-1
for aI,aG in P(a[k].q)do
aV=s(F(aG,r(k)))if aV>=aQ and aI>ah then
an=aG
ah=aI
end
end
if an~=H then
aC=M(a[k].q)-ah
if aC>0 then
a[k].aj=ao(F(r(k),an),aC)end
else
a[k].aj=e()end
end
else
if s(F(r(k),w.p))<=Y then
ac(a,k)end
end
end
if match==0 then
a[#a+1]={q={[z]=w.p},aj=e(),O=e(),J=0}end
end
end
for g,aR in X(a)do
a[g].J=z-M(a[g].q)a[g].O=x(r(g),u(a[g].aj,a[g].J))if(aR.J>=aO)and not(g==aS)then
ac(a,g)else
if r(g).f<=-1 then
a[g].q[M(a[g].q)].f=5
end
for n,C in P(A)do
if s(F(C,r(g)))<=Y then
ac(a,g)end
end
end
end
if a[1]then
l(30,a[1].O.i)l(31,a[1].O.h)l(32,a[1].O.f)else
l(30,0)l(31,0)l(32,0)end
if a[t]then
end
if a[t+1]then
end
t=t+2
if t>#a then
t=1
end
if A[E]then
end
E=E+1
if E>#A then
E=1
end
if at[B]then
end
B=B+1
if B>#at then
B=1
end
l(9,1)l(10,1)end
