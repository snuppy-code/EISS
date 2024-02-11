-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>


aj=false
ay=true
K=ipairs
T=table.remove
n,q,aG,au=math,input,output,property
d,b,aW,aX=q.getNumber,aG.setNumber,q.getBool,aG.setBool
z,b_=au.getNumber,au.getBool
cos,sin=n.cos,n.sin
pi=n.pi
E=pi*2
function f(h,i,g)return{h=h or 0,i=i or 0,g=g or 0}end
function u(c,l)return f(c.h+l.h,c.i+l.i,c.g+l.g)end
function P(c,Y)return f(c.h*Y,c.i*Y,c.g*Y)end
function aP(c)return P(c,-1)end
function C(c,l)return u(c,aP(l))end
function y(c)return n.sqrt(c.h*c.h+c.i*c.i+c.g*c.g)end
function U(c,l)return c.h*l.h+c.i*l.i+c.g*l.g
end
function aU(c,l)return f(c.i*l.g-c.g*l.i,c.g*l.h-c.h*l.g,c.h*l.i-c.i*l.h)end
function af(at,W,Z)aM=aM or 1
return f(n.sin(at)*n.cos(W)*Z,n.cos(at)*n.cos(W)*Z,n.sin(W)*Z)end
function aO(c,N,ab,ao)return f(U(N,c),U(ab,c),U(ao,c))end
function ah(c,N,ab,ao)return u(u(P(N,c.h),P(ab,c.i)),P(ao,c.g))end
ag=z("Max friendlies")aw=z("User number")av=z("Frequency seed")B=z("Encryption seed")aN,aK=1871759,6393518
n.randomseed(av)aL=n.random(aN,aK)x={}n.randomseed(av)for q=1,ag do
an=n.random(-605791,605791)for aV,ak in K(x)do
while ak==an do
an=n.random(-605791,605791)end
end
x[q]=an
end
for k in K(x)do
x[k]=x[k]+aL
end
r=1
I=1
aJ=719700
O=7
s={}as=8
S={}aY={}a={}ax=z("Merge Dist")aR=z("Cull Time")e={}for q=1,14 do
e[q]={}end
function aB(ad)return f(ad.i/(3.57*B),ad.h/(3.81*B),ad.g/(4.19*B))end
function aC(V)return f(V.i*(3.81*B),V.h*(3.57*B),V.g*(4.19*B))end
am=0
j=0
o,D=0,0
function onTick()am=am+1
v=f(d(1),d(2),d(3))aF=d(27)==1
if aF and not aT and(#a>0)then
if a[j%(#a)+1]._.g>0 then
j=j%(#a)+1
end
end
aT=aF
aQ=d(28)==1
aH,aI,aD=d(4),d(5),d(6)ap,ar,ae=cos(aH),cos(aI),cos(aD)az,aq,ai=sin(aH),sin(aI),sin(aD)L=f(ar*ae,-aq,ar*ai)M=f(az*ai+ap*aq*ae,ap*ar,-az*ae+ap*aq*ai)R=aU(L,M)Q=am%3>0
if Q then
r=(r==ag)and 1 or r+1
r=(r==aw)and((r==ag)and 1 or r+1)or r
aE=x[r]else
I=(I==9)and 1 or I+1
aE=aJ+I
end
for q=as,2,-1 do
s[q]=s[q-1]end
if Q then
s[1]={aA=Q,J=r}else
s[1]={aA=Q,J=I}end
if#s==as then
if s[O].aA then
S[s[O].J]={_=aC(f(d(7),d(8),d(9))),al=aC(f(d(21),d(22),d(23)))}else
e[4+s[O].J]._=f(d(10),d(11),0)e[4+s[O].J].F=0
e[4+s[O].J].aS=ay
end
end
b(3,aE)b(29,x[aw])X=aB(v)b(4,X.h)b(5,X.i)b(6,X.g)if d(18)>0 then
e[1].t=af(d(19)*E,d(20)*E,d(18))e[1].p=ah(e[1].t,L,M,R)e[1]._=u(e[1].p,v)else
e[1]={t=f(),p=f(),_=f()}end
e[1].F=d(30)if d(12)>0 then
e[2].t=af(d(13)*E,d(14)*E,d(12))e[2].p=ah(e[2].t,L,M,R)e[2]._=u(e[2].p,v)else
e[2]={t=f(),p=f(),_=f()}end
e[2].F=d(31)if d(24)>0 then
e[3].t=af(d(25)*E+pi,d(26)*E,d(24))e[3].p=ah(e[3].t,L,M,R)e[3]._=u(e[3].p,v)else
e[3]={t=f(),p=f(),_=f()}end
e[3].F=d(32)e[4]._=f(d(15),d(16),d(17))if y(e[4]._)>0 then
e[4].p=C(v,e[4]._)e[4].t=aO(e[4].p,L,M,R)else
e[4]={t=f(),p=f(),_=f()}end
e[4].F=0
for k,m in K(e)do
if m._ and m.F and(y(m._)>0)then
if m.aS then
m._=u(m._,f(0,0,-9999))m.p=C(v,m._)end
if(y(m.p)>0)and not(m.F>0)then
local ac=0
for A,aZ in K(a)do
if ac==0 then
if y(C(a[A]._,m._))<=ax then
ac=A
a[A]._=m._
a[A].H=0
end
else
if y(C(a[A]._,m._))<=ax then
T(a,A)end
end
end
if ac==0 then
a[#a+1]={_=m._,H=0}end
end
end
end
for k,ak in K(a)do
G=ay
a[k].H=a[k].H+1
if(ak.H>=aR)and not(k==j)then
if G then
T(a,k)G=aj
if k<j then
j=j-1
end
end
else
if a[k]._.g<=-1 and a[k]._.g>=-7999
then
a[k]._.g=5
end
if G then
if y(C(v,a[k]._))<=50 then
T(a,k)G=aj
if k<j then
j=j-1
end
end
end
for q,N in pairs(S)do
if G then
if y(C(N._,a[k]._))<=300 then
T(a,k)G=aj
if k<j then
j=j-1
end
end
end
end
end
end
if a[o]then
b(14,a[o]._.h)b(15,a[o]._.i)b(16,a[o]._.g)end
if a[o+1]then
b(17,a[o+1]._.h)b(18,a[o+1]._.i)b(19,a[o+1]._.g)end
b(26,o)o=o+2
if o>#a then
o=1
end
w=S[D]if w then
b(20,w._.h)b(21,w._.i)b(22,w._.g)b(23,w.al.h)b(24,w.al.i)b(25,w.al.g)end
b(28,D)D=D+1
if D>#S then
D=1
end
if aQ then
b(30,0)b(31,0)b(32,0)else
if a[j]then
b(30,a[j]._.h)b(31,a[j]._.i)b(32,a[j]._.g)aa=aB(a[j]._)b(2,aa.h)b(12,aa.i)b(13,aa.g)b(11,a[j].H)else
b(30,0)b(31,0)b(32,0)b(11,0)end
end
b(7,0)b(8,0)b(9,1)b(10,1)end
