-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>

ba=""
b_="\n"
aZ="shifted selected down 1 to "
aY=" "
aX="1"

aC=tonumber
O=ipairs
ax=string
aw=tostring
V=false
aA=true
au=property
aa=table.remove
x=debug.log
o,r,ar,aD,aS,aW,aQ=math,input,output,au,screen,aA,V
b,d,aU,aT=r.getNumber,ar.setNumber,r.getBool,ar.setBool
E,aR=aD.getNumber,aD.getBool
abs,cos,sin,floor,atan=o.abs,o.cos,o.sin,o.floor,o.atan
pi=o.pi
z=pi*2
function f(h,i,g)return{h=h or 0,i=i or 0,g=g or 0}end
function A(a,k)return f(a.h+k.h,a.i+k.i,a.g+k.g)end
function H(a,F)return f(a.h*F,a.i*F,a.g*F)end
function aN(a)return H(a,-1)end
function S(a,k)return A(a,aN(k))end
function t(a)return o.sqrt(a.h*a.h+a.i*a.i+a.g*a.g)end
function aO(a,F)return H(a,1/F)end
function aV(a)return aO(a,t(a))end
function aj(a,k)return a.h*k.h+a.i*k.i+a.g*k.g
end
function aJ(a,k)return f(a.i*k.g-a.g*k.i,a.g*k.h-a.h*k.g,a.h*k.i-a.i*k.h)end
function am(aE,ak,T)aM=aM or 1
return f(o.sin(aE)*o.cos(ak)*T,o.cos(aE)*o.cos(ak)*T,o.sin(ak)*T)end
function aK(a,K,Y,ab)return f(aj(K,a),aj(Y,a),aj(ab,a))end
function ap(a,K,Y,ab)return A(A(H(K,a.h),H(Y,a.i)),H(ab,a.g))end
ao=E("VL Strt Frq")aP=E("VL You Frq")as=E("VL End Frq")P=au.getText("VL User")s=ao
ag=E("Merge Dist")aL=E("Cull Time")e={{},{},{},{}}c={}C={}w={}j=0
m,B=0,0
function onTick()J=f(b(1),b(2),b(3))aq=b(27)==1
if aq and not aG and(#c>0)then
j=j%(#c)+1
x("cycled: "..j)end
aG=aq
aH=b(28)==1
aB,aF,av=b(4),b(5),b(6)ac,X,ad=cos(aB),cos(aF),cos(av)at,ah,ai=sin(aB),sin(aF),sin(av)L=f(X*ad,-ah,X*ai)D=f(at*ai+ac*ah*ad,ac*X,-at*ad+ac*ah*ai)Q=aJ(L,D)az=f(b(7),b(9),b(8))aI=f(b(21),b(22),b(23))if t(az)>0 then
local M={b(10),b(11)}u=ba
if M[1]>=1000000 and M[1]>=1000000 then
ay=aw(M[1]):sub(2,7)..aw(M[2]):sub(2,7)for r=1,#ay,3 do
u=u..ax.char(ay:sub(r,r+3-1))end
else
u="XXXX"
end
C[u]={_=az,W=aI}af=nil
for l,q in O(w)do
if q==u then
af=l
end
end
if af then
w[af]=u
else
w[#w+1]=u
end
end
C[P]={_=J,W=f()}if c[j]then
C[P].W=c[j]._
end
R=ba
for r=1,#P do
R=R..ax.format("%03d",P:byte(r))end
d(1,aC(aX..R:sub(1,6)))d(2,aC(aX..R:sub(7,12)))s=s==as and ao or s+1
if s==aP then
s=s==as and ao or s+1
end
d(3,s)if b(18)>0 then
e[1].p=am(b(19)*z,b(20)*z,b(18))e[1].n=ap(e[1].p,L,D,Q)e[1]._=A(e[1].n,J)else
e[1]={p=f(),n=f(),_=f()}end
e[1].N=b(30)if b(12)>0 then
e[2].p=am(b(13)*z,b(14)*z,b(12))e[2].n=ap(e[2].p,L,D,Q)e[2]._=A(e[2].n,J)else
e[2]={p=f(),n=f(),_=f()}end
e[2].N=b(31)if b(24)>0 then
e[3].p=am(b(25)*z+pi,b(26)*z,b(24))e[3].n=ap(e[3].p,L,D,Q)e[3]._=A(e[3].n,J)else
e[3]={p=f(),n=f(),_=f()}end
e[3].N=b(32)e[4]._=f(b(15),b(16),b(17))if t(e[4]._)>0 then
e[4].n=S(J,e[4]._)e[4].p=aK(e[4].n,L,D,Q)else
e[4]={p=f(),n=f(),_=f()}end
e[4].N=0
for l,y in O(e)do
if(t(y.n)>0)and not(y.N>0)then
local Z=0
for v,an in O(c)do
if Z==0 then
if t(S(c[v]._,y._))<=ag then
Z=v
c[v]._=y._
c[v].G=0
end
else
if t(S(c[v]._,y._))<=ag then
x("merged: "..v..b_..an._.h..aY..an._.i..aY..an._.g)aa(c,v)end
end
end
if Z==0 then
c[#c+1]={_=y._,G=0}end
end
end
for l,q in O(c)do
I=aA
c[l].G=c[l].G+1
if(q.G>=aL)and not(l==j)then
x("tmdout: "..l..b_..q._.h..aY..q._.i..aY..q._.g)if I then
aa(c,l)if l<j then
j=j-1
x(aZ..j)end
I=V
end
else
if c[l]._.g<=-1 then
c[l]._.g=5
end
for r,K in pairs(C)do
if I then
if t(S(K._,c[l]._))<=ag then
if I then
x("fdist-removed: "..l..b_..q._.h..aY..q._.i..aY..q._.g)aa(c,l)if l<j then
j=j-1
x(aZ..j)end
I=V
end
end
end
end
end
end
if c[m]then
d(14,c[m]._.h)d(15,c[m]._.i)d(16,c[m]._.g)end
if c[m+1]then
d(17,c[m+1]._.h)d(18,c[m+1]._.i)d(19,c[m+1]._.g)end
d(26,m)m=m+2
if m>#c then
m=1
end
ae=C[w[B]]if ae then
U=ae._
al=ae.W
d(20,U.h)d(21,U.i)d(22,U.g)d(23,al.h)d(24,al.i)d(25,al.g)end
d(28,B)B=B+1
if B>#w then
B=1
end
if aH then
d(30,0)d(31,0)d(32,0)else
if c[j]then
d(30,c[j]._.h)d(31,c[j]._.i)d(32,c[j]._.g)d(11,c[j].G)else
d(30,0)d(31,0)d(32,0)d(11,0)end
end
d(7,0)d(8,0)d(9,1)d(10,1)end
