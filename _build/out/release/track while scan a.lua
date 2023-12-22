-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>


X=false
aB=true
M=ipairs
Q=table.remove
m,r,au,ax=math,input,output,property
e,c,aZ,aW=r.getNumber,au.setNumber,r.getBool,au.setBool
A,aY=ax.getNumber,ax.getBool
cos,sin=m.cos,m.sin
pi=m.pi
D=pi*2
function f(h,i,g)return{h=h or 0,i=i or 0,g=g or 0}end
function w(b,l)return f(b.h+l.h,b.i+l.i,b.g+l.g)end
function S(b,ai)return f(b.h*ai,b.i*ai,b.g*ai)end
function aN(b)return S(b,-1)end
function E(b,l)return w(b,aN(l))end
function v(b)return m.sqrt(b.h*b.h+b.i*b.i+b.g*b.g)end
function ad(b,l)return b.h*l.h+b.i*l.i+b.g*l.g
end
function aO(b,l)return f(b.i*l.g-b.g*l.i,b.g*l.h-b.h*l.g,b.h*l.i-b.i*l.h)end
function aj(aC,aq,am)aM=aM or 1
return f(m.sin(aC)*m.cos(aq)*am,m.cos(aC)*m.cos(aq)*am,m.sin(aq)*am)end
function aT(b,N,ak,ab)return f(ad(N,b),ad(ak,b),ad(ab,b))end
function an(b,N,ak,ab)return w(w(S(N,b.h),S(ak,b.i)),S(ab,b.g))end
ae=A("Max friendlies")aI=A("User number")aG=A("Frequency seed")F=A("Encryption seed")aP,aK=1871759,6393518
m.randomseed(aG)aU=m.random(aP,aK)x={}m.randomseed(aG)for r=1,ae do
ap=m.random(-605791,605791)for aX,ar in M(x)do
while ar==ap do
ap=m.random(-605791,605791)end
end
x[r]=ap
end
for k in M(x)do
x[k]=x[k]+aU
end
t=1
H=1
aJ=719700
K=7
q={}av=8
T={}b_={}a={}aD=A("Merge Dist")aS=A("Cull Time")d={}for r=1,14 do
d[r]={}end
function ay(al)return f(al.i/(3.57*F),al.h/(3.81*F),al.g/(4.19*F))end
function at(ac)return f(ac.i*(3.81*F),ac.h*(3.57*F),ac.g*(4.19*F))end
aa=0
j=0
o,B=0,0
function onTick()aa=aa+1
u=f(e(1),e(2),e(3))aA=e(27)==1
if aA and not aL and(#a>0)then
if a[j%(#a)+1]._.g>0 then
j=j%(#a)+1
end
end
aL=aA
aQ=e(28)==1
aF,az,as=e(4),e(5),e(6)W,ag,Y=cos(aF),cos(az),cos(as)aH,ao,af=sin(aF),sin(az),sin(as)J=f(ag*Y,-ao,ag*af)O=f(aH*af+W*ao*Y,W*ag,-aH*Y+W*ao*af)R=aO(J,O)P=aa%3>0
if P then
t=(t==ae)and 1 or t+1
t=(t==aI)and((t==ae)and 1 or t+1)or t
aE=x[t]else
H=(H==9)and 1 or H+1
aE=aJ+H
end
for r=av,2,-1 do
q[r]=q[r-1]end
if P then
q[1]={aw=P,L=t}else
q[1]={aw=P,L=H}end
if#q==av then
if q[K].aw then
T[q[K].L]={_=at(f(e(7),e(8),e(9))),V=at(f(e(21),e(22),e(23)))}else
d[4+q[K].L]._=f(e(10),e(11),0)d[4+q[K].L].C=0
d[4+q[K].L].aR=aB
end
end
c(3,aE)c(29,x[aI])ah=ay(u)c(4,ah.h)c(5,ah.i)c(6,ah.g)if e(18)>0 then
d[1].s=aj(e(19)*D,e(20)*D,e(18))d[1].p=an(d[1].s,J,O,R)d[1]._=w(d[1].p,u)else
d[1]={s=f(),p=f(),_=f()}end
d[1].C=e(30)if e(12)>0 then
d[2].s=aj(e(13)*D,e(14)*D,e(12))d[2].p=an(d[2].s,J,O,R)d[2]._=w(d[2].p,u)else
d[2]={s=f(),p=f(),_=f()}end
d[2].C=e(31)if e(24)>0 then
d[3].s=aj(e(25)*D+pi,e(26)*D,e(24))d[3].p=an(d[3].s,J,O,R)d[3]._=w(d[3].p,u)else
d[3]={s=f(),p=f(),_=f()}end
d[3].C=e(32)d[4]._=f(e(15),e(16),e(17))if v(d[4]._)>0 then
d[4].p=E(u,d[4]._)d[4].s=aT(d[4].p,J,O,R)else
d[4]={s=f(),p=f(),_=f()}end
d[4].C=0
for k,n in M(d)do
if n._ and n.C and(v(n._)>0)then
if n.aR then
n._=w(n._,f(0,0,-9999))n.p=E(u,n._)end
if(v(n.p)>0)and not(n.C>0)then
local Z=0
for z,aV in M(a)do
if Z==0 then
if v(E(a[z]._,n._))<=aD then
Z=z
a[z]._=n._
a[z].I=0
end
else
if v(E(a[z]._,n._))<=aD then
Q(a,z)end
end
end
if Z==0 then
a[#a+1]={_=n._,I=0}end
end
end
end
for k,ar in M(a)do
G=aB
a[k].I=a[k].I+1
if(ar.I>=aS)and not(k==j)then
if G then
Q(a,k)G=X
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
if v(E(u,a[k]._))<=50 then
Q(a,k)G=X
if k<j then
j=j-1
end
end
end
for r,N in pairs(T)do
if G then
if v(E(N._,a[k]._))<=300 then
Q(a,k)G=X
if k<j then
j=j-1
end
end
end
end
end
end
if a[o]then
c(14,a[o]._.h)c(15,a[o]._.i)c(16,a[o]._.g)end
if a[o+1]then
c(17,a[o+1]._.h)c(18,a[o+1]._.i)c(19,a[o+1]._.g)end
c(26,o)o=o+2
if o>#a then
o=1
end
y=T[B]if y then
c(20,y._.h)c(21,y._.i)c(22,y._.g)c(23,y.V.h)c(24,y.V.i)c(25,y.V.g)end
c(28,B)B=B+1
if B>#T then
B=1
end
if aQ then
c(30,0)c(31,0)c(32,0)else
if a[j]then
c(30,a[j]._.h)c(31,a[j]._.i)c(32,a[j]._.g)U=ay(a[j]._)c(2,U.h)c(12,U.i)c(13,U.g)c(11,a[j].I)else
c(30,0)c(31,0)c(32,0)c(11,0)end
end
c(7,0)c(8,0)c(9,1)c(10,1)end
