-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3619 (3953 with comment) chars
bn="1"
bm=""

Z=ipairs
ay=tonumber
aK=string
at=tostring
am=pairs
N=nil
aE=property
ag=input
Y=table.remove
k,p,ap,aL,aZ,bb,bd=math,ag,output,aE,screen,true,false
d,c,bj,bg=p.getNumber,ap.setNumber,p.getBool,ap.setBool
q,bh=aL.getNumber,aL.getBool
abs,cos,sin,floor,atan=k.abs,k.cos,k.sin,k.floor,k.atan
pi=k.pi
L=pi*2
function i(f,g,e)return{f=f or 0,g=g or 0,e=e or 0}end
function w(_,b)return i(_.f+b.f,_.g+b.g,_.e+b.e)end
function aW(_,b)return i(_.f*b.f,_.g*b.g,_.e*b.e)end
function x(_,B)return i(_.f*B,_.g*B,_.e*B)end
function aQ(_)return x(_,-1)end
function F(_,b)return w(_,aQ(b))end
function t(_)return k.sqrt(_.f*_.f+_.g*_.g+_.e*_.e)end
function aG(_,B)return x(_,1/B)end
function bl(_)return aG(_,t(_))end
function an(_,b)return _.f*b.f+_.g*b.g+_.e*b.e
end
function aP(_,b)return i(_.g*b.e-_.e*b.g,_.e*b.f-_.f*b.e,_.f*b.g-_.g*b.f)end
function aq(ax,af,ab)aR=aR or 1
return i(k.sin(ax)*k.cos(af)*ab,k.cos(ax)*k.cos(af)*ab,k.sin(af)*ab)end
function bk(_,E,ah,ak)return i(an(E,_),an(ah,_),an(ak,_))end
function ao(_,E,ah,ak)return w(w(x(E,_.f),x(ah,_.g)),x(ak,_.e))end
function ba(aC,b)if not _ then _={}_[b]={U=0,ad=0}elseif not _[b]then _[b]={U=0,ad=0}end;_[b].ad=aC-_[b].U;_[b].U=aC;return _[b].ad end
function bc(_,min,max)return k.max(min,k.min(_,max))end
function J(ag)local K=N
for j,be in am(ag)do
if K==N or j>K then
K=j
end
end
return K
end
function s(aJ)return a[aJ].o[J(a[aJ].o)]end
T=q("VL Strt Frq")aS=q("VL You Frq")ar=q("VL End Frq")V=aE.getText("VL User")n=T
bf=q("ML Strt Frq")aX=q("ML End Frq")X=q("Merge Dist")aU=q("Cull Time")aO=q("Min extrap dist delta")bi={}h={{},{}}a={}D={}av={}aT,aY=0,0
v,C,G=0,0,0
z=0
function onTick()z=z+1
ai=i(d(1),d(2),d(3))aF,az,aH=d(4),d(5),d(6)al,Q,ae=cos(aF),cos(az),cos(aH)aB,P,S=sin(aF),sin(az),sin(aH)R=i(Q*ae,-P,Q*S)aa=i(aB*S+al*P*ae,al*Q,-aB*ae+al*P*S)aA=aP(R,aa)aD=i(d(7),d(8),d(9))if t(aD)>0 then
local H={d(10),d(11)}I=bm
if H[1]>=1000000 and H[1]>=1000000 then
as=at(H[1]):sub(2,7)..at(H[2]):sub(2,7)for p=1,#as,3 do
I=I..aK.char(as:sub(p,p+3-1))end
else
I="XXXX"
end
D[I]=aD
end
D[V]=ai
M=bm
for p=1,#V do
M=M..aK.format("%03d",V:byte(p))end
c(1,ay(bn..M:sub(1,6)))c(2,ay(bn..M:sub(7,12)))n=n==ar and T or n+1
if n==aS then
n=n==ar and T or n+1
end
c(3,n)if d(18)>0 then
h[1].A=aq(d(19)*L,d(20)*L,d(18))h[1].y=ao(h[1].A,R,aa,aA)h[1].r=w(h[1].y,ai)else
h[1].A=i()h[1].y=i()h[1].r=i()end
h[1].aM=d(31)if d(24)>0 then
h[2].A=aq(d(25)*L+pi,d(26)*L,d(24))h[2].y=ao(h[2].A,R,aa,aA)h[2].r=w(h[2].y,ai)else
h[2].A=i()h[2].y=i()h[2].r=i()end
h[2].aM=d(31)for j,u in Z(h)do
if(t(u.y)>0)and not(u.aM>0)then
local match=0
for l,b_ in Z(a)do
if match==0 then
if t(F(s(l),u.r))<=X then
match=l
a[l].o[z]=u.r
a[l].O=0
aj=N
ac=-1
for aw,au in am(a[l].o)do
aN=t(F(au,s(l)))if aN>=aO and aw>ac then
aj=au
ac=aw
end
end
if aj~=N then
aI=J(a[l].o)-ac
if aI>0 then
a[l].W=aG(F(s(l),aj),aI)end
else
a[l].W=i()end
end
else
if t(F(s(l),u.r))<=X then
Y(a,l)end
end
end
if match==0 then
a[#a+1]={o={[z]=u.r},W=i(),m=i(),O=0}end
end
end
for j,aV in Z(a)do
a[j].O=z-J(a[j].o)a[j].m=w(s(j),x(a[j].W,a[j].O))if(aV.O>=aU)and not(j==aT)then
Y(a,j)else
if s(j).e<=-1 then
a[j].o[J(a[j].o)].e=5
end
for p,E in am(D)do
if t(F(E,s(j)))<=X then
Y(a,j)end
end
end
end
if a[1]then
c(24,a[1].m.f)c(25,a[1].m.g)c(26,a[1].m.e)else
c(24,0)c(25,0)c(26,0)end
if a[2]then
c(27,a[2].m.f)c(28,a[2].m.g)c(29,a[2].m.e)else
c(27,0)c(28,0)c(29,0)end
if a[3]then
c(30,a[3].m.f)c(31,a[3].m.g)c(32,a[3].m.e)else
c(30,0)c(31,0)c(32,0)end
if a[v]then
end
if a[v+1]then
end
v=v+2
if v>#a then
v=1
end
if D[C]then
end
C=C+1
if C>#D then
C=1
end
if av[G]then
end
G=G+1
if G>#av then
G=1
end
c(9,1)c(10,1)end
