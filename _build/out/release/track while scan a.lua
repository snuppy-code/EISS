-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>


ab=false
aA=true
O=ipairs
P=table.remove
n,t,aI,aB=math,input,output,property
e,c,aY,aW=t.getNumber,aI.setNumber,t.getBool,aI.setBool
G,aZ=aB.getNumber,aB.getBool
cos,sin=n.cos,n.sin
pi=n.pi
z=pi*2
function f(h,i,g)return{h=h or 0,i=i or 0,g=g or 0}end
function y(b,l)return f(b.h+l.h,b.i+l.i,b.g+l.g)end
function R(b,Z)return f(b.h*Z,b.i*Z,b.g*Z)end
function aP(b)return R(b,-1)end
function C(b,l)return y(b,aP(l))end
function v(b)return n.sqrt(b.h*b.h+b.i*b.i+b.g*b.g)end
function af(b,l)return b.h*l.h+b.i*l.i+b.g*l.g
end
function aS(b,l)return f(b.i*l.g-b.g*l.i,b.g*l.h-b.h*l.g,b.h*l.i-b.i*l.h)end
function W(aH,ac,aj)aK=aK or 1
return f(n.sin(aH)*n.cos(ac)*aj,n.cos(aH)*n.cos(ac)*aj,n.sin(ac)*aj)end
function aM(b,M,aa,ag)return f(af(M,b),af(aa,b),af(ag,b))end
function ad(b,M,aa,ag)return y(y(R(M,b.h),R(aa,b.i)),R(ag,b.g))end
U=G("Max friendlies")av=G("User number")aD=G("Frequency seed")A=G("Encryption seed")aQ,aO=1871759,6393518
n.randomseed(aD)aU=n.random(aQ,aO)x={}n.randomseed(aD)for t=1,U do
ai=n.random(-605791,605791)for b_,am in O(x)do
while am==ai do
ai=n.random(-605791,605791)end
end
x[t]=ai
end
for k in O(x)do
x[k]=x[k]+aU
end
r=1
H=1
aN=719700
I=7
s={}aw=8
S={}aX={}a={}aE=G("Merge Dist")aT=G("Cull Time")d={}for t=1,14 do
d[t]={}end
function aG(Y)return f(Y.i/(3.57*A),Y.h/(3.81*A),Y.g/(4.19*A))end
function ay(aq)return f(aq.i*(3.81*A),aq.h*(3.57*A),aq.g*(4.19*A))end
X=0
j=0
p,F=0,0
function onTick()X=X+1
w=f(e(1),e(2),e(3))az=e(27)==1
if az and not aL and(#a>0)then
if a[j%(#a)+1]._.g>0 then
j=j%(#a)+1
end
end
aL=az
aJ=e(28)==1
aC,aF,ax=e(4),e(5),e(6)V,ar,an=cos(aC),cos(aF),cos(ax)as,ae,ah=sin(aC),sin(aF),sin(ax)K=f(ar*an,-ae,ar*ah)N=f(as*ah+V*ae*an,V*ar,-as*an+V*ae*ah)T=aS(K,N)Q=X%3>0
if Q then
r=(r==U)and 1 or r+1
r=(r==av)and((r==U)and 1 or r+1)or r
at=x[r]else
H=(H==9)and 1 or H+1
at=aN+H
end
for t=aw,2,-1 do
s[t]=s[t-1]end
if Q then
s[1]={au=Q,L=r}else
s[1]={au=Q,L=H}end
if#s==aw then
if s[I].au then
S[s[I].L]={_=ay(f(e(7),e(8),e(9))),ak=ay(f(e(21),e(22),e(23)))}else
d[4+s[I].L]._=f(e(10),e(11),0)d[4+s[I].L].B=0
d[4+s[I].L].aR=aA
end
end
c(3,at)c(29,x[av])ao=aG(w)c(4,ao.h)c(5,ao.i)c(6,ao.g)if e(18)>0 then
d[1].q=W(e(19)*z,e(20)*z,e(18))d[1].o=ad(d[1].q,K,N,T)d[1]._=y(d[1].o,w)else
d[1]={q=f(),o=f(),_=f()}end
d[1].B=e(30)if e(12)>0 then
d[2].q=W(e(13)*z,e(14)*z,e(12))d[2].o=ad(d[2].q,K,N,T)d[2]._=y(d[2].o,w)else
d[2]={q=f(),o=f(),_=f()}end
d[2].B=e(31)if e(24)>0 then
d[3].q=W(e(25)*z+pi,e(26)*z,e(24))d[3].o=ad(d[3].q,K,N,T)d[3]._=y(d[3].o,w)else
d[3]={q=f(),o=f(),_=f()}end
d[3].B=e(32)d[4]._=f(e(15),e(16),e(17))if v(d[4]._)>0 then
d[4].o=C(w,d[4]._)d[4].q=aM(d[4].o,K,N,T)else
d[4]={q=f(),o=f(),_=f()}end
d[4].B=0
for k,m in O(d)do
if m._ and m.B and(v(m._)>0)then
if m.aR then
m._=y(m._,f(0,0,-9999))m.o=C(w,m._)end
if(v(m.o)>0)and not(m.B>0)then
local ap=0
for D,aV in O(a)do
if ap==0 then
if v(C(a[D]._,m._))<=aE then
ap=D
a[D]._=m._
a[D].J=0
end
else
if v(C(a[D]._,m._))<=aE then
P(a,D)end
end
end
if ap==0 then
a[#a+1]={_=m._,J=0}end
end
end
end
for k,am in O(a)do
E=aA
a[k].J=a[k].J+1
if(am.J>=aT)and not(k==j)then
if E then
P(a,k)E=ab
if k<j then
j=j-1
end
end
else
if a[k]._.g<=-1 and a[k]._.g>=-7999
then
a[k]._.g=5
end
if E then
if v(C(w,a[k]._))<=50 then
P(a,k)E=ab
if k<j then
j=j-1
end
end
end
for t,M in pairs(S)do
if E then
if v(C(M._,a[k]._))<=300 then
P(a,k)E=ab
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
u=S[F]if u then
c(20,u._.h)c(21,u._.i)c(22,u._.g)c(23,u.ak.h)c(24,u.ak.i)c(25,u.ak.g)end
c(28,F)F=F+1
if F>#S then
F=1
end
if aJ then
c(30,0)c(31,0)c(32,0)else
if a[j]then
c(30,a[j]._.h)c(31,a[j]._.i)c(32,a[j]._.g)al=aG(a[j]._)c(2,al.h)c(12,al.i)c(13,al.g)c(11,a[j].J)else
c(30,0)c(31,0)c(32,0)c(11,0)end
end
c(7,0)c(8,0)c(9,1)c(10,1)end
