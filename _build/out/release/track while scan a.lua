bq="1"
bp=""

aA=tonumber
S=ipairs
aQ=string
az=tostring
M=pairs
E=nil
Y=false
p=true
aL=property
ab=input
ag=table.remove
o,u,aG,aT,bl,bh,bb=math,ab,output,aL,screen,p,Y
d,b,bc,be=u.getNumber,aG.setNumber,u.getBool,aG.setBool
x,bo=aT.getNumber,aT.getBool
abs,cos,sin,floor,atan=o.abs,o.cos,o.sin,o.floor,o.atan
pi=o.pi
O=pi*2
function f(k,j,h)return{k=k or 0,j=j or 0,h=h or 0}end
function B(a,l)return f(a.k+l.k,a.j+l.j,a.h+l.h)end
function z(a,L)return f(a.k*L,a.j*L,a.h*L)end
function aZ(a)return z(a,-1)end
function A(a,l)return B(a,aZ(l))end
function m(a)return o.sqrt(a.k*a.k+a.j*a.j+a.h*a.h)end
function aH(a,L)return z(a,1/L)end
function bm(a)return aH(a,m(a))end
function at(a,l)return a.k*l.k+a.j*l.j+a.h*l.h
end
function b_(a,l)return f(a.j*l.h-a.h*l.j,a.h*l.k-a.k*l.h,a.k*l.j-a.j*l.k)end
function aF(aI,ak,ac)aX=aX or 1
return f(o.sin(aI)*o.cos(ak)*ac,o.cos(aI)*o.cos(ak)*ac,o.sin(ak)*ac)end
function aV(a,K,av,ad)return f(at(K,a),at(av,a),at(ad,a))end
function aR(a,K,av,ad)return B(B(z(K,a.k),z(av,a.j)),z(ad,a.h))end
function r(ab,aN)local J=E
for e,aW in M(ab)do
if J==E or(e>J and aN)or(e<J and not aN)then
J=e
end
end
return J
end
function v(ay)return _[ay].g[r(_[ay].g,p)]end
ar=x("VL Strt Frq")ba=x("VL You Frq")aE=x("VL End Frq")au=aL.getText("VL User")t=ar
bk=x("ML Strt Frq")bn=x("ML End Frq")an=x("Merge Dist")aU=x("Cull Time")bj={}c={{},{},{}}_={}T={}bd={}C={}H,bi=0,0
i,F,bg=0,0,0
Q,R=0,0
function onTick()R=R+1
Q=Q+1
P=f(d(1),d(2),d(3))aC,aB,aK=d(4),d(5),d(6)aa,af,aw=cos(aC),cos(aB),cos(aK)aO,ah,am=sin(aC),sin(aB),sin(aK)Z=f(af*aw,-ah,af*am)U=f(aO*am+aa*ah*aw,aa*af,-aO*aw+aa*ah*am)aj=b_(Z,U)aS=f(d(7),d(9),d(8))if m(aS)>0 then
local N={d(10),d(11)}y=bp
if N[1]>=1000000 and N[1]>=1000000 then
aJ=az(N[1]):sub(2,7)..az(N[2]):sub(2,7)for u=1,#aJ,3 do
y=y..aQ.char(aJ:sub(u,u+3-1))end
else
y="XXXX"
end
T[y]=aS
ax=E
for e,ap in S(C)do
if ap==y then
ax=e
end
end
if ax then
C[ax]=y
else
C[#C+1]=y
end
end
T[au]=P
V=bp
for u=1,#au do
V=V..aQ.format("%03d",au:byte(u))end
b(1,aA(bq..V:sub(1,6)))b(2,aA(bq..V:sub(7,12)))t=t==aE and ar or t+1
if t==ba then
t=t==aE and ar or t+1
end
b(3,t)if d(18)>0 then
c[1].w=aF(d(19)*O,d(20)*O,d(18))c[1].s=aR(c[1].w,Z,U,aj)c[1].q=B(c[1].s,P)else
c[1].w=f()c[1].s=f()c[1].q=f()end
c[1].ae=d(31)if d(24)>0 then
c[2].w=aF(d(25)*O+pi,d(26)*O,d(24))c[2].s=aR(c[2].w,Z,U,aj)c[2].q=B(c[2].s,P)else
c[2].w=f()c[2].s=f()c[2].q=f()end
c[2].ae=d(31)c[3].q=f(d(15),d(16),d(17))if m(c[3].q)>0 then
c[3].s=A(P,c[3].q)c[3].w=aV(c[3].s,Z,U,aj)else
c[3].w=f()c[3].s=f()c[3].q=f()end
c[3].ae=0
for e,G in S(c)do
if(m(G.s)>0)and not(G.ae>0)then
local aq=0
for n,bf in S(_)do
if aq==0 then
if m(A(v(n),G.q))<=an then
aq=n
_[n].g[Q]=G.q
_[n].D=0
as=E
ao=-1
for aM,aD in M(_[n].g)do
aY=m(A(aD,v(n)))if aY>=50 and aM>ao then
as=aD
ao=aM
end
end
if as~=E then
aP=r(_[n].g,p)-ao
if aP>0 then
_[n].al=aH(A(v(n),as),aP)end
else
_[n].al=f()end
end
else
if m(A(v(n),G.q))<=an then
ag(_,n)end
end
end
if aq==0 then
_[#_+1]={g={[Q]=G.q},al=f(),W=f(),D=0}end
end
end
ai=0
for e,ap in S(_)do
I=p
if R>120 then
local m=0
for aW in M(_[e].g)do
m=m+1
end
while m>40 do
_[e].g[r(_[e].g,Y)]=E
m=m-1
ai=ai+1
end
end
_[e].D=_[e].D+1
_[e].W=B(v(e),z(_[e].al,_[e].D))if(ap.D>=aU)then
if I then
ag(_,e)I=Y
end
else
if v(e).h<=-1 then
_[e].g[r(_[e].g,p)].h=5
end
for u,K in M(T)do
if I then
if m(A(K,v(e)))<=an then
if I then
ag(_,e)I=Y
end
end
end
end
end
end
if ai>0 then R=0 end
if _[i]then
b(14,_[i].g[r(_[i].g,p)].k)b(15,_[i].g[r(_[i].g,p)].j)b(16,_[i].g[r(_[i].g,p)].h)end
if _[i+1]then
b(17,_[i+1].g[r(_[i+1].g,p)].k)b(18,_[i+1].g[r(_[i+1].g,p)].j)b(19,_[i+1].g[r(_[i+1].g,p)].h)end
b(26,i)b(27,i+1)i=i+2
if i>#_ then
i=1
end
X=T[C[F]]if X then
b(20,X.k)b(21,X.j)b(22,X.h)end
b(28,F)F=F+1
if F>#C then
F=1
end
if _[H]then
b(30,_[H].W.k)b(31,_[H].W.j)b(32,_[H].W.h)b(11,_[H].D)else
b(30,0)b(31,0)b(32,0)b(11,0)end
b(5,0)b(6,0)b(7,0)b(8,0)b(9,1)b(10,1)end
