-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2761 (3095 with comment) chars
aV=""
aU="1"

A=ipairs
an=tonumber
U=string
ac=tostring
ak=property
H=table.remove
g,n,al,ap,aK,aD,aN=math,input,output,ak,screen,true,false
b,p,aT,aE=n.getNumber,al.setNumber,n.getBool,al.setBool
o,aQ=ap.getNumber,ap.getBool
abs,cos,sin,floor,atan=g.abs,g.cos,g.sin,g.floor,g.atan
pi=g.pi
aa=pi*2
function f(e,d,c)return{e=e or 0,d=d or 0,c=c or 0}end
function v(_,a)return f(_.e+a.e,_.d+a.d,_.c+a.c)end
function aI(_,a)return f(_.e*a.e,_.d*a.d,_.c*a.c)end
function r(_,t)return f(_.e*t,_.d*t,_.c*t)end
function aq(_)return r(_,-1)end
function S(_,a)return v(_,aq(a))end
function q(_)return g.sqrt(_.e*_.e+_.d*_.d+_.c*_.c)end
function aB(_,t)return r(_,1/t)end
function aO(_)return aB(_,q(_))end
function E(_,a)return _.e*a.e+_.d*a.d+_.c*a.c
end
function at(_,a)return f(_.d*a.c-_.c*a.d,_.c*a.e-_.e*a.c,_.e*a.d-_.d*a.e)end
function ax(V,I,u)local u=u or 1
return f(g.sin(V)*g.cos(I)*u,g.cos(V)*g.cos(I)*u,g.sin(I)*u)end
function aP(_,s,P,R)return f(E(s,_),E(P,_),E(R,_))end
function au(_,s,P,R)return v(v(r(s,_.e),r(P,_.d)),r(R,_.c))end
function aF(X,a)if not _ then _={}_[a]={T=0,F=0}elseif not _[a]then _[a]={T=0,F=0}end;_[a].F=X-_[a].T;_[a].T=X;return _[a].F end
function aL(_,min,max)return g.max(min,g.min(_,max))end
function ao(as,av,W)if W>0 then
return v(au(ax(as*aa,av*aa,W),Y,ai,az),ay)else
return f()end
end
O=o("VL Strt Frq")ar=o("VL You Frq")aj=o("VL End Frq")ag=ak.getText("VL User")l=O
aJ=o("ML Strt Frq")aG=o("ML End Frq")K=o("Merge Dist")aw=o("Cull Time")aR={}k={}j={}aA={}aS={}Q,aM=0,0
function onTick()ay=f(b(1),b(3),b(2))ah,ad,ae=b(b(4)),b(b(5)),b(b(6))D,M,L=cos(ah),cos(ad),cos(ae)af,J,N=sin(ah),sin(ad),sin(ae)Y=f(M*L,-J,M*N)ai=f(af*N+D*J*L,D*M,-af*L+D*J*N)az=at(Y,ai)do
am=f(b(7),b(8),b(9))if q(am)>0 then
local y={b(10),b(11)}C=aV
if y[1]>=1000000 and y[1]>=1000000 then
ab=ac(y[1]):sub(2,7)..ac(y[2]):sub(2,7)for n=1,#ab,3 do
C=C..U.char(ab:sub(n,n+3-1))end
else
C="XXXX"
end
aA[C]=am
end
x=aV
for n=1,#ag do
x=x..U.format("%03d",ag:byte(n))end
p(1,an(aU..x:sub(1,6)))p(2,an(aU..x:sub(7,12)))l=l==aj and O or l+1
if l==ar then
l=l==aj and O or l+1
end
p(3,l)end
do
end
do
k[1]={}k[1].h=f(b(15),b(16),b(17))k[1].G=0
k[2]={}k[2].h=ao(b(18),b(19),b(20))k[2].G=b(31)k[3]={}k[3].h=ao(b(24),b(25),b(26))k[3].G=b(31)for m,i in A(k)do
if(q(i.h)>0)and not(i.G>0)then
local z=i.h
local match=0
for w,Z in A(j)do
if not match==0 then
if q(S(Z.h,z))<=K then
match=w
j[w]={h=z,aC=f(),B=0}end
else
if q(S(Z.h,z))<=K and not(w==Q)then
H(j,w)end
end
end
if match==0 then
j[#j+1]={h=z,aC=f(),B=0}end
end
end
for m,i in A(j)do
j[m].B=i.B+1
if(i.B>=aw)and not(m==Q)then
H(j,m)elseif i.h.c<=-1 then
j[m].h.c=5
end
for n,s in pairs(aH)do
if q(S(s,i.h))<=K then
H(j,m)end
end
end
end
for m,i in A(j)do
if m==Q then
p(1,i.h.e)p(2,i.h.d)p(3,i.h.c)end
end
end
