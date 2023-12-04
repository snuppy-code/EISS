bq=""
bp="1"

aO=tonumber
V=ipairs
aA=string
aC=tostring
N=pairs
D=nil
U=false
p=true
aB=property
aq=input
aj=table.remove
n,t,aR,aE,bb,bh,bd=math,aq,output,aB,screen,p,U
d,c,bo,bi=t.getNumber,aR.setNumber,t.getBool,aR.setBool
v,bf=aE.getNumber,aE.getBool
abs,cos,sin,floor,atan=n.abs,n.cos,n.sin,n.floor,n.atan
pi=n.pi
Z=pi*2
function e(k,j,h)return{k=k or 0,j=j or 0,h=h or 0}end
function E(a,l)return e(a.k+l.k,a.j+l.j,a.h+l.h)end
function B(a,L)return e(a.k*L,a.j*L,a.h*L)end
function aU(a)return B(a,-1)end
function C(a,l)return E(a,aU(l))end
function m(a)return n.sqrt(a.k*a.k+a.j*a.j+a.h*a.h)end
function aT(a,L)return B(a,1/L)end
function bm(a)return aT(a,m(a))end
function aw(a,l)return a.k*l.k+a.j*l.j+a.h*l.h
end
function aY(a,l)return e(a.j*l.h-a.h*l.j,a.h*l.k-a.k*l.h,a.k*l.j-a.j*l.k)end
function aJ(aG,ag,ad)aV=aV or 1
return e(n.sin(aG)*n.cos(ag)*ad,n.cos(aG)*n.cos(ag)*ad,n.sin(ag)*ad)end
function aW(a,K,av,ar)return e(aw(K,a),aw(av,a),aw(ar,a))end
function aQ(a,K,av,ar)return E(E(B(K,a.k),B(av,a.j)),B(ar,a.h))end
function r(aq,aS)local I=D
for f,aX in N(aq)do
if I==D or(f>I and aS)or(f<I and not aS)then
I=f
end
end
return I
end
function y(aH)return _[aH].g[r(_[aH].g,p)]end
ae=v("VL Strt Frq")aZ=v("VL You Frq")aF=v("VL End Frq")at=aB.getText("VL User")u=ae
bj=v("ML Strt Frq")bl=v("ML End Frq")ap=v("Merge Dist")b_=v("Cull Time")bc={}b={{},{},{}}_={}Y={}bg={}z={}H,bn=0,0
i,F,be=0,0,0
M,R=0,0
function onTick()R=R+1
M=M+1
S=e(d(1),d(2),d(3))aD,ay,aN=d(4),d(5),d(6)am,af,au=cos(aD),cos(ay),cos(aN)aP,ac,ao=sin(aD),sin(ay),sin(aN)O=e(af*au,-ac,af*ao)T=e(aP*ao+am*ac*au,am*af,-aP*au+am*ac*ao)ab=aY(O,T)az=e(d(7),d(9),d(8))if m(az)>0 then
local P={d(10),d(11)}w=bq
if P[1]>=1000000 and P[1]>=1000000 then
aK=aC(P[1]):sub(2,7)..aC(P[2]):sub(2,7)for t=1,#aK,3 do
w=w..aA.char(aK:sub(t,t+3-1))end
else
w="XXXX"
end
Y[w]=az
as=D
for f,an in V(z)do
if an==w then
as=f
end
end
if as then
z[as]=w
else
z[#z+1]=w
end
end
Y[at]=S
Q=bq
for t=1,#at do
Q=Q..aA.format("%03d",at:byte(t))end
c(1,aO(bp..Q:sub(1,6)))c(2,aO(bp..Q:sub(7,12)))u=u==aF and ae or u+1
if u==aZ then
u=u==aF and ae or u+1
end
c(3,u)if d(18)>0 then
b[1].x=aJ(d(19)*Z,d(20)*Z,d(18))b[1].s=aQ(b[1].x,O,T,ab)b[1].q=E(b[1].s,S)else
b[1].x=e()b[1].s=e()b[1].q=e()end
b[1].al=d(31)if d(24)>0 then
b[2].x=aJ(d(25)*Z+pi,d(26)*Z,d(24))b[2].s=aQ(b[2].x,O,T,ab)b[2].q=E(b[2].s,S)else
b[2].x=e()b[2].s=e()b[2].q=e()end
b[2].al=d(31)b[3].q=e(d(15),d(16),d(17))if m(b[3].q)>0 then
b[3].s=C(S,b[3].q)b[3].x=aW(b[3].s,O,T,ab)else
b[3].x=e()b[3].s=e()b[3].q=e()end
b[3].al=0
for f,A in V(b)do
if(m(A.s)>0)and not(A.al>0)then
local ax=0
for o,bk in V(_)do
if ax==0 then
if m(C(y(o),A.q))<=ap then
ax=o
_[o].g[M]=A.q
_[o].G=0
ah=D
ai=-1
for aI,aL in N(_[o].g)do
ba=m(C(aL,y(o)))if ba>=50 and aI>ai then
ah=aL
ai=aI
end
end
if ah~=D then
aM=r(_[o].g,p)-ai
if aM>0 then
_[o].ak=aT(C(y(o),ah),aM)end
else
_[o].ak=e()end
end
else
if m(C(y(o),A.q))<=ap then
aj(_,o)end
end
end
if ax==0 then
_[#_+1]={g={[M]=A.q},ak=e(),X=e(),G=0}end
end
end
aa=0
for f,an in V(_)do
J=p
if R>120 then
local m=0
for aX in N(_[f].g)do
m=m+1
end
while m>40 do
_[f].g[r(_[f].g,U)]=D
m=m-1
aa=aa+1
end
end
_[f].G=_[f].G+1
_[f].X=E(y(f),B(_[f].ak,_[f].G))if(an.G>=b_)then
if J then
aj(_,f)J=U
end
else
if y(f).h<=-1 then
_[f].g[r(_[f].g,p)].h=5
end
for t,K in N(Y)do
if J then
if m(C(K,y(f)))<=ap then
if J then
aj(_,f)J=U
end
end
end
end
end
end
if aa>0 then R=0 end
if _[i]then
c(14,_[i].g[r(_[i].g,p)].k)c(15,_[i].g[r(_[i].g,p)].j)c(16,_[i].g[r(_[i].g,p)].h)end
if _[i+1]then
c(17,_[i+1].g[r(_[i+1].g,p)].k)c(18,_[i+1].g[r(_[i+1].g,p)].j)c(19,_[i+1].g[r(_[i+1].g,p)].h)end
c(26,i)c(27,i+1)i=i+2
if i>#_ then
i=1
end
W=Y[z[F]]if W then
c(20,W.k)c(21,W.j)c(22,W.h)end
c(28,F)F=F+1
if F>#z then
F=1
end
if _[H]then
c(30,_[H].X.k)c(31,_[H].X.j)c(32,_[H].X.h)c(11,_[H].G)else
c(30,0)c(31,0)c(32,0)c(11,0)end
c(5,0)c(6,0)c(7,0)c(8,0)c(9,1)c(10,1)end
