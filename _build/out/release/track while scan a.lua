-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>


aa=false
ay=true
I=ipairs
S=table.remove
n,r,aD,aH=math,input,output,property
e,b,aV,aW=r.getNumber,aD.setNumber,r.getBool,aD.setBool
E,aY=aH.getNumber,aH.getBool
cos,sin=n.cos,n.sin
pi=n.pi
G=pi*2
function f(h,i,g)return{h=h or 0,i=i or 0,g=g or 0}end
function x(c,l)return f(c.h+l.h,c.i+l.i,c.g+l.g)end
function R(c,aq)return f(c.h*aq,c.i*aq,c.g*aq)end
function aK(c)return R(c,-1)end
function A(c,l)return x(c,aK(l))end
function v(c)return n.sqrt(c.h*c.h+c.i*c.i+c.g*c.g)end
function ar(c,l)return c.h*l.h+c.i*l.i+c.g*l.g
end
function aU(c,l)return f(c.i*l.g-c.g*l.i,c.g*l.h-c.h*l.g,c.h*l.i-c.i*l.h)end
function al(ax,U,X)aT=aT or 1
return f(n.sin(ax)*n.cos(U)*X,n.cos(ax)*n.cos(U)*X,n.sin(U)*X)end
function aQ(c,L,W,ak)return f(ar(L,c),ar(W,c),ar(ak,c))end
function ab(c,L,W,ak)return x(x(R(L,c.h),R(W,c.i)),R(ak,c.g))end
ac=E("Max friendlies")at=E("User number")aw=E("Frequency seed")C=E("Encryption seed")aL,aS=1871759,6393518
n.randomseed(aw)aN=n.random(aL,aS)u={}n.randomseed(aw)for r=1,ac do
ah=n.random(-605791,605791)for aX,Z in I(u)do
while Z==ah do
ah=n.random(-605791,605791)end
end
u[r]=ah
end
for k in I(u)do
u[k]=u[k]+aN
end
t=1
O=1
aO=719700
M=7
s={}aB=8
Q={}aZ={}a={}az=E("Merge Dist")aP=E("Cull Time")d={}for r=1,14 do
d[r]={}end
function av(V)return f(V.i/(3.57*C),V.h/(3.81*C),V.g/(4.19*C))end
function aA(ad)return f(ad.i*(3.81*C),ad.h*(3.57*C),ad.g*(4.19*C))end
an=0
j=0
p,F=0,0
function onTick()an=an+1
y=f(e(1),e(2),e(3))au=e(27)==1
if au and not aR and(#a>0)then
if a[j%(#a)+1]._.g>0 then
j=j%(#a)+1
end
end
aR=au
aJ=e(28)==1
aI,aC,aG=e(4),e(5),e(6)ae,ap,Y=cos(aI),cos(aC),cos(aG)as,am,ag=sin(aI),sin(aC),sin(aG)H=f(ap*Y,-am,ap*ag)J=f(as*ag+ae*am*Y,ae*ap,-as*Y+ae*am*ag)T=aU(H,J)P=an%3>0
if P then
t=(t==ac)and 1 or t+1
t=(t==at)and((t==ac)and 1 or t+1)or t
aF=u[t]else
O=(O==9)and 1 or O+1
aF=aO+O
end
for r=aB,2,-1 do
s[r]=s[r-1]end
if P then
s[1]={aE=P,N=t}else
s[1]={aE=P,N=O}end
if#s==aB then
if s[M].aE then
Q[s[M].N]={_=aA(f(e(7),e(8),e(9))),aj=aA(f(e(21),e(22),e(23)))}else
d[4+s[M].N]._=f(e(10),e(11),0)d[4+s[M].N].z=0
d[4+s[M].N].aM=ay
end
end
b(3,aF)b(29,u[at])ai=av(y)b(4,ai.h)b(5,ai.i)b(6,ai.g)if e(18)>0 then
d[1].q=al(e(19)*G,e(20)*G,e(18))d[1].o=ab(d[1].q,H,J,T)d[1]._=x(d[1].o,y)else
d[1]={q=f(),o=f(),_=f()}end
d[1].z=e(30)if e(12)>0 then
d[2].q=al(e(13)*G,e(14)*G,e(12))d[2].o=ab(d[2].q,H,J,T)d[2]._=x(d[2].o,y)else
d[2]={q=f(),o=f(),_=f()}end
d[2].z=e(31)if e(24)>0 then
d[3].q=al(e(25)*G+pi,e(26)*G,e(24))d[3].o=ab(d[3].q,H,J,T)d[3]._=x(d[3].o,y)else
d[3]={q=f(),o=f(),_=f()}end
d[3].z=e(32)d[4]._=f(e(15),e(16),e(17))if v(d[4]._)>0 then
d[4].o=A(y,d[4]._)d[4].q=aQ(d[4].o,H,J,T)else
d[4]={q=f(),o=f(),_=f()}end
d[4].z=0
for k,m in I(d)do
if m._ and m.z and(v(m._)>0)then
if m.aM then
m._=x(m._,f(0,0,-9999))m.o=A(y,m._)end
if(v(m.o)>0)and not(m.z>0)then
local ao=0
for D,b_ in I(a)do
if ao==0 then
if v(A(a[D]._,m._))<=az then
ao=D
a[D]._=m._
a[D].K=0
end
else
if v(A(a[D]._,m._))<=az then
S(a,D)end
end
end
if ao==0 then
a[#a+1]={_=m._,K=0}end
end
end
end
for k,Z in I(a)do
B=ay
a[k].K=a[k].K+1
if(Z.K>=aP)and not(k==j)then
if B then
S(a,k)B=aa
if k<j then
j=j-1
end
end
else
if a[k]._.g<=-1 and a[k]._.g>=-7999
then
a[k]._.g=5
end
if B then
if v(A(y,a[k]._))<=50 then
S(a,k)B=aa
if k<j then
j=j-1
end
end
end
for r,L in pairs(Q)do
if B then
if v(A(L._,a[k]._))<=300 then
S(a,k)B=aa
if k<j then
j=j-1
end
end
end
end
end
end
if a[p]then
b(14,a[p]._.h)b(15,a[p]._.i)b(16,a[p]._.g)end
if a[p+1]then
b(17,a[p+1]._.h)b(18,a[p+1]._.i)b(19,a[p+1]._.g)end
b(26,p)p=p+2
if p>#a then
p=1
end
w=Q[F]if w then
b(20,w._.h)b(21,w._.i)b(22,w._.g)b(23,w.aj.h)b(24,w.aj.i)b(25,w.aj.g)end
b(28,F)F=F+1
if F>#Q then
F=1
end
if aJ then
b(30,0)b(31,0)b(32,0)else
if a[j]then
b(30,a[j]._.h)b(31,a[j]._.i)b(32,a[j]._.g)af=av(a[j]._)b(2,af.h)b(12,af.i)b(13,af.g)b(11,a[j].K)else
b(30,0)b(31,0)b(32,0)b(11,0)end
end
b(7,0)b(8,0)b(9,1)b(10,1)end
