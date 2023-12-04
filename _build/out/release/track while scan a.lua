bq=""
bp="1"

aC=tonumber
V=ipairs
aD=string
aE=tostring
X=pairs
B=nil
Z=false
p=true
aI=property
ag=input
as=table.remove
o,u,aP,aB,bk,bb,bl=math,ag,output,aI,screen,p,Z
d,c,bg,bi=u.getNumber,aP.setNumber,u.getBool,aP.setBool
v,be=aB.getNumber,aB.getBool
abs,cos,sin,floor,atan=o.abs,o.cos,o.sin,o.floor,o.atan
pi=o.pi
N=pi*2
function e(k,j,h)return{k=k or 0,j=j or 0,h=h or 0}end
function E(a,l)return e(a.k+l.k,a.j+l.j,a.h+l.h)end
function z(a,J)return e(a.k*J,a.j*J,a.h*J)end
function ba(a)return z(a,-1)end
function A(a,l)return E(a,ba(l))end
function m(a)return o.sqrt(a.k*a.k+a.j*a.j+a.h*a.h)end
function aL(a,J)return z(a,1/J)end
function bj(a)return aL(a,m(a))end
function at(a,l)return a.k*l.k+a.j*l.j+a.h*l.h
end
function aY(a,l)return e(a.j*l.h-a.h*l.j,a.h*l.k-a.k*l.h,a.k*l.j-a.j*l.k)end
function aJ(aQ,av,af)aX=aX or 1
return e(o.sin(aQ)*o.cos(av)*af,o.cos(aQ)*o.cos(av)*af,o.sin(av)*af)end
function aV(a,H,ae,an)return e(at(H,a),at(ae,a),at(an,a))end
function aG(a,H,ae,an)return E(E(z(H,a.k),z(ae,a.j)),z(an,a.h))end
function r(ag,ay)local K=B
for f,b_ in X(ag)do
if K==B or(f>K and ay)or(f<K and not ay)then
K=f
end
end
return K
end
function y(aO)return _[aO].g[r(_[aO].g,p)]end
ac=v("VL Strt Frq")aW=v("VL You Frq")aM=v("VL End Frq")ai=aI.getText("VL User")t=ac
bh=v("ML Strt Frq")bf=v("ML End Frq")ao=v("Merge Dist")aU=v("Cull Time")bm={}b={{},{},{}}_={}Q={}bd={}D={}I,bn=0,0
i,C,bo=0,0,0
R,M=0,0
function onTick()M=M+1
R=R+1
T=e(d(1),d(2),d(3))aT,aK,aN=d(4),d(5),d(6)aq,ad,ax=cos(aT),cos(aK),cos(aN)aS,al,aw=sin(aT),sin(aK),sin(aN)Y=e(ad*ax,-al,ad*aw)P=e(aS*aw+aq*al*ax,aq*ad,-aS*ax+aq*al*aw)ar=aY(Y,P)aF=e(d(7),d(9),d(8))if m(aF)>0 then
local S={d(10),d(11)}x=bq
if S[1]>=1000000 and S[1]>=1000000 then
aA=aE(S[1]):sub(2,7)..aE(S[2]):sub(2,7)for u=1,#aA,3 do
x=x..aD.char(aA:sub(u,u+3-1))end
else
x="XXXX"
end
Q[x]=aF
ak=B
for f,ap in V(D)do
if ap==x then
ak=f
end
end
if ak then
D[ak]=x
else
D[#D+1]=x
end
end
Q[ai]=T
W=bq
for u=1,#ai do
W=W..aD.format("%03d",ai:byte(u))end
c(1,aC(bp..W:sub(1,6)))c(2,aC(bp..W:sub(7,12)))t=t==aM and ac or t+1
if t==aW then
t=t==aM and ac or t+1
end
c(3,t)if d(18)>0 then
b[1].w=aJ(d(19)*N,d(20)*N,d(18))b[1].s=aG(b[1].w,Y,P,ar)b[1].q=E(b[1].s,T)else
b[1].w=e()b[1].s=e()b[1].q=e()end
b[1].ab=d(31)if d(24)>0 then
b[2].w=aJ(d(25)*N+pi,d(26)*N,d(24))b[2].s=aG(b[2].w,Y,P,ar)b[2].q=E(b[2].s,T)else
b[2].w=e()b[2].s=e()b[2].q=e()end
b[2].ab=d(31)b[3].q=e(d(15),d(16),d(17))if m(b[3].q)>0 then
b[3].s=A(T,b[3].q)b[3].w=aV(b[3].s,Y,P,ar)else
b[3].w=e()b[3].s=e()b[3].q=e()end
b[3].ab=0
for f,F in V(b)do
if(m(F.s)>0)and not(F.ab>0)then
local aj=0
for n,bc in V(_)do
if aj==0 then
if m(A(y(n),F.q))<=ao then
aj=n
_[n].g[R]=F.q
_[n].G=0
au=B
ah=-1
for aH,aR in X(_[n].g)do
aZ=m(A(aR,y(n)))if aZ>=50 and aH>ah then
au=aR
ah=aH
end
end
if au~=B then
az=r(_[n].g,p)-ah
if az>0 then
_[n].am=aL(A(y(n),au),az)end
else
_[n].am=e()end
end
else
if m(A(y(n),F.q))<=ao then
as(_,n)end
end
end
if aj==0 then
_[#_+1]={g={[R]=F.q},am=e(),U=e(),G=0}end
end
end
aa=0
for f,ap in V(_)do
L=p
if M>120 then
local m=0
for b_ in X(_[f].g)do
m=m+1
end
while m>40 do
_[f].g[r(_[f].g,Z)]=B
m=m-1
aa=aa+1
end
end
_[f].G=_[f].G+1
_[f].U=E(y(f),z(_[f].am,_[f].G))if(ap.G>=aU)then
if L then
as(_,f)L=Z
end
else
if y(f).h<=-1 then
_[f].g[r(_[f].g,p)].h=5
end
for u,H in X(Q)do
if L then
if m(A(H,y(f)))<=ao then
if L then
as(_,f)L=Z
end
end
end
end
end
end
if aa>0 then M=0 end
if _[i]then
c(14,_[i].g[r(_[i].g,p)].k)c(15,_[i].g[r(_[i].g,p)].j)c(16,_[i].g[r(_[i].g,p)].h)end
if _[i+1]then
c(17,_[i+1].g[r(_[i+1].g,p)].k)c(18,_[i+1].g[r(_[i+1].g,p)].j)c(19,_[i+1].g[r(_[i+1].g,p)].h)end
c(26,i)c(27,i+1)i=i+2
if i>#_ then
i=1
end
O=Q[D[C]]if O then
c(20,O.k)c(21,O.j)c(22,O.h)end
c(28,C)C=C+1
if C>#D then
C=1
end
if _[I]then
c(30,_[I].U.k)c(31,_[I].U.j)c(32,_[I].U.h)c(11,_[I].G)else
c(30,0)c(31,0)c(32,0)c(11,0)end
c(5,0)c(6,0)c(7,0)c(8,0)c(9,1)c(10,1)end
