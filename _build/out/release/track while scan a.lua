bn=""
bm="1"

aH=tonumber
S=ipairs
aL=string
aG=tostring
R=pairs
B=nil
Y=false
o=true
aT=property
ad=input
ag=table.remove
q,v,aP,aE,be,bf,bj=math,ad,output,aT,screen,o,Y
c,d,bh,bg=v.getNumber,aP.setNumber,v.getBool,aP.setBool
K,bk=aE.getNumber,aE.getBool
abs,cos,sin,floor,atan=q.abs,q.cos,q.sin,q.floor,q.atan
pi=q.pi
C=pi*2
function f(j,i,h)return{j=j or 0,i=i or 0,h=h or 0}end
function x(a,l)return f(a.j+l.j,a.i+l.i,a.h+l.h)end
function H(a,P)return f(a.j*P,a.i*P,a.h*P)end
function aU(a)return H(a,-1)end
function F(a,l)return x(a,aU(l))end
function n(a)return q.sqrt(a.j*a.j+a.i*a.i+a.h*a.h)end
function aB(a,P)return H(a,1/P)end
function bl(a)return aB(a,n(a))end
function ai(a,l)return a.j*l.j+a.i*l.i+a.h*l.h
end
function b_(a,l)return f(a.i*l.h-a.h*l.i,a.h*l.j-a.j*l.h,a.j*l.i-a.i*l.j)end
function av(az,ah,ar)aV=aV or 1
return f(q.sin(az)*q.cos(ah)*ar,q.cos(az)*q.cos(ah)*ar,q.sin(ah)*ar)end
function aZ(a,L,ax,aw)return f(ai(L,a),ai(ax,a),ai(aw,a))end
function af(a,L,ax,aw)return x(x(H(L,a.j),H(ax,a.i)),H(aw,a.h))end
function p(ad,aS)local M=B
for g,aX in R(ad)do
if M==B or(g>M and aS)or(g<M and not aS)then
M=g
end
end
return M
end
function z(aD)return _[aD].e[p(_[aD].e,o)]end
ac=K("VL Strt Frq")bd=K("VL You Frq")aJ=K("VL End Frq")ae=aT.getText("VL User")w=ac
ab=K("Merge Dist")aY=K("Cull Time")b={{},{},{},{}}_={}X={}G={}t=0
k,A=0,0
W,aa=0,0
function onTick()aa=aa+1
W=W+1
I=f(c(1),c(2),c(3))aA=c(27)==1
if aA and not bb and(#_>0)then
t=t%(#_)+1
end
bb=aA
ba=c(28)==1
aQ,aM,aI=c(4),c(5),c(6)ak,al,an=cos(aQ),cos(aM),cos(aI)aK,ay,at=sin(aQ),sin(aM),sin(aI)O=f(al*an,-ay,al*at)J=f(aK*at+ak*ay*an,ak*al,-aK*an+ak*ay*at)V=b_(O,J)aN=f(c(7),c(9),c(8))if n(aN)>0 then
local U={c(10),c(11)}y=bn
if U[1]>=1000000 and U[1]>=1000000 then
aO=aG(U[1]):sub(2,7)..aG(U[2]):sub(2,7)for v=1,#aO,3 do
y=y..aL.char(aO:sub(v,v+3-1))end
else
y="XXXX"
end
X[y]=aN
au=B
for g,am in S(G)do
if am==y then
au=g
end
end
if au then
G[au]=y
else
G[#G+1]=y
end
end
X[ae]=I
Z=bn
for v=1,#ae do
Z=Z..aL.format("%03d",ae:byte(v))end
d(1,aH(bm..Z:sub(1,6)))d(2,aH(bm..Z:sub(7,12)))w=w==aJ and ac or w+1
if w==bd then
w=w==aJ and ac or w+1
end
d(3,w)if c(18)>0 then
b[1].u=av(c(19)*C,c(20)*C,c(18))b[1].s=af(b[1].u,O,J,V)b[1].m=x(b[1].s,I)else
b[1]={u=f(),s=f(),m=f()}end
b[1].T=c(30)if c(12)>0 then
b[2].u=av(c(13)*C,c(14)*C,c(12))b[2].s=af(b[2].u,O,J,V)b[2].m=x(b[2].s,I)else
b[2]={u=f(),s=f(),m=f()}end
b[2].T=c(31)if c(24)>0 then
b[3].u=av(c(25)*C+pi,c(26)*C,c(24))b[3].s=af(b[3].u,O,J,V)b[3].m=x(b[3].s,I)else
b[3]={u=f(),s=f(),m=f()}end
b[3].T=c(32)b[4].m=f(c(15),c(16),c(17))if n(b[4].m)>0 then
b[4].s=F(I,b[4].m)b[4].u=aZ(b[4].s,O,J,V)else
b[4]={u=f(),s=f(),m=f()}end
b[4].T=0
for g,E in S(b)do
if(n(E.s)>0)and not(E.T>0)then
local ap=0
for r,bi in S(_)do
if ap==0 then
if n(F(z(r),E.m))<=ab then
ap=r
_[r].e[W]=E.m
_[r].D=0
aq=B
as=-1
for aR,aF in R(_[r].e)do
aW=n(F(aF,z(r)))if aW>=50 and aR>as then
aq=aF
as=aR
end
end
if aq~=B then
aC=p(_[r].e,o)-as
if aC>0 then
_[r].aj=aB(F(z(r),aq),aC)end
else
_[r].aj=f()end
end
else
if n(F(z(r),E.m))<=ab then
ag(_,r)end
end
end
if ap==0 then
_[#_+1]={e={[W]=E.m},aj=f(),bc=f(),D=0}end
end
end
ao=0
for g,am in S(_)do
N=o
if aa>120 then
local n=0
for aX in R(_[g].e)do
n=n+1
end
while n>40 do
_[g].e[p(_[g].e,Y)]=B
n=n-1
ao=ao+1
end
end
_[g].D=_[g].D+1
_[g].bc=x(z(g),H(_[g].aj,_[g].D))if(am.D>=aY)then
if N then
ag(_,g)N=Y
end
else
if z(g).h<=-1 then
_[g].e[p(_[g].e,o)].h=5
end
for v,L in R(X)do
if N then
if n(F(L,z(g)))<=ab then
if N then
ag(_,g)N=Y
end
end
end
end
end
end
if ao>0 then aa=0 end
if _[k]then
d(14,_[k].e[p(_[k].e,o)].j)d(15,_[k].e[p(_[k].e,o)].i)d(16,_[k].e[p(_[k].e,o)].h)end
if _[k+1]then
d(17,_[k+1].e[p(_[k+1].e,o)].j)d(18,_[k+1].e[p(_[k+1].e,o)].i)d(19,_[k+1].e[p(_[k+1].e,o)].h)end
d(26,k)k=k+2
if k>#_ then
k=1
end
Q=X[G[A]]if Q then
d(20,Q.j)d(21,Q.i)d(22,Q.h)end
d(28,A)A=A+1
if A>#G then
A=1
end
if ba then
d(30,b[3].m.j)d(31,b[3].m.i)d(32,b[3].m.h)else
if _[t]then
d(30,_[t].e[p(_[t].e,o)].j)d(31,_[t].e[p(_[t].e,o)].i)d(32,_[t].e[p(_[t].e,o)].h)d(11,_[t].D)else
d(30,0)d(31,0)d(32,0)d(11,0)end
end
d(7,0)d(8,0)d(9,1)d(10,1)end
