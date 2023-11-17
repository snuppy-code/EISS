-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3451 (3785 with comment) chars
bn=""
bm="1"

af=ipairs
aD=tonumber
aH=string
az=tostring
ak=pairs
I=nil
ap=property
S=input
ad=table.remove
j,o,aI,aq,be,bg,bh=math,S,output,ap,screen,true,false
c,l,bc,bb=o.getNumber,aI.setNumber,o.getBool,aI.setBool
n,bi=aq.getNumber,aq.getBool
abs,cos,sin,floor,atan=j.abs,j.cos,j.sin,j.floor,j.atan
pi=j.pi
K=pi*2
function f(h,g,e)return{h=h or 0,g=g or 0,e=e or 0}end
function x(_,b)return f(_.h+b.h,_.g+b.g,_.e+b.e)end
function b_(_,b)return f(_.h*b.h,_.g*b.g,_.e*b.e)end
function w(_,C)return f(_.h*C,_.g*C,_.e*C)end
function aS(_)return w(_,-1)end
function D(_,b)return x(_,aS(b))end
function r(_)return j.sqrt(_.h*_.h+_.g*_.g+_.e*_.e)end
function aA(_,C)return w(_,1/C)end
function aW(_)return aA(_,r(_))end
function W(_,b)return _.h*b.h+_.g*b.g+_.e*b.e
end
function aQ(_,b)return f(_.g*b.e-_.e*b.g,_.e*b.h-_.h*b.e,_.h*b.g-_.g*b.h)end
function ar(aB,X,al)aU=aU or 1
return f(j.sin(aB)*j.cos(X)*al,j.cos(aB)*j.cos(X)*al,j.sin(X)*al)end
function aX(_,z,V,U)return f(W(z,_),W(V,_),W(U,_))end
function au(_,z,V,U)return x(x(w(z,_.h),w(V,_.g)),w(U,_.e))end
function aY(aK,b)if not _ then _={}_[b]={aa=0,Y=0}elseif not _[b]then _[b]={aa=0,Y=0}end;_[b].Y=aK-_[b].aa;_[b].aa=aK;return _[b].Y end
function bf(_,min,max)return j.max(min,j.min(_,max))end
function L(S)local O=I
for i,bd in ak(S)do
if O==I or i>O then
O=i
end
end
return O
end
function q(aw)return a[aw].p[L(a[aw].p)]end
ae=n("VL Strt Frq")aN=n("VL You Frq")aJ=n("VL End Frq")Q=ap.getText("VL User")m=ae
bl=n("ML Strt Frq")bk=n("ML End Frq")aj=n("Merge Dist")aV=n("Cull Time")aO=n("Min extrap dist delta")ba={}d={{},{}}a={}E={}ay={}aR,bj=0,0
t,B,y=0,0,0
A=0
function onTick()A=A+1
ai=f(c(1),c(2),c(3))ao,aC,ax=c(4),c(5),c(6)R,P,ag=cos(ao),cos(aC),cos(ax)aG,Z,ab=sin(ao),sin(aC),sin(ax)ac=f(P*ag,-Z,P*ab)T=f(aG*ab+R*Z*ag,R*P,-aG*ag+R*Z*ab)av=aQ(ac,T)aF=f(c(7),c(8),c(9))if r(aF)>0 then
local J={c(10),c(11)}G=bn
if J[1]>=1000000 and J[1]>=1000000 then
as=az(J[1]):sub(2,7)..az(J[2]):sub(2,7)for o=1,#as,3 do
G=G..aH.char(as:sub(o,o+3-1))end
else
G="XXXX"
end
E[G]=aF
end
E[Q]=ai
H=bn
for o=1,#Q do
H=H..aH.format("%03d",Q:byte(o))end
l(1,aD(bm..H:sub(1,6)))l(2,aD(bm..H:sub(7,12)))m=m==aJ and ae or m+1
if m==aN then
m=m==aJ and ae or m+1
end
l(3,m)if c(18)>0 then
d[1].F=ar(c(19)*K,c(20)*K,c(18))d[1].u=au(d[1].F,ac,T,av)d[1].s=x(d[1].u,ai)else
d[1].F=f()d[1].u=f()d[1].s=f()end
d[1].aM=c(31)if c(24)>0 then
d[2].F=ar(c(25)*K+pi,c(26)*K,c(24))d[2].u=au(d[2].F,ac,T,av)d[2].s=x(d[2].u,ai)else
d[2].F=f()d[2].u=f()d[2].s=f()end
d[2].aM=c(31)for i,v in af(d)do
if(r(v.u)>0)and not(v.aM>0)then
local match=0
for k,aZ in af(a)do
if match==0 then
if r(D(q(k),v.s))<=aj then
match=k
a[k].p[A]=v.s
a[k].N=0
am=I
ah=-1
for at,aL in ak(a[k].p)do
aT=r(D(aL,q(k)))if aT>=aO and at>ah then
am=aL
ah=at
end
end
if am~=I then
aE=L(a[k].p)-ah
if aE>0 then
a[k].an=aA(D(q(k),am),aE)end
else
a[k].an=f()end
end
else
if r(D(q(k),v.s))<=aj then
ad(a,k)end
end
end
if match==0 then
a[#a+1]={p={[A]=v.s},an=f(),M=f(),N=0}end
end
end
for i,aP in af(a)do
a[i].N=A-L(a[i].p)a[i].M=x(q(i),w(a[i].an,a[i].N))if(aP.N>=aV)and not(i==aR)then
ad(a,i)else
if q(i).e<=-1 then
a[i].p[L(a[i].p)].e=5
end
for o,z in ak(E)do
if r(D(z,q(i)))<=aj then
ad(a,i)end
end
end
end
if a[1]then
l(30,a[1].M.h)l(31,a[1].M.g)l(32,a[1].M.e)else
l(30,0)l(31,0)l(32,0)end
if a[t]then
end
if a[t+1]then
end
t=t+2
if t>#a then
t=1
end
if E[B]then
end
B=B+1
if B>#E then
B=1
end
if ay[y]then
end
y=y+1
if y>#ay then
y=1
end
l(9,1)l(10,1)end
