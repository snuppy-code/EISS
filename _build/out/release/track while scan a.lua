bt="1"
bs=""

aC=tonumber
Q=ipairs
aL=string
aK=tostring
N=pairs
C=nil
V=false
n=true
aS=property
at=input
ap=table.remove
r,v,aQ,aI,bh,bi,bo=math,at,output,aS,screen,n,V
e,b,bk,br=v.getNumber,aQ.setNumber,v.getBool,aQ.setBool
z,bg=aI.getNumber,aI.getBool
abs,cos,sin,floor,atan=r.abs,r.cos,r.sin,r.floor,r.atan
pi=r.pi
U=pi*2
function g(k,j,h)return{k=k or 0,j=j or 0,h=h or 0}end
function D(a,l)return g(a.k+l.k,a.j+l.j,a.h+l.h)end
function B(a,K)return g(a.k*K,a.j*K,a.h*K)end
function aU(a)return B(a,-1)end
function F(a,l)return D(a,aU(l))end
function m(a)return r.sqrt(a.k*a.k+a.j*a.j+a.h*a.h)end
function aO(a,K)return B(a,1/K)end
function be(a)return aO(a,m(a))end
function an(a,l)return a.k*l.k+a.j*l.j+a.h*l.h
end
function bc(a,l)return g(a.j*l.h-a.h*l.j,a.h*l.k-a.k*l.h,a.k*l.j-a.j*l.k)end
function aN(aF,ae,Z)b_=b_ or 1
return g(r.sin(aF)*r.cos(ae)*Z,r.cos(aF)*r.cos(ae)*Z,r.sin(ae)*Z)end
function bd(a,L,aw,ar)return g(an(L,a),an(aw,a),an(ar,a))end
function ay(a,L,aw,ar)return D(D(B(L,a.k),B(aw,a.j)),B(ar,a.h))end
function p(at,aE)local J=C
for f,bb in N(at)do
if J==C or(f>J and aE)or(f<J and not aE)then
J=f
end
end
return J
end
function y(aJ)return _[aJ].d[p(_[aJ].d,n)]end
aj=z("VL Strt Frq")aZ=z("VL You Frq")aB=z("VL End Frq")au=aS.getText("VL User")u=aj
bl=z("ML Strt Frq")bm=z("ML End Frq")aa=z("Merge Dist")aV=z("Cull Time")bj={}c={{},{},{}}_={}S={}bf={}A={}s,bp=0,0
i,H,bn=0,0,0
W,Y=0,0
function onTick()Y=Y+1
W=W+1
P=g(e(1),e(2),e(3))aH=e(27)==1
if aH and not aY and(#_>0)then
s=s%(#_)+1
end
aY=aH
aW=e(28)==1
aP,ax,aT=e(4),e(5),e(6)ab,ad,ac=cos(aP),cos(ax),cos(aT)aG,ao,ak=sin(aP),sin(ax),sin(aT)R=g(ad*ac,-ao,ad*ak)M=g(aG*ak+ab*ao*ac,ab*ad,-aG*ac+ab*ao*ak)as=bc(R,M)aD=g(e(7),e(9),e(8))if m(aD)>0 then
local O={e(10),e(11)}x=bs
if O[1]>=1000000 and O[1]>=1000000 then
aA=aK(O[1]):sub(2,7)..aK(O[2]):sub(2,7)for v=1,#aA,3 do
x=x..aL.char(aA:sub(v,v+3-1))end
else
x="XXXX"
end
S[x]=aD
av=C
for f,ah in Q(A)do
if ah==x then
av=f
end
end
if av then
A[av]=x
else
A[#A+1]=x
end
end
S[au]=P
T=bs
for v=1,#au do
T=T..aL.format("%03d",au:byte(v))end
b(1,aC(bt..T:sub(1,6)))b(2,aC(bt..T:sub(7,12)))u=u==aB and aj or u+1
if u==aZ then
u=u==aB and aj or u+1
end
b(3,u)if e(18)>0 then
c[1].w=aN(e(19)*U,e(20)*U,e(18))c[1].t=ay(c[1].w,R,M,as)c[1].o=D(c[1].t,P)else
c[1].w=g()c[1].t=g()c[1].o=g()end
c[1].af=e(31)if e(24)>0 then
c[2].w=aN(e(25)*U+pi,e(26)*U,e(24))c[2].t=ay(c[2].w,R,M,as)c[2].o=D(c[2].t,P)else
c[2].w=g()c[2].t=g()c[2].o=g()end
c[2].af=e(31)c[3].o=g(e(15),e(16),e(17))if m(c[3].o)>0 then
c[3].t=F(P,c[3].o)c[3].w=bd(c[3].t,R,M,as)else
c[3].w=g()c[3].t=g()c[3].o=g()end
c[3].af=0
for f,E in Q(c)do
if(m(E.t)>0)and not(E.af>0)then
local ai=0
for q,bq in Q(_)do
if ai==0 then
if m(F(y(q),E.o))<=aa then
ai=q
_[q].d[W]=E.o
_[q].G=0
ag=C
al=-1
for aR,aM in N(_[q].d)do
ba=m(F(aM,y(q)))if ba>=50 and aR>al then
ag=aM
al=aR
end
end
if ag~=C then
az=p(_[q].d,n)-al
if az>0 then
_[q].am=aO(F(y(q),ag),az)end
else
_[q].am=g()end
end
else
if m(F(y(q),E.o))<=aa then
ap(_,q)end
end
end
if ai==0 then
_[#_+1]={d={[W]=E.o},am=g(),aX=g(),G=0}end
end
end
aq=0
for f,ah in Q(_)do
I=n
if Y>120 then
local m=0
for bb in N(_[f].d)do
m=m+1
end
while m>40 do
_[f].d[p(_[f].d,V)]=C
m=m-1
aq=aq+1
end
end
_[f].G=_[f].G+1
_[f].aX=D(y(f),B(_[f].am,_[f].G))if(ah.G>=aV)then
if I then
ap(_,f)I=V
end
else
if y(f).h<=-1 then
_[f].d[p(_[f].d,n)].h=5
end
for v,L in N(S)do
if I then
if m(F(L,y(f)))<=aa then
if I then
ap(_,f)I=V
end
end
end
end
end
end
if aq>0 then Y=0 end
if _[i]then
b(14,_[i].d[p(_[i].d,n)].k)b(15,_[i].d[p(_[i].d,n)].j)b(16,_[i].d[p(_[i].d,n)].h)end
if _[i+1]then
b(17,_[i+1].d[p(_[i+1].d,n)].k)b(18,_[i+1].d[p(_[i+1].d,n)].j)b(19,_[i+1].d[p(_[i+1].d,n)].h)end
b(26,i)b(27,i+1)i=i+2
if i>#_ then
i=1
end
X=S[A[H]]if X then
b(20,X.k)b(21,X.j)b(22,X.h)end
b(28,H)H=H+1
if H>#A then
H=1
end
if aW then
b(30,c[3].o.k)b(31,c[3].o.j)b(32,c[3].o.h)else
if _[s]then
b(30,_[s].d[p(_[s].d,n)].k)b(31,_[s].d[p(_[s].d,n)].j)b(32,_[s].d[p(_[s].d,n)].h)b(11,_[s].G)else
b(30,0)b(31,0)b(32,0)b(11,0)end
end
b(5,0)b(6,0)b(7,0)b(8,0)b(9,1)b(10,1)end
