-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>

bo=""
bn="1"

Y=ipairs
aJ=tonumber
aO=string
aP=tostring
S=pairs
E=nil
R=false
q=true
aE=property
as=input
ap=table.remove
n,u,aD,aG,ba,bh,bl=math,as,output,aE,screen,q,R
d,b,bm,be=u.getNumber,aD.setNumber,u.getBool,aD.setBool
x,bk=aG.getNumber,aG.getBool
abs,cos,sin,floor,atan=n.abs,n.cos,n.sin,n.floor,n.atan
pi=n.pi
O=pi*2
function f(j,k,h)return{j=j or 0,k=k or 0,h=h or 0}end
function D(a,l)return f(a.j+l.j,a.k+l.k,a.h+l.h)end
function B(a,J)return f(a.j*J,a.k*J,a.h*J)end
function aV(a)return B(a,-1)end
function C(a,l)return D(a,aV(l))end
function m(a)return n.sqrt(a.j*a.j+a.k*a.k+a.h*a.h)end
function aH(a,J)return B(a,1/J)end
function bi(a)return aH(a,m(a))end
function aa(a,l)return a.j*l.j+a.k*l.k+a.h*l.h
end
function aS(a,l)return f(a.k*l.h-a.h*l.k,a.h*l.j-a.j*l.h,a.j*l.k-a.k*l.j)end
function aM(az,aq,ae)aT=aT or 1
return f(n.sin(az)*n.cos(aq)*ae,n.cos(az)*n.cos(aq)*ae,n.sin(aq)*ae)end
function aX(a,H,ao,al)return f(aa(H,a),aa(ao,a),aa(al,a))end
function aA(a,H,ao,al)return D(D(B(H,a.j),B(ao,a.k)),B(al,a.h))end
function r(as,aF)local I=E
for g,aU in S(as)do
if I==E or(g>I and aF)or(g<I and not aF)then
I=g
end
end
return I
end
function w(av)return _[av].e[r(_[av].e,q)]end
Z=x("VL Strt Frq")aZ=x("VL You Frq")ax=x("VL End Frq")ac=aE.getText("VL User")t=Z
bf=x("ML Strt Frq")bb=x("ML End Frq")ad=x("Merge Dist")aR=x("Cull Time")b_={}c={{},{},{}}_={}M={}bg={}L={}F,bc=0,0
i,v,bd=0,0,0
T,N=0,0
function onTick()N=N+1
T=T+1
Q=f(d(1),d(2),d(3))aN,aw,aL=d(4),d(5),d(6)ai,af,ah=cos(aN),cos(aw),cos(aL)ay,ag,ar=sin(aN),sin(aw),sin(aL)W=f(af*ah,-ag,af*ar)U=f(ay*ar+ai*ag*ah,ai*af,-ay*ah+ai*ag*ar)at=aS(W,U)aK=f(d(7),d(9),d(8))if m(aK)>0 then
local X={d(10),d(11)}K=bo
if X[1]>=1000000 and X[1]>=1000000 then
aB=aP(X[1]):sub(2,7)..aP(X[2]):sub(2,7)for u=1,#aB,3 do
K=K..aO.char(aB:sub(u,u+3-1))end
else
K="XXXX"
end
M[K]=aK
L[#L+1]=K
end
M[ac]=Q
P=bo
for u=1,#ac do
P=P..aO.format("%03d",ac:byte(u))end
b(1,aJ(bn..P:sub(1,6)))b(2,aJ(bn..P:sub(7,12)))t=t==ax and Z or t+1
if t==aZ then
t=t==ax and Z or t+1
end
b(3,t)if d(18)>0 then
c[1].y=aM(d(19)*O,d(20)*O,d(18))c[1].s=aA(c[1].y,W,U,at)c[1].p=D(c[1].s,Q)else
c[1].y=f()c[1].s=f()c[1].p=f()end
c[1].an=d(31)if d(24)>0 then
c[2].y=aM(d(25)*O+pi,d(26)*O,d(24))c[2].s=aA(c[2].y,W,U,at)c[2].p=D(c[2].s,Q)else
c[2].y=f()c[2].s=f()c[2].p=f()end
c[2].an=d(31)c[3].p=f(d(15),d(16),d(17))if m(c[3].p)>0 then
c[3].s=C(Q,c[3].p)c[3].y=aX(c[3].s,W,U,at)else
c[3].y=f()c[3].s=f()c[3].p=f()end
c[3].an=0
for g,z in Y(c)do
if(m(z.s)>0)and not(z.an>0)then
local match=0
for o,bj in Y(_)do
if match==0 then
if m(C(w(o),z.p))<=ad then
match=o
_[o].e[T]=z.p
_[o].A=0
au=E
aj=-1
for aC,aQ in S(_[o].e)do
aW=m(C(aQ,w(o)))if aW>=50 and aC>aj then
au=aQ
aj=aC
end
end
if au~=E then
aI=r(_[o].e,q)-aj
if aI>0 then
_[o].ak=aH(C(w(o),au),aI)end
else
_[o].ak=f()end
end
else
if m(C(w(o),z.p))<=ad then
ap(_,o)end
end
end
if match==0 then
_[#_+1]={e={[T]=z.p},ak=f(),V=f(),A=0}end
end
end
ab=0
for g,aY in Y(_)do
G=q
if N>120 then
local m=0
for aU in S(_[g].e)do
m=m+1
end
while m>40 do
_[g].e[r(_[g].e,R)]=E
m=m-1
ab=ab+1
end
end
_[g].A=_[g].A+1
_[g].V=D(w(g),B(_[g].ak,_[g].A))if(aY.A>=aR)then
if G then
ap(_,g)G=R
end
else
if w(g).h<=-1 then
_[g].e[r(_[g].e,q)].h=5
end
for u,H in S(M)do
if G then
if m(C(H,w(g)))<=ad then
if G then
ap(_,g)G=R
end
end
end
end
end
end
if ab>0 then N=0 end
if _[i]then
b(14,_[i].e[r(_[i].e,q)].j)b(15,_[i].e[r(_[i].e,q)].k)b(16,_[i].e[r(_[i].e,q)].h)end
if _[i+1]then
b(17,_[i+1].e[r(_[i+1].e,q)].j)b(18,_[i+1].e[r(_[i+1].e,q)].k)b(19,_[i+1].e[r(_[i+1].e,q)].h)end
b(26,i)b(27,i+1)i=i+2
if i>#_ then
i=1
end
debug.log("h: "..#L)am=M[L[v]]if M[v]then
b(20,am.j)b(21,am.k)b(22,am.h)end
b(28,v)v=v+1
if v>#L then
v=1
end
if _[F]then
b(30,_[F].V.j)b(31,_[F].V.k)b(32,_[F].V.h)b(11,_[F].A)else
b(30,0)b(31,0)b(32,0)b(11,0)end
b(5,0)b(6,0)b(7,0)b(8,0)b(9,1)b(10,1)end
