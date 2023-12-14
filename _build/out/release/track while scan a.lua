-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>


ap=false
av=true
I=ipairs
S=table.remove
n,s,ax,aB=math,input,output,property
d,b,aZ,b_=s.getNumber,ax.setNumber,s.getBool,ax.setBool
z,aY=aB.getNumber,aB.getBool
cos,sin=n.cos,n.sin
pi=n.pi
B=pi*2
function f(i,h,g)return{i=i or 0,h=h or 0,g=g or 0}end
function x(c,l)return f(c.i+l.i,c.h+l.h,c.g+l.g)end
function R(c,ae)return f(c.i*ae,c.h*ae,c.g*ae)end
function aP(c)return R(c,-1)end
function F(c,l)return x(c,aP(l))end
function y(c)return n.sqrt(c.i*c.i+c.h*c.h+c.g*c.g)end
function al(c,l)return c.i*l.i+c.h*l.h+c.g*l.g
end
function aL(c,l)return f(c.h*l.g-c.g*l.h,c.g*l.i-c.i*l.g,c.i*l.h-c.h*l.i)end
function U(aE,an,am)aM=aM or 1
return f(n.sin(aE)*n.cos(an)*am,n.cos(aE)*n.cos(an)*am,n.sin(an)*am)end
function aN(c,N,aj,ao)return f(al(N,c),al(aj,c),al(ao,c))end
function ab(c,N,aj,ao)return x(x(R(N,c.i),R(aj,c.h)),R(ao,c.g))end
ai=z("Max friendlies")aF=z("User number")aI=z("Frequency seed")E=z("Encryption seed")aO,aU=1871759,6393518
n.randomseed(aI)aT=n.random(aO,aU)u={}n.randomseed(aI)for s=1,ai do
ar=n.random(-605791,605791)for aV,ah in I(u)do
while ah==ar do
ar=n.random(-605791,605791)end
end
u[s]=ar
end
for k in I(u)do
u[k]=u[k]+aT
end
q=1
L=1
aJ=719700
H=7
t={}aC=8
T={}aW={}a={}aH=z("Merge Dist")aR=z("Cull Time")e={}for s=1,14 do
e[s]={}end
function at(ag)return f(ag.h/(3.57*E),ag.i/(3.81*E),ag.g/(4.19*E))end
function ay(aq)return f(aq.h*(3.81*E),aq.i*(3.57*E),aq.g*(4.19*E))end
as=0
j=0
p,G=0,0
function onTick()as=as+1
v=f(d(1),d(2),d(3))aw=d(27)==1
if aw and not aS and(#a>0)then
if a[j%(#a)+1]._.g>0 then
j=j%(#a)+1
end
end
aS=aw
aK=d(28)==1
aD,az,au=d(4),d(5),d(6)Z,Y,ac=cos(aD),cos(az),cos(au)aA,af,aa=sin(aD),sin(az),sin(au)M=f(Y*ac,-af,Y*aa)J=f(aA*aa+Z*af*ac,Z*Y,-aA*ac+Z*af*aa)P=aL(M,J)Q=as%3>0
if Q then
q=(q==ai)and 1 or q+1
q=(q==aF)and((q==ai)and 1 or q+1)or q
ad=u[q]else
L=(L==9)and 1 or L+1
ad=aJ+L
end
for s=aC,2,-1 do
t[s]=t[s-1]end
if Q then
t[1]={aG=Q,K=q}debug.log("checking friend: "..q.." freq: "..ad)else
t[1]={aG=Q,K=L}end
if#t==aC then
if t[H].aG then
T[t[H].K]={_=ay(f(d(7),d(8),d(9))),W=ay(f(d(21),d(22),d(23)))}else
e[4+t[H].K]._=f(d(10),d(11),0)e[4+t[H].K].D=0
e[4+t[H].K].aQ=av
end
end
b(3,ad)b(29,u[aF])X=at(v)b(4,X.i)b(5,X.h)b(6,X.g)if d(18)>0 then
e[1].r=U(d(19)*B,d(20)*B,d(18))e[1].o=ab(e[1].r,M,J,P)e[1]._=x(e[1].o,v)else
e[1]={r=f(),o=f(),_=f()}end
e[1].D=d(30)if d(12)>0 then
e[2].r=U(d(13)*B,d(14)*B,d(12))e[2].o=ab(e[2].r,M,J,P)e[2]._=x(e[2].o,v)else
e[2]={r=f(),o=f(),_=f()}end
e[2].D=d(31)if d(24)>0 then
e[3].r=U(d(25)*B+pi,d(26)*B,d(24))e[3].o=ab(e[3].r,M,J,P)e[3]._=x(e[3].o,v)else
e[3]={r=f(),o=f(),_=f()}end
e[3].D=d(32)e[4]._=f(d(15),d(16),d(17))if y(e[4]._)>0 then
e[4].o=F(v,e[4]._)e[4].r=aN(e[4].o,M,J,P)else
e[4]={r=f(),o=f(),_=f()}end
e[4].D=0
for k,m in I(e)do
if m._ and m.D and(y(m._)>0)then
if m.aQ then
m._=x(m._,f(0,0,-9999))m.o=F(v,m._)end
if(y(m.o)>0)and not(m.D>0)then
local V=0
for A,aX in I(a)do
if V==0 then
if y(F(a[A]._,m._))<=aH then
V=A
a[A]._=m._
a[A].O=0
end
else
if y(F(a[A]._,m._))<=aH then
S(a,A)end
end
end
if V==0 then
a[#a+1]={_=m._,O=0}end
end
end
end
for k,ah in I(a)do
C=av
a[k].O=a[k].O+1
if(ah.O>=aR)and not(k==j)then
if C then
S(a,k)C=ap
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
if y(F(v,a[k]._))<=50 then
S(a,k)C=ap
if k<j then
j=j-1
end
end
end
for s,N in pairs(T)do
if C then
if y(F(N._,a[k]._))<=300 then
S(a,k)C=ap
if k<j then
j=j-1
end
end
end
end
end
end
if a[p]then
b(14,a[p]._.i)b(15,a[p]._.h)b(16,a[p]._.g)end
if a[p+1]then
b(17,a[p+1]._.i)b(18,a[p+1]._.h)b(19,a[p+1]._.g)end
b(26,p)p=p+2
if p>#a then
p=1
end
w=T[G]if w then
b(20,w._.i)b(21,w._.h)b(22,w._.g)b(23,w.W.i)b(24,w.W.h)b(25,w.W.g)end
b(28,G)G=G+1
if G>#T then
G=1
end
if aK then
b(30,0)b(31,0)b(32,0)else
if a[j]then
b(30,a[j]._.i)b(31,a[j]._.h)b(32,a[j]._.g)ak=at(a[j]._)b(2,ak.i)b(12,ak.h)b(13,ak.g)b(11,a[j].O)else
b(30,0)b(31,0)b(32,0)b(11,0)end
end
b(7,0)b(8,0)b(9,1)b(10,1)end
