-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3137 (3471 with comment) chars
aZ="1"
aY=""

E=ipairs
au=tonumber
aq=string
al=tostring
ab=property
V=table.remove
j,p,ad,at,aP,aJ,aX=math,input,output,ab,screen,true,false
c,e,aL,aW=p.getNumber,ad.setNumber,p.getBool,ad.setBool
s,aI=at.getNumber,at.getBool
abs,cos,sin,floor,atan=j.abs,j.cos,j.sin,j.floor,j.atan
pi=j.pi
ac=pi*2
function i(f,g,d)return{f=f or 0,g=g or 0,d=d or 0}end
function D(_,a)return i(_.f+a.f,_.g+a.g,_.d+a.d)end
function aO(_,a)return i(_.f*a.f,_.g*a.g,_.d*a.d)end
function z(_,x)return i(_.f*x,_.g*x,_.d*x)end
function az(_)return z(_,-1)end
function M(_,a)return D(_,az(a))end
function u(_)return j.sqrt(_.f*_.f+_.g*_.g+_.d*_.d)end
function aw(_,x)return z(_,1/x)end
function aR(_)return aw(_,u(_))end
function S(_,a)return _.f*a.f+_.g*a.g+_.d*a.d
end
function aC(_,a)return i(_.g*a.d-_.d*a.g,_.d*a.f-_.f*a.d,_.f*a.g-_.g*a.f)end
function aF(aj,Q,y)local y=y or 1
return i(j.sin(aj)*j.cos(Q)*y,j.cos(aj)*j.cos(Q)*y,j.sin(Q)*y)end
function aM(_,v,T,L)return i(S(v,_),S(T,_),S(L,_))end
function av(_,v,T,L)return D(D(z(v,_.f),z(T,_.g)),z(L,_.d))end
function aS(Z,a)if not _ then _={}_[a]={X=0,P=0}elseif not _[a]then _[a]={X=0,P=0}end;_[a].P=Z-_[a].X;_[a].X=Z;return _[a].P end
function aN(_,min,max)return j.max(min,j.min(_,max))end
function af(aB,ay,an)if an>0 then
return D(av(aF(aB*ac,ay*ac,an),ap,ah,aE),aA)else
return i()end
end
Y=s("VL Strt Frq")aD=s("VL You Frq")aa=s("VL End Frq")ao=ab.getText("VL User")q=Y
aT=s("ML Strt Frq")aV=s("ML End Frq")I=s("Merge Dist")aG=s("Cull Time")aU={}m={}h={}t={}w={}U,aH=0,0
aK,o,n=0,0,0
function onTick()aA=i(c(1),c(3),c(2))ar,as,ag=c(c(4)),c(c(5)),c(c(6))N,W,K=cos(ar),cos(as),cos(ag)ai,O,J=sin(ar),sin(as),sin(ag)ap=i(W*K,-O,W*J)ah=i(ai*J+N*O*K,N*W,-ai*K+N*O*J)aE=aC(ap,ah)do
ak=i(c(7),c(8),c(9))if u(ak)>0 then
local C={c(10),c(11)}H=aY
if C[1]>=1000000 and C[1]>=1000000 then
ae=al(C[1]):sub(2,7)..al(C[2]):sub(2,7)for p=1,#ae,3 do
H=H..aq.char(ae:sub(p,p+3-1))end
else
H="XXXX"
end
t[H]=ak
end
F=aY
for p=1,#ao do
F=F..aq.format("%03d",ao:byte(p))end
e(1,au(aZ..F:sub(1,6)))e(2,au(aZ..F:sub(7,12)))q=q==aa and Y or q+1
if q==aD then
q=q==aa and Y or q+1
end
e(3,q)end
do
end
do
m[1]={}m[1].b=i(c(15),c(16),c(17))m[1].R=0
m[2]={}m[2].b=af(c(18),c(19),c(20))m[2].R=c(31)m[3]={}m[3].b=af(c(24),c(25),c(26))m[3].R=c(31)for r,l in E(m)do
if(u(l.b)>0)and not(l.R>0)then
local B=l.b
local match=0
for G,am in E(h)do
if not match==0 then
if u(M(am.b,B))<=I then
match=G
h[G]={b=B,ax=i(),A=0}end
else
if u(M(am.b,B))<=I and not(G==U)then
V(h,G)end
end
end
if match==0 then
h[#h+1]={b=B,ax=i(),A=0}end
end
end
for r,l in E(h)do
h[r].A=l.A+1
if(l.A>=aG)and not(r==U)then
V(h,r)elseif l.b.d<=-1 then
h[r].b.d=5
end
for p,v in pairs(aQ)do
if u(M(v,l.b))<=I then
V(h,r)end
end
end
end
if h[k]then
e(14,h[k].b.f)e(15,h[k].b.g)e(16,h[k].b.d)end
if h[k+1]then
e(17,h[k+1].b.f)e(18,h[k+1].b.g)e(19,h[k+1].b.d)end
e(26,k)e(27,k+1)k=k+2
if k>#h then
k=1
end
if t[o]then
e(20,t[o].b.f)e(21,t[o].b.g)e(22,t[o].b.d)end
e(28,o)o=o+1
if o>#t then
o=1
end
if w[n]then
e(23,w[n].b.f)e(24,w[n].b.g)e(25,w[n].b.d)end
e(29,n)n=n+1
if n>#w then
n=1
end
for r,l in E(h)do
if r==U then
e(1,l.b.f)e(2,l.b.g)e(3,l.b.d)end
end
end
