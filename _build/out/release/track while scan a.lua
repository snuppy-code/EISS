-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2740 (3074 with comment) chars
aV=""
aU="1"

A=ipairs
ak=tonumber
aa=string
Y=tostring
ah=property
J=table.remove
g,k,X,af,aF,aP,aM=math,input,output,ah,screen,true,false
b,p,aE,aT=k.getNumber,X.setNumber,k.getBool,X.setBool
o,aS=af.getNumber,af.getBool
abs,cos,sin,floor,atan=g.abs,g.cos,g.sin,g.floor,g.atan
pi=g.pi
ag=pi*2
function f(d,e,c)return{d=d or 0,e=e or 0,c=c or 0}end
function C(_,a)return f(_.d+a.d,_.e+a.e,_.c+a.c)end
function aN(_,a)return f(_.d*a.d,_.e*a.e,_.c*a.c)end
function u(_,r)return f(_.d*r,_.e*r,_.c*r)end
function ar(_)return u(_,-1)end
function H(_,a)return C(_,ar(a))end
function q(_)return g.sqrt(_.d*_.d+_.e*_.e+_.c*_.c)end
function az(_,r)return u(_,1/r)end
function aO(_)return az(_,q(_))end
function N(_,a)return _.d*a.d+_.e*a.e+_.c*a.c
end
function ax(_,a)return f(_.e*a.c-_.c*a.e,_.c*a.d-_.d*a.c,_.d*a.e-_.e*a.d)end
function au(ad,E,t)local t=t or 1
return f(g.sin(ad)*g.cos(E)*t,g.cos(ad)*g.cos(E)*t,g.sin(E)*t)end
function aQ(_,s,R,P)return f(N(s,_),N(R,_),N(P,_))end
function aA(_,s,R,P)return C(C(u(s,_.d),u(R,_.e)),u(P,_.c))end
function aG(ab,a)if not _ then _={}_[a]={M=0,F=0}elseif not _[a]then _[a]={M=0,F=0}end;_[a].F=ab-_[a].M;_[a].M=ab;return _[a].F end
function aR(_,min,max)return g.max(min,g.min(_,max))end
function Z(at,aC,aj)if aj>0 then
return C(aA(au(at*ag,aC*ag,aj),ao,ae,av),ay)else
return f()end
end
L=o("VL Strt Frq")as=o("VL You Frq")W=o("VL End Frq")U=ah.getText("VL User")m=L
aJ=o("ML Strt Frq")aL=o("ML End Frq")O=o("Merge Dist")aB=o("Cull Time")aD={}n={}j={}aq={}aI={}Q,aK=0,0
function onTick()ay=f(b(1),b(3),b(2))V,ap,ac=b(b(4)),b(b(5)),b(b(6))I,G,K=cos(V),cos(ap),cos(ac)am,T,S=sin(V),sin(ap),sin(ac)ao=f(G*K,-T,G*S)ae=f(am*S+I*T*K,I*G,-am*K+I*T*S)av=ax(ao,ae)do
ai=f(b(7),b(8),b(9))if q(ai)>0 then
local B={b(10),b(11)}z=aV
if B[1]>=1000000 and B[1]>=1000000 then
al=Y(B[1]):sub(2,7)..Y(B[2]):sub(2,7)for k=1,#al,3 do
z=z..aa.char(al:sub(k,k+3-1))end
else
z="XXXX"
end
aq[z]=ai
end
y=aV
for k=1,#U do
y=y..aa.format("%03d",U:byte(k))end
p(1,ak(aU..y:sub(1,6)))p(2,ak(aU..y:sub(7,12)))m=m==W and L or m+1
if m==as then
m=m==W and L or m+1
end
p(3,m)end
do
end
do
n[1].h=f(b(15),b(16),b(17))n[1].D=0
n[2].h=Z(b(18),b(19),b(20))n[2].D=b(31)n[3].h=Z(b(24),b(25),b(26))n[3].D=b(31)for l,i in A(n)do
if(q(i.h)>0)and not(i.D>0)then
local v=i.h
local match=0
for w,an in A(j)do
if not match==0 then
if q(H(an.h,v))<=O then
match=w
j[w]={h=v,aw=f(),x=0}end
else
if q(H(an.h,v))<=O and not(w==Q)then
J(j,w)end
end
end
if match==0 then
j[#j+1]={h=v,aw=f(),x=0}end
end
end
for l,i in A(j)do
j[l].x=i.x+1
if(i.x>=aB)and not(l==Q)then
J(j,l)elseif i.h.c<=-1 then
j[l].h.c=5
end
for k,s in pairs(aH)do
if q(H(s,i.h))<=O then
J(j,l)end
end
end
end
for l,i in A(j)do
if l==Q then
p(1,i.h.d)p(2,i.h.e)p(3,i.h.c)end
end
end