bt=""
bs="1"

aS=tonumber
M=ipairs
aF=string
aN=tostring
N=pairs
A=nil
U=false
m=true
ax=property
ap=input
as=table.remove
q,u,az,aE,bk,bi,bq=math,ap,output,ax,screen,m,U
e,b,bl,bg=u.getNumber,az.setNumber,u.getBool,az.setBool
z,bn=aE.getNumber,aE.getBool
abs,cos,sin,floor,atan=q.abs,q.cos,q.sin,q.floor,q.atan
pi=q.pi
X=pi*2
function g(j,k,h)return{j=j or 0,k=k or 0,h=h or 0}end
function B(a,l)return g(a.j+l.j,a.k+l.k,a.h+l.h)end
function D(a,K)return g(a.j*K,a.k*K,a.h*K)end
function bc(a)return D(a,-1)end
function G(a,l)return B(a,bc(l))end
function n(a)return q.sqrt(a.j*a.j+a.k*a.k+a.h*a.h)end
function aP(a,K)return D(a,1/K)end
function bm(a)return aP(a,n(a))end
function aa(a,l)return a.j*l.j+a.k*l.k+a.h*l.h
end
function bd(a,l)return g(a.k*l.h-a.h*l.k,a.h*l.j-a.j*l.h,a.j*l.k-a.k*l.j)end
function aD(aR,ab,at)aW=aW or 1
return g(q.sin(aR)*q.cos(ab)*at,q.cos(aR)*q.cos(ab)*at,q.sin(ab)*at)end
function aY(a,L,am,aw)return g(aa(L,a),aa(am,a),aa(aw,a))end
function aC(a,L,am,aw)return B(B(D(L,a.j),D(am,a.k)),D(aw,a.h))end
function p(ap,aK)local I=A
for f,aX in N(ap)do
if I==A or(f>I and aK)or(f<I and not aK)then
I=f
end
end
return I
end
function w(aT)return _[aT].d[p(_[aT].d,m)]end
aq=z("VL Strt Frq")ba=z("VL You Frq")aG=z("VL End Frq")ad=ax.getText("VL User")v=aq
bp=z("ML Strt Frq")bh=z("ML End Frq")au=z("Merge Dist")aV=z("Cull Time")be={}c={{},{},{}}_={}R={}bf={}C={}s,bj=0,0
i,H,br=0,0,0
Q,Y=0,0
function onTick()Y=Y+1
Q=Q+1
T=g(e(1),e(2),e(3))aB=e(27)==1
if aB and not bb and(#_>0)then
s=s%(#_)+1
end
bb=aB
aU=e(28)==1
ay,aH,aL=e(4),e(5),e(6)al,Z,ah=cos(ay),cos(aH),cos(aL)aO,ae,af=sin(ay),sin(aH),sin(aL)W=g(Z*ah,-ae,Z*af)P=g(aO*af+al*ae*ah,al*Z,-aO*ah+al*ae*af)ai=bd(W,P)aQ=g(e(7),e(9),e(8))if n(aQ)>0 then
local S={e(10),e(11)}x=bt
if S[1]>=1000000 and S[1]>=1000000 then
aI=aN(S[1]):sub(2,7)..aN(S[2]):sub(2,7)for u=1,#aI,3 do
x=x..aF.char(aI:sub(u,u+3-1))end
else
x="XXXX"
end
R[x]=aQ
av=A
for f,ag in M(C)do
if ag==x then
av=f
end
end
if av then
C[av]=x
else
C[#C+1]=x
end
end
R[ad]=T
O=bt
for u=1,#ad do
O=O..aF.format("%03d",ad:byte(u))end
b(1,aS(bs..O:sub(1,6)))b(2,aS(bs..O:sub(7,12)))v=v==aG and aq or v+1
if v==ba then
v=v==aG and aq or v+1
end
b(3,v)if e(18)>0 then
c[1].y=aD(e(19)*X,e(20)*X,e(18))c[1].t=aC(c[1].y,W,P,ai)c[1].o=B(c[1].t,T)else
c[1].y=g()c[1].t=g()c[1].o=g()end
c[1].an=e(31)if e(24)>0 then
c[2].y=aD(e(25)*X+pi,e(26)*X,e(24))c[2].t=aC(c[2].y,W,P,ai)c[2].o=B(c[2].t,T)else
c[2].y=g()c[2].t=g()c[2].o=g()end
c[2].an=e(31)c[3].o=g(e(15),e(16),e(17))if n(c[3].o)>0 then
c[3].t=G(T,c[3].o)c[3].y=aY(c[3].t,W,P,ai)else
c[3].y=g()c[3].t=g()c[3].o=g()end
c[3].an=0
for f,E in M(c)do
if(n(E.t)>0)and not(E.an>0)then
local aj=0
for r,bo in M(_)do
if aj==0 then
if n(G(w(r),E.o))<=au then
aj=r
_[r].d[Q]=E.o
_[r].F=0
ac=A
ar=-1
for aJ,aM in N(_[r].d)do
b_=n(G(aM,w(r)))if b_>=50 and aJ>ar then
ac=aM
ar=aJ
end
end
if ac~=A then
aA=p(_[r].d,m)-ar
if aA>0 then
_[r].ak=aP(G(w(r),ac),aA)end
else
_[r].ak=g()end
end
else
if n(G(w(r),E.o))<=au then
as(_,r)end
end
end
if aj==0 then
_[#_+1]={d={[Q]=E.o},ak=g(),aZ=g(),F=0}end
end
end
ao=0
for f,ag in M(_)do
J=m
if Y>120 then
local n=0
for aX in N(_[f].d)do
n=n+1
end
while n>40 do
_[f].d[p(_[f].d,U)]=A
n=n-1
ao=ao+1
end
end
_[f].F=_[f].F+1
_[f].aZ=B(w(f),D(_[f].ak,_[f].F))if(ag.F>=aV)then
if J then
as(_,f)J=U
end
else
if w(f).h<=-1 then
_[f].d[p(_[f].d,m)].h=5
end
for u,L in N(R)do
if J then
if n(G(L,w(f)))<=au then
if J then
as(_,f)J=U
end
end
end
end
end
end
if ao>0 then Y=0 end
if _[i]then
b(14,_[i].d[p(_[i].d,m)].j)b(15,_[i].d[p(_[i].d,m)].k)b(16,_[i].d[p(_[i].d,m)].h)end
if _[i+1]then
b(17,_[i+1].d[p(_[i+1].d,m)].j)b(18,_[i+1].d[p(_[i+1].d,m)].k)b(19,_[i+1].d[p(_[i+1].d,m)].h)end
b(26,i)b(27,i+1)i=i+2
if i>#_ then
i=1
end
V=R[C[H]]if V then
b(20,V.j)b(21,V.k)b(22,V.h)end
b(28,H)H=H+1
if H>#C then
H=1
end
if aU then
b(30,c[3].o.j)b(31,c[3].o.k)b(32,c[3].o.h)else
if _[s]then
b(30,_[s].d[p(_[s].d,m)].j)b(31,_[s].d[p(_[s].d,m)].k)b(32,_[s].d[p(_[s].d,m)].h)b(11,_[s].F)else
b(30,0)b(31,0)b(32,0)b(11,0)end
end
b(5,0)b(6,0)b(7,0)b(8,0)b(9,1)b(10,1)end
