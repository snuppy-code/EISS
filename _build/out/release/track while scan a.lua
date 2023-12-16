-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>


am=false
ay=true
L=ipairs
T=table.remove
n,t,aI,as=math,input,output,property
e,c,aW,aV=t.getNumber,aI.setNumber,t.getBool,aI.setBool
C,b_=as.getNumber,as.getBool
cos,sin=n.cos,n.sin
pi=n.pi
z=pi*2
function g(i,h,f)return{i=i or 0,h=h or 0,f=f or 0}end
function v(b,l)return g(b.i+l.i,b.h+l.h,b.f+l.f)end
function S(b,an)return g(b.i*an,b.h*an,b.f*an)end
function aO(b)return S(b,-1)end
function E(b,l)return v(b,aO(l))end
function y(b)return n.sqrt(b.i*b.i+b.h*b.h+b.f*b.f)end
function ae(b,l)return b.i*l.i+b.h*l.h+b.f*l.f
end
function aS(b,l)return g(b.h*l.f-b.f*l.h,b.f*l.i-b.i*l.f,b.i*l.h-b.h*l.i)end
function ah(aH,ao,V)aU=aU or 1
return g(n.sin(aH)*n.cos(ao)*V,n.cos(aH)*n.cos(ao)*V,n.sin(ao)*V)end
function aJ(b,J,ar,af)return g(ae(J,b),ae(ar,b),ae(af,b))end
function ab(b,J,ar,af)return v(v(S(J,b.i),S(ar,b.h)),S(af,b.f))end
ad=C("Max friendlies")aE=C("User number")ax=C("Frequency seed")B=C("Encryption seed")aL,aM=1871759,6393518
n.randomseed(ax)aN=n.random(aL,aM)x={}n.randomseed(ax)for t=1,ad do
ac=n.random(-605791,605791)for aX,Y in L(x)do
while Y==ac do
ac=n.random(-605791,605791)end
end
x[t]=ac
end
for k in L(x)do
x[k]=x[k]+aN
end
q=1
K=1
aR=719700
I=7
s={}aB=8
P={}aY={}a={}aA=C("Merge Dist")aK=C("Cull Time")d={}for t=1,14 do
d[t]={}end
function at(al)return g(al.h/(3.57*B),al.i/(3.81*B),al.f/(4.19*B))end
function aF(U)return g(U.h*(3.81*B),U.i*(3.57*B),U.f*(4.19*B))end
aq=0
j=0
p,D=0,0
function onTick()aq=aq+1
u=g(e(1),e(2),e(3))av=e(27)==1
if av and not aT and(#a>0)then
if a[j%(#a)+1]._.f>0 then
j=j%(#a)+1
end
end
aT=av
aQ=e(28)==1
aD,aC,az=e(4),e(5),e(6)aa,ai,aj=cos(aD),cos(aC),cos(az)au,W,ak=sin(aD),sin(aC),sin(az)M=g(ai*aj,-W,ai*ak)O=g(au*ak+aa*W*aj,aa*ai,-au*aj+aa*W*ak)R=aS(M,O)Q=aq%3>0
if Q then
q=(q==ad)and 1 or q+1
q=(q==aE)and((q==ad)and 1 or q+1)or q
aw=x[q]else
K=(K==9)and 1 or K+1
aw=aR+K
end
for t=aB,2,-1 do
s[t]=s[t-1]end
if Q then
s[1]={aG=Q,H=q}else
s[1]={aG=Q,H=K}end
if#s==aB then
if s[I].aG then
P[s[I].H]={_=aF(g(e(7),e(8),e(9))),ap=aF(g(e(21),e(22),e(23)))}else
d[4+s[I].H]._=g(e(10),e(11),0)d[4+s[I].H].F=0
d[4+s[I].H].aP=ay
end
end
c(3,aw)c(29,x[aE])Z=at(u)c(4,Z.i)c(5,Z.h)c(6,Z.f)if e(18)>0 then
d[1].r=ah(e(19)*z,e(20)*z,e(18))d[1].o=ab(d[1].r,M,O,R)d[1]._=v(d[1].o,u)else
d[1]={r=g(),o=g(),_=g()}end
d[1].F=e(30)if e(12)>0 then
d[2].r=ah(e(13)*z,e(14)*z,e(12))d[2].o=ab(d[2].r,M,O,R)d[2]._=v(d[2].o,u)else
d[2]={r=g(),o=g(),_=g()}end
d[2].F=e(31)if e(24)>0 then
d[3].r=ah(e(25)*z+pi,e(26)*z,e(24))d[3].o=ab(d[3].r,M,O,R)d[3]._=v(d[3].o,u)else
d[3]={r=g(),o=g(),_=g()}end
d[3].F=e(32)d[4]._=g(e(15),e(16),e(17))if y(d[4]._)>0 then
d[4].o=E(u,d[4]._)d[4].r=aJ(d[4].o,M,O,R)else
d[4]={r=g(),o=g(),_=g()}end
d[4].F=0
for k,m in L(d)do
if m._ and m.F and(y(m._)>0)then
if m.aP then
m._=v(m._,g(0,0,-9999))m.o=E(u,m._)end
if(y(m.o)>0)and not(m.F>0)then
local ag=0
for A,aZ in L(a)do
if ag==0 then
if y(E(a[A]._,m._))<=aA then
ag=A
a[A]._=m._
a[A].N=0
end
else
if y(E(a[A]._,m._))<=aA then
T(a,A)end
end
end
if ag==0 then
a[#a+1]={_=m._,N=0}end
end
end
end
for k,Y in L(a)do
G=ay
a[k].N=a[k].N+1
if(Y.N>=aK)and not(k==j)then
if G then
T(a,k)G=am
if k<j then
j=j-1
end
end
else
if a[k]._.f<=-1 and a[k]._.f>=-7999
then
a[k]._.f=5
end
if G then
if y(E(u,a[k]._))<=50 then
T(a,k)G=am
if k<j then
j=j-1
end
end
end
for t,J in pairs(P)do
if G then
if y(E(J._,a[k]._))<=300 then
T(a,k)G=am
if k<j then
j=j-1
end
end
end
end
end
end
if a[p]then
c(14,a[p]._.i)c(15,a[p]._.h)c(16,a[p]._.f)end
if a[p+1]then
c(17,a[p+1]._.i)c(18,a[p+1]._.h)c(19,a[p+1]._.f)end
c(26,p)p=p+2
if p>#a then
p=1
end
w=P[D]if w then
c(20,w._.i)c(21,w._.h)c(22,w._.f)c(23,w.ap.i)c(24,w.ap.h)c(25,w.ap.f)end
c(28,D)D=D+1
if D>#P then
D=1
end
if aQ then
c(30,0)c(31,0)c(32,0)else
if a[j]then
c(30,a[j]._.i)c(31,a[j]._.h)c(32,a[j]._.f)X=at(a[j]._)c(2,X.i)c(12,X.h)c(13,X.f)c(11,a[j].N)else
c(30,0)c(31,0)c(32,0)c(11,0)end
end
c(7,0)c(8,0)c(9,1)c(10,1)end
