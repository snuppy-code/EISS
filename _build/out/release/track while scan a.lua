-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>


Z=false
ax=true
N=ipairs
T=table.remove
n,s,au,av=math,input,output,property
e,c,aX,aY=s.getNumber,au.setNumber,s.getBool,au.setBool
F,aV=av.getNumber,av.getBool
cos,sin=n.cos,n.sin
pi=n.pi
B=pi*2
function g(h,i,f)return{h=h or 0,i=i or 0,f=f or 0}end
function x(b,l)return g(b.h+l.h,b.i+l.i,b.f+l.f)end
function P(b,ai)return g(b.h*ai,b.i*ai,b.f*ai)end
function aN(b)return P(b,-1)end
function D(b,l)return x(b,aN(l))end
function y(b)return n.sqrt(b.h*b.h+b.i*b.i+b.f*b.f)end
function ah(b,l)return b.h*l.h+b.i*l.i+b.f*l.f
end
function aU(b,l)return g(b.i*l.f-b.f*l.i,b.f*l.h-b.h*l.f,b.h*l.i-b.i*l.h)end
function V(aG,aa,am)aK=aK or 1
return g(n.sin(aG)*n.cos(aa)*am,n.cos(aG)*n.cos(aa)*am,n.sin(aa)*am)end
function aJ(b,I,aj,ap)return g(ah(I,b),ah(aj,b),ah(ap,b))end
function ak(b,I,aj,ap)return x(x(P(I,b.h),P(aj,b.i)),P(ap,b.f))end
Y=F("Max friendlies")aE=F("User number")aF=F("Frequency seed")A=F("Encryption seed")aO,aQ=1871759,6393518
n.randomseed(aF)aP=n.random(aO,aQ)u={}n.randomseed(aF)for s=1,Y do
al=n.random(-605791,605791)for b_,aq in N(u)do
while aq==al do
al=n.random(-605791,605791)end
end
u[s]=al
end
for k in N(u)do
u[k]=u[k]+aP
end
q=1
K=1
aT=719700
O=7
r={}aB=8
R={}aW={}a={}aD=F("Merge Dist")aM=F("Cull Time")d={}for s=1,14 do
d[s]={}end
function aI(W)return g(W.i/(3.57*A),W.h/(3.81*A),W.f/(4.19*A))end
function at(af)return g(af.i*(3.81*A),af.h*(3.57*A),af.f*(4.19*A))end
an=0
j=0
p,E=0,0
function onTick()an=an+1
w=g(e(1),e(2),e(3))aH=e(27)==1
if aH and not aS and(#a>0)then
if a[j%(#a)+1]._.f>0 then
j=j%(#a)+1
end
end
aS=aH
aR=e(28)==1
aC,ay,as=e(4),e(5),e(6)ac,ab,X=cos(aC),cos(ay),cos(as)aA,ad,ao=sin(aC),sin(ay),sin(as)J=g(ab*X,-ad,ab*ao)H=g(aA*ao+ac*ad*X,ac*ab,-aA*X+ac*ad*ao)S=aU(J,H)Q=an%3>0
if Q then
q=(q==Y)and 1 or q+1
q=(q==aE)and((q==Y)and 1 or q+1)or q
az=u[q]else
K=(K==9)and 1 or K+1
az=aT+K
end
for s=aB,2,-1 do
r[s]=r[s-1]end
if Q then
r[1]={aw=Q,L=q}else
r[1]={aw=Q,L=K}end
if#r==aB then
if r[O].aw then
R[r[O].L]={_=at(g(e(7),e(8),e(9))),U=at(g(e(21),e(22),e(23)))}else
d[4+r[O].L]._=g(e(10),e(11),0)d[4+r[O].L].z=0
d[4+r[O].L].aL=ax
end
end
c(3,az)c(29,u[aE])ae=aI(w)c(4,ae.h)c(5,ae.i)c(6,ae.f)if e(18)>0 then
d[1].t=V(e(19)*B,e(20)*B,e(18))d[1].o=ak(d[1].t,J,H,S)d[1]._=x(d[1].o,w)else
d[1]={t=g(),o=g(),_=g()}end
d[1].z=e(30)if e(12)>0 then
d[2].t=V(e(13)*B,e(14)*B,e(12))d[2].o=ak(d[2].t,J,H,S)d[2]._=x(d[2].o,w)else
d[2]={t=g(),o=g(),_=g()}end
d[2].z=e(31)if e(24)>0 then
d[3].t=V(e(25)*B+pi,e(26)*B,e(24))d[3].o=ak(d[3].t,J,H,S)d[3]._=x(d[3].o,w)else
d[3]={t=g(),o=g(),_=g()}end
d[3].z=e(32)d[4]._=g(e(15),e(16),e(17))if y(d[4]._)>0 then
d[4].o=D(w,d[4]._)d[4].t=aJ(d[4].o,J,H,S)else
d[4]={t=g(),o=g(),_=g()}end
d[4].z=0
for k,m in N(d)do
if m._ and m.z and(y(m._)>0)then
if m.aL then
m._=x(m._,g(0,0,-9999))m.o=D(w,m._)end
if(y(m.o)>0)and not(m.z>0)then
local ar=0
for G,aZ in N(a)do
if ar==0 then
if y(D(a[G]._,m._))<=aD then
ar=G
a[G]._=m._
a[G].M=0
end
else
if y(D(a[G]._,m._))<=aD then
T(a,G)end
end
end
if ar==0 then
a[#a+1]={_=m._,M=0}end
end
end
end
for k,aq in N(a)do
C=ax
a[k].M=a[k].M+1
if(aq.M>=aM)and not(k==j)then
if C then
T(a,k)C=Z
if k<j then
j=j-1
end
end
else
if a[k]._.f<=-1 and a[k]._.f>=-7999
then
a[k]._.f=5
end
if C then
if y(D(w,a[k]._))<=50 then
T(a,k)C=Z
if k<j then
j=j-1
end
end
end
for s,I in pairs(R)do
if C then
if y(D(I._,a[k]._))<=300 then
T(a,k)C=Z
if k<j then
j=j-1
end
end
end
end
end
end
if a[p]then
c(14,a[p]._.h)c(15,a[p]._.i)c(16,a[p]._.f)end
if a[p+1]then
c(17,a[p+1]._.h)c(18,a[p+1]._.i)c(19,a[p+1]._.f)end
c(26,p)p=p+2
if p>#a then
p=1
end
v=R[E]if v then
c(20,v._.h)c(21,v._.i)c(22,v._.f)c(23,v.U.h)c(24,v.U.i)c(25,v.U.f)end
c(28,E)E=E+1
if E>#R then
E=1
end
if aR then
c(30,0)c(31,0)c(32,0)else
if a[j]then
c(30,a[j]._.h)c(31,a[j]._.i)c(32,a[j]._.f)ag=aI(a[j]._)c(2,ag.h)c(12,ag.i)c(13,ag.f)c(11,a[j].M)else
c(30,0)c(31,0)c(32,0)c(11,0)end
end
c(7,0)c(8,0)c(9,1)c(10,1)end
