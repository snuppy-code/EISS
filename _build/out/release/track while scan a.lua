-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>


ae=false
aC=true
N=ipairs
R=table.remove
n,r,aw,aH=math,input,output,property
e,c,aX,aZ=r.getNumber,aw.setNumber,r.getBool,aw.setBool
A,aW=aH.getNumber,aH.getBool
cos,sin=n.cos,n.sin
pi=n.pi
z=pi*2
function f(h,i,g)return{h=h or 0,i=i or 0,g=g or 0}end
function x(b,l)return f(b.h+l.h,b.i+l.i,b.g+l.g)end
function Q(b,ak)return f(b.h*ak,b.i*ak,b.g*ak)end
function aU(b)return Q(b,-1)end
function D(b,l)return x(b,aU(l))end
function w(b)return n.sqrt(b.h*b.h+b.i*b.i+b.g*b.g)end
function V(b,l)return b.h*l.h+b.i*l.i+b.g*l.g
end
function aP(b,l)return f(b.i*l.g-b.g*l.i,b.g*l.h-b.h*l.g,b.h*l.i-b.i*l.h)end
function ap(aF,ai,aq)aS=aS or 1
return f(n.sin(aF)*n.cos(ai)*aq,n.cos(aF)*n.cos(ai)*aq,n.sin(ai)*aq)end
function aK(b,M,as,ad)return f(V(M,b),V(as,b),V(ad,b))end
function Z(b,M,as,ad)return x(x(Q(M,b.h),Q(as,b.i)),Q(ad,b.g))end
ac=A("Max friendlies")aI=A("User number")az=A("Frequency seed")G=A("Encryption seed")aO,aR=1871759,6393518
n.randomseed(az)aM=n.random(aO,aR)u={}n.randomseed(az)for r=1,ac do
U=n.random(-605791,605791)for b_,Y in N(u)do
while Y==U do
U=n.random(-605791,605791)end
end
u[r]=U
end
for k in N(u)do
u[k]=u[k]+aM
end
q=1
O=1
aN=719700
K=7
t={}aG=8
P={}aV={}a={}aD=A("Merge Dist")aL=A("Cull Time")d={}for r=1,14 do
d[r]={}end
function aB(aj)return f(aj.i/(3.57*G),aj.h/(3.81*G),aj.g/(4.19*G))end
function av(ag)return f(ag.i*(3.81*G),ag.h*(3.57*G),ag.g*(4.19*G))end
am=0
j=0
p,E=0,0
function onTick()am=am+1
v=f(e(1),e(2),e(3))au=e(27)==1
if au and not aJ and(#a>0)then
if a[j%(#a)+1]._.g>0 then
j=j%(#a)+1
end
end
aJ=au
aT=e(28)==1
ax,aA,at=e(4),e(5),e(6)aa,ab,ar=cos(ax),cos(aA),cos(at)aE,an,al=sin(ax),sin(aA),sin(at)J=f(ab*ar,-an,ab*al)I=f(aE*al+aa*an*ar,aa*ab,-aE*ar+aa*an*al)S=aP(J,I)T=am%3>0
if T then
q=(q==ac)and 1 or q+1
q=(q==aI)and((q==ac)and 1 or q+1)or q
W=u[q]else
O=(O==9)and 1 or O+1
W=aN+O
end
for r=aG,2,-1 do
t[r]=t[r-1]end
if T then
t[1]={ay=T,H=q}debug.log("checking friend: "..q.." freq: "..W)else
t[1]={ay=T,H=O}end
if#t==aG then
if t[K].ay then
P[t[K].H]={_=av(f(e(7),e(8),e(9))),ah=av(f(e(21),e(22),e(23)))}else
d[4+t[K].H]._=f(e(10),e(11),0)d[4+t[K].H].F=0
d[4+t[K].H].aQ=aC
end
end
c(3,W)c(29,u[aI])af=aB(v)c(4,af.h)c(5,af.i)c(6,af.g)if e(18)>0 then
d[1].s=ap(e(19)*z,e(20)*z,e(18))d[1].o=Z(d[1].s,J,I,S)d[1]._=x(d[1].o,v)else
d[1]={s=f(),o=f(),_=f()}end
d[1].F=e(30)if e(12)>0 then
d[2].s=ap(e(13)*z,e(14)*z,e(12))d[2].o=Z(d[2].s,J,I,S)d[2]._=x(d[2].o,v)else
d[2]={s=f(),o=f(),_=f()}end
d[2].F=e(31)if e(24)>0 then
d[3].s=ap(e(25)*z+pi,e(26)*z,e(24))d[3].o=Z(d[3].s,J,I,S)d[3]._=x(d[3].o,v)else
d[3]={s=f(),o=f(),_=f()}end
d[3].F=e(32)d[4]._=f(e(15),e(16),e(17))if w(d[4]._)>0 then
d[4].o=D(v,d[4]._)d[4].s=aK(d[4].o,J,I,S)else
d[4]={s=f(),o=f(),_=f()}end
d[4].F=0
for k,m in N(d)do
if m._ and m.F and(w(m._)>0)then
if m.aQ then
m._=x(m._,f(0,0,-9999))m.o=D(v,m._)end
if(w(m.o)>0)and not(m.F>0)then
local ao=0
for B,aY in N(a)do
if ao==0 then
if w(D(a[B]._,m._))<=aD then
ao=B
a[B]._=m._
a[B].L=0
end
else
if w(D(a[B]._,m._))<=aD then
R(a,B)end
end
end
if ao==0 then
a[#a+1]={_=m._,L=0}end
end
end
end
for k,Y in N(a)do
C=aC
a[k].L=a[k].L+1
if(Y.L>=aL)and not(k==j)then
if C then
R(a,k)C=ae
if k<j then
j=j-1
end
end
else
if a[k]._.g<=-1 and a[k]._.g>=-7999
then
a[k]._.g=5
end
if C then
if w(D(v,a[k]._))<=50 then
R(a,k)C=ae
if k<j then
j=j-1
end
end
end
for r,M in pairs(P)do
if C then
if w(D(M._,a[k]._))<=300 then
R(a,k)C=ae
if k<j then
j=j-1
end
end
end
end
end
end
if a[p]then
c(14,a[p]._.h)c(15,a[p]._.i)c(16,a[p]._.g)end
if a[p+1]then
c(17,a[p+1]._.h)c(18,a[p+1]._.i)c(19,a[p+1]._.g)end
c(26,p)p=p+2
if p>#a then
p=1
end
y=P[E]if y then
c(20,y._.h)c(21,y._.i)c(22,y._.g)c(23,y.ah.h)c(24,y.ah.i)c(25,y.ah.g)end
c(28,E)E=E+1
if E>#P then
E=1
end
if aT then
c(30,0)c(31,0)c(32,0)else
if a[j]then
c(30,a[j]._.h)c(31,a[j]._.i)c(32,a[j]._.g)X=aB(a[j]._)c(2,X.h)c(12,X.i)c(13,X.g)c(11,a[j].L)else
c(30,0)c(31,0)c(32,0)c(11,0)end
end
c(7,0)c(8,0)c(9,1)c(10,1)end
