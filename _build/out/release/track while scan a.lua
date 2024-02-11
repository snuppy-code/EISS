-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>


ak=false
aB=true
M=ipairs
P=table.remove
n,r,aD,ax=math,input,output,property
d,b,aX,aY=r.getNumber,aD.setNumber,r.getBool,aD.setBool
B,aW=ax.getNumber,ax.getBool
cos,sin=n.cos,n.sin
pi=n.pi
A=pi*2
function f(h,i,g)return{h=h or 0,i=i or 0,g=g or 0}end
function v(c,l)return f(c.h+l.h,c.i+l.i,c.g+l.g)end
function Q(c,U)return f(c.h*U,c.i*U,c.g*U)end
function aM(c)return Q(c,-1)end
function z(c,l)return v(c,aM(l))end
function w(c)return n.sqrt(c.h*c.h+c.i*c.i+c.g*c.g)end
function am(c,l)return c.h*l.h+c.i*l.i+c.g*l.g
end
function aK(c,l)return f(c.i*l.g-c.g*l.i,c.g*l.h-c.h*l.g,c.h*l.i-c.i*l.h)end
function aq(aH,W,ab)aS=aS or 1
return f(n.sin(aH)*n.cos(W)*ab,n.cos(aH)*n.cos(W)*ab,n.sin(W)*ab)end
function aO(c,L,ap,ar)return f(am(L,c),am(ap,c),am(ar,c))end
function an(c,L,ap,ar)return v(v(Q(L,c.h),Q(ap,c.i)),Q(ar,c.g))end
aa=B("Max friendlies")at=B("User number")aA=B("Frequency seed")D=B("Encryption seed")aP,aJ=1871759,6393518
n.randomseed(aA)aQ=n.random(aP,aJ)x={}n.randomseed(aA)for r=1,aa do
Y=n.random(-605791,605791)for aV,V in M(x)do
while V==Y do
Y=n.random(-605791,605791)end
end
x[r]=Y
end
for k in M(x)do
x[k]=x[k]+aQ
end
s=1
N=1
aN=719700
H=7
q={}av=8
S={}aZ={}a={}aC=B("Merge Dist")aR=B("Cull Time")e={}for r=1,14 do
e[r]={}end
function aI(ag)return f(ag.i/(3.57*D),ag.h/(3.81*D),ag.g/(4.19*D))end
function aG(Z)return f(Z.i*(3.81*D),Z.h*(3.57*D),Z.g*(4.19*D))end
X=0
j=0
o,F=0,0
function onTick()X=X+1
y=f(d(1),d(2),d(3))aw=d(27)==1
if aw and not aL and(#a>0)then
if a[j%(#a)+1]._.g>0 then
j=j%(#a)+1
end
end
aL=aw
aU=d(28)==1
ay,az,aE=d(4),d(5),d(6)ah,ac,al=cos(ay),cos(az),cos(aE)as,aj,af=sin(ay),sin(az),sin(aE)K=f(ac*al,-aj,ac*af)I=f(as*af+ah*aj*al,ah*ac,-as*al+ah*aj*af)R=aK(K,I)T=X%3>0
if T then
s=(s==aa)and 1 or s+1
s=(s==at)and((s==aa)and 1 or s+1)or s
aF=x[s]else
N=(N==9)and 1 or N+1
aF=aN+N
end
for r=av,2,-1 do
q[r]=q[r-1]end
if T then
q[1]={au=T,O=s}else
q[1]={au=T,O=N}end
if#q==av then
if q[H].au then
S[q[H].O]={_=aG(f(d(7),d(8),d(9))),ad=aG(f(d(21),d(22),d(23)))}else
e[4+q[H].O]._=f(d(10),d(11),0)e[4+q[H].O].E=0
e[4+q[H].O].aT=aB
end
end
b(3,aF)b(29,x[at])ai=aI(y)b(4,ai.h)b(5,ai.i)b(6,ai.g)if d(18)>0 then
e[1].t=aq(d(19)*A,d(20)*A,d(18))e[1].p=an(e[1].t,K,I,R)e[1]._=v(e[1].p,y)else
e[1]={t=f(),p=f(),_=f()}end
e[1].E=d(30)if d(12)>0 then
e[2].t=aq(d(13)*A,d(14)*A,d(12))e[2].p=an(e[2].t,K,I,R)e[2]._=v(e[2].p,y)else
e[2]={t=f(),p=f(),_=f()}end
e[2].E=d(31)if d(24)>0 then
e[3].t=aq(d(25)*A+pi,d(26)*A,d(24))e[3].p=an(e[3].t,K,I,R)e[3]._=v(e[3].p,y)else
e[3]={t=f(),p=f(),_=f()}end
e[3].E=d(32)e[4]._=f(d(15),d(16),d(17))if w(e[4]._)>0 then
e[4].p=z(y,e[4]._)e[4].t=aO(e[4].p,K,I,R)else
e[4]={t=f(),p=f(),_=f()}end
e[4].E=0
for k,m in M(e)do
if m._ and m.E and(w(m._)>0)then
if m.aT then
m._=v(m._,f(0,0,-9999))m.p=z(y,m._)end
if(w(m.p)>0)and not(m.E>0)then
local ae=0
for C,b_ in M(a)do
if ae==0 then
if w(z(a[C]._,m._))<=aC then
ae=C
a[C]._=m._
a[C].J=0
end
else
if w(z(a[C]._,m._))<=aC then
P(a,C)end
end
end
if ae==0 then
a[#a+1]={_=m._,J=0}end
end
end
end
for k,V in M(a)do
G=aB
a[k].J=a[k].J+1
if(V.J>=aR)and not(k==j)then
if G then
P(a,k)G=ak
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
if w(z(y,a[k]._))<=50 then
P(a,k)G=ak
if k<j then
j=j-1
end
end
end
for r,L in pairs(S)do
if G then
if w(z(L._,a[k]._))<=300 then
P(a,k)G=ak
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
u=S[F]if u then
b(20,u._.h)b(21,u._.i)b(22,u._.g)b(23,u.ad.h)b(24,u.ad.i)b(25,u.ad.g)end
b(28,F)F=F+1
if F>#S then
F=1
end
if aU then
b(30,0)b(31,0)b(32,0)else
if a[j]then
b(30,a[j]._.h)b(31,a[j]._.i)b(32,a[j]._.g)ao=aI(a[j]._)b(2,ao.h)b(12,ao.i)b(13,ao.g)b(11,a[j].J)else
b(30,0)b(31,0)b(32,0)b(11,0)end
end
b(7,0)b(8,0)b(9,1)b(10,1)end
