-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3326 (3660 with comment) chars
b_="1"
aZ=""

F=ipairs
ax=tonumber
ar=string
an=tostring
at=property
U=table.remove
A=debug.log
k,r,al,au,aM,aP,aL=math,input,output,at,screen,true,false
b,e,aT,aW=r.getNumber,al.setNumber,r.getBool,al.setBool
s,aU=au.getNumber,au.getBool
abs,cos,sin,floor,atan=k.abs,k.cos,k.sin,k.floor,k.atan
pi=k.pi
v=pi*2
function i(f,g,c)return{f=f or 0,g=g or 0,c=c or 0}end
function K(_,a)return i(_.f+a.f,_.g+a.g,_.c+a.c)end
function aR(_,a)return i(_.f*a.f,_.g*a.g,_.c*a.c)end
function B(_,C)return i(_.f*C,_.g*C,_.c*C)end
function aE(_)return B(_,-1)end
function J(_,a)return K(_,aE(a))end
function t(_)return k.sqrt(_.f*_.f+_.g*_.g+_.c*_.c)end
function aH(_,C)return B(_,1/C)end
function aY(_)return aH(_,t(_))end
function Y(_,a)return _.f*a.f+_.g*a.g+_.c*a.c
end
function aB(_,a)return i(_.g*a.c-_.c*a.g,_.c*a.f-_.f*a.c,_.f*a.g-_.g*a.f)end
function N(az,Q,y)local y=y or 1
return i(k.sin(az)*k.cos(Q)*y,k.cos(az)*k.cos(Q)*y,k.sin(Q)*y)end
function aK(_,z,aa,R)return i(Y(z,_),Y(aa,_),Y(R,_))end
function ac(_,z,aa,R)return K(K(B(z,_.f),B(aa,_.g)),B(R,_.c))end
function aI(ak,a)if not _ then _={}_[a]={af=0,W=0}elseif not _[a]then _[a]={af=0,W=0}end;_[a].W=ak-_[a].af;_[a].af=ak;return _[a].W end
function aS(_,min,max)return k.max(min,k.min(_,max))end
function aN(aj,aG,aA)if aj>0 then
return K(ac(N(aG*v,aA*v,aj),I,E,Z),as)else
return i()end
end
X=s("VL Strt Frq")aD=s("VL You Frq")am=s("VL End Frq")ao=at.getText("VL User")q=X
aV=s("ML Strt Frq")aQ=s("ML End Frq")T=s("Merge Dist")aC=s("Cull Time")aX={}m={}h={}u={}x={}V,aJ=0,0
j,n,o=0,0,0
function onTick()A("ontick called")as=i(b(1),b(2),b(3))ag,ai,aq=b(b(4)),b(b(5)),b(b(6))O,S,P=cos(ag),cos(ai),cos(aq)ap,ab,ad=sin(ag),sin(ai),sin(aq)I=i(S*P,-ab,S*ad)E=i(ap*ad+O*ab*P,O*S,-ap*P+O*ab*ad)Z=aB(I,E)av=i(b(7),b(8),b(9))if t(av)>0 then
local D={b(10),b(11)}H=aZ
if D[1]>=1000000 and D[1]>=1000000 then
aw=an(D[1]):sub(2,7)..an(D[2]):sub(2,7)for r=1,#aw,3 do
H=H..ar.char(aw:sub(r,r+3-1))end
else
H="XXXX"
end
u[H]=av
end
L=aZ
for r=1,#ao do
L=L..ar.format("%03d",ao:byte(r))end
e(1,ax(b_..L:sub(1,6)))e(2,ax(b_..L:sub(7,12)))q=q==am and X or q+1
if q==aD then
q=q==am and X or q+1
end
e(3,q)A("pos,rot,viclink done")m[1]={}m[1].ay=J(i(b(15),b(16),b(17)),as)m[1].ae=0
m[2]={}m[2].ay=ac(N(b(19)*v,b(20)*v,b(18)),I,E,Z)m[2].ae=b(31)m[3]={}m[2].ay=ac(N(b(25)*v,b(26)*v,b(24)),I,E,Z)m[3].ae=b(31)for p,l in F(m)do
A("for "..p..","..type(l).." in ipairs(rawradartargets) do")if(t(l.d)>0)and not(l.ae>0)then
local G=l.d
A("valid tgt")local match=0
for w,ah in F(h)do
A("filindex: "..w.." match: "..match)if not match==0 then
if t(J(ah.d,G))<=T then
match=w
h[w]={d=G,aF=i(),M=0}end
else
if t(J(ah.d,G))<=T and not(w==V)then
U(h,w)end
end
end
if match==0 then
h[#h+1]={d=G,aF=i(),M=0}end
end
end
for p,l in F(h)do
h[p].M=l.M+1
if(l.M>=aC)and not(p==V)then
U(h,p)elseif l.d.c<=-1 then
h[p].d.c=5
end
for r,z in pairs(aO)do
if t(J(z,l.d))<=T then
U(h,p)end
end
end
if h[j]then
e(14,h[j].d.f)e(15,h[j].d.g)e(16,h[j].d.c)end
if h[j+1]then
e(17,h[j+1].d.f)e(18,h[j+1].d.g)e(19,h[j+1].d.c)end
e(26,j)e(27,j+1)j=j+2
if j>#h then
j=1
end
if u[n]then
e(20,u[n].d.f)e(21,u[n].d.g)e(22,u[n].d.c)end
e(28,n)n=n+1
if n>#u then
n=1
end
if x[o]then
e(23,x[o].d.f)e(24,x[o].d.g)e(25,x[o].d.c)end
e(29,o)o=o+1
if o>#x then
o=1
end
for p,l in F(h)do
if p==V then
e(1,l.d.f)e(2,l.d.g)e(3,l.d.c)end
end
end
