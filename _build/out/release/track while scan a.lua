-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3327 (3661 with comment) chars
b_="1"
aZ=""

G=ipairs
al=tonumber
ax=string
ap=tostring
an=property
N=table.remove
C=debug.log
i,r,ay,au,aM,aT,aJ=math,input,output,an,screen,true,false
b,e,aW,aY=r.getNumber,ay.setNumber,r.getBool,ay.setBool
s,aP=au.getNumber,au.getBool
abs,cos,sin,floor,atan=i.abs,i.cos,i.sin,i.floor,i.atan
pi=i.pi
u=pi*2
function j(g,f,c)return{g=g or 0,f=f or 0,c=c or 0}end
function K(_,a)return j(_.g+a.g,_.f+a.f,_.c+a.c)end
function aK(_,a)return j(_.g*a.g,_.f*a.f,_.c*a.c)end
function z(_,w)return j(_.g*w,_.f*w,_.c*w)end
function aD(_)return z(_,-1)end
function J(_,a)return K(_,aD(a))end
function v(_)return i.sqrt(_.g*_.g+_.f*_.f+_.c*_.c)end
function aH(_,w)return z(_,1/w)end
function aR(_)return aH(_,v(_))end
function af(_,a)return _.g*a.g+_.f*a.f+_.c*a.c
end
function aF(_,a)return j(_.f*a.c-_.c*a.f,_.c*a.g-_.g*a.c,_.g*a.f-_.f*a.g)end
function aa(az,S,B)local B=B or 1
return j(i.sin(az)*i.cos(S)*B,i.cos(az)*i.cos(S)*B,i.sin(S)*B)end
function aN(_,A,P,T)return j(af(A,_),af(P,_),af(T,_))end
function ac(_,A,P,T)return K(K(z(A,_.g),z(P,_.f)),z(T,_.c))end
function aQ(at,a)if not _ then _={}_[a]={Q=0,W=0}elseif not _[a]then _[a]={Q=0,W=0}end;_[a].W=at-_[a].Q;_[a].Q=at;return _[a].W end
function aI(_,min,max)return i.max(min,i.min(_,max))end
function aL(ai,aE,aB)if ai>0 then
return K(ac(aa(aE*u,aB*u,ai),F,D,V),aw)else
return j()end
end
U=s("VL Strt Frq")aG=s("VL You Frq")ao=s("VL End Frq")ak=an.getText("VL User")q=U
aV=s("ML Strt Frq")aU=s("ML End Frq")R=s("Merge Dist")aC=s("Cull Time")aS={}m={}h={}t={}x={}Y,aO=0,0
k,n,o=0,0,0
function onTick()C("ontick called")aw=j(b(1),b(2),b(3))as,ar,av=b(b(4)),b(b(5)),b(b(6))ad,X,ag=cos(as),cos(ar),cos(av)aj,ab,Z=sin(as),sin(ar),sin(av)F=j(X*ag,-ab,X*Z)D=j(aj*Z+ad*ab*ag,ad*X,-aj*ag+ad*ab*Z)V=aF(F,D)am=j(b(7),b(8),b(9))if v(am)>0 then
local L={b(10),b(11)}H=aZ
if L[1]>=1000000 and L[1]>=1000000 then
aq=ap(L[1]):sub(2,7)..ap(L[2]):sub(2,7)for r=1,#aq,3 do
H=H..ax.char(aq:sub(r,r+3-1))end
else
H="XXXX"
end
t[H]=am
end
E=aZ
for r=1,#ak do
E=E..ax.format("%03d",ak:byte(r))end
e(1,al(b_..E:sub(1,6)))e(2,al(b_..E:sub(7,12)))q=q==ao and U or q+1
if q==aG then
q=q==ao and U or q+1
end
e(3,q)C("pos,rot,viclink done")m[1]={}m[1].O=J(j(b(15),b(16),b(17)),aw)m[1].ae=0
m[2]={}m[2].O=ac(aa(b(19)*u,b(20)*u,b(18)),F,D,V)m[2].ae=b(31)m[3]={}m[2].O=ac(aa(b(25)*u,b(26)*u,b(24)),F,D,V)m[3].ae=b(31)for p,l in G(m)do
C("for "..p..","..type(l).." in ipairs(rawradartargets) do")if(v(l.O)>0)and not(l.ae>0)then
local M=l.d
C("valid tgt")local match=0
for y,ah in G(h)do
C("filindex: "..y.." match: "..match)if not match==0 then
if v(J(ah.d,M))<=R then
match=y
h[y]={d=M,aA=j(),I=0}end
else
if v(J(ah.d,M))<=R and not(y==Y)then
N(h,y)end
end
end
if match==0 then
h[#h+1]={d=M,aA=j(),I=0}end
end
end
for p,l in G(h)do
h[p].I=l.I+1
if(l.I>=aC)and not(p==Y)then
N(h,p)elseif l.d.c<=-1 then
h[p].d.c=5
end
for r,A in pairs(aX)do
if v(J(A,l.d))<=R then
N(h,p)end
end
end
if h[k]then
e(14,h[k].d.g)e(15,h[k].d.f)e(16,h[k].d.c)end
if h[k+1]then
e(17,h[k+1].d.g)e(18,h[k+1].d.f)e(19,h[k+1].d.c)end
e(26,k)e(27,k+1)k=k+2
if k>#h then
k=1
end
if t[n]then
e(20,t[n].d.g)e(21,t[n].d.f)e(22,t[n].d.c)end
e(28,n)n=n+1
if n>#t then
n=1
end
if x[o]then
e(23,x[o].d.g)e(24,x[o].d.f)e(25,x[o].d.c)end
e(29,o)o=o+1
if o>#x then
o=1
end
for p,l in G(h)do
if p==Y then
e(1,l.d.g)e(2,l.d.f)e(3,l.d.c)end
end
end
