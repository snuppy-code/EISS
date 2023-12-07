br=""
bq="1"

aQ=tonumber
Q=ipairs
aN=string
aI=tostring
O=pairs
C=nil
P=false
M=true
aJ=property
at=input
ac=table.remove
p,u,aW,aL,bk,bn,bi=math,at,output,aJ,screen,M,P
c,b,bo,bm=u.getNumber,aW.setNumber,u.getBool,aW.setBool
F,bh=aL.getNumber,aL.getBool
abs,cos,sin,floor,atan=p.abs,p.cos,p.sin,p.floor,p.atan
pi=p.pi
D=pi*2
function e(i,h,g)return{i=i or 0,h=h or 0,g=g or 0}end
function x(_,k)return e(_.i+k.i,_.h+k.h,_.g+k.g)end
function E(_,G)return e(_.i*G,_.h*G,_.g*G)end
function bc(_)return E(_,-1)end
function J(_,k)return x(_,bc(k))end
function n(_)return p.sqrt(_.i*_.i+_.h*_.h+_.g*_.g)end
function aE(_,G)return E(_,1/G)end
function bl(_)return aE(_,n(_))end
function az(_,k)return _.i*k.i+_.h*k.h+_.g*k.g
end
function bg(_,k)return e(_.h*k.g-_.g*k.h,_.g*k.i-_.i*k.g,_.i*k.h-_.h*k.i)end
function af(aS,ao,Z)aX=aX or 1
return e(p.sin(aS)*p.cos(ao)*Z,p.cos(aS)*p.cos(ao)*Z,p.sin(ao)*Z)end
function bp(_,I,an,aB)return e(az(I,_),az(an,_),az(aB,_))end
function aa(_,I,an,aB)return x(x(E(I,_.i),E(an,_.h)),E(aB,_.g))end
function T(at,aT)local L=C
for f,aZ in O(at)do
if L==C or(f>L and aT)or(f<L and not aT)then
L=f
end
end
return L
end
function j(aK)return a[aK].q[T(a[aK].q,M)]end
ar=F("VL Strt Frq")ba=F("VL You Frq")aG=F("VL End Frq")R=aJ.getText("VL User")t=ar
aj=F("Merge Dist")b_=F("Cull Time")d={{},{},{}}a={}H={}z={}s=0
m,y=0,0
S,N=0,0
function onTick()N=N+1
S=S+1
Y=e(c(1),c(2),c(3))aP=c(27)==1
if aP and not aY and(#a>0)then
s=s%(#a)+1
end
aY=aP
bf=c(28)==1
aC,aV,aD=c(4),c(5),c(6)au,aw,ap=cos(aC),cos(aV),cos(aD)aF,al,am=sin(aC),sin(aV),sin(aD)V=e(aw*ap,-al,aw*am)W=e(aF*am+au*al*ap,au*aw,-aF*ap+au*al*am)ai=bg(V,W)aH=e(c(7),c(9),c(8))be=e(c(21),c(22),c(23))if n(aH)>0 then
local U={c(10),c(11)}w=br
if U[1]>=1000000 and U[1]>=1000000 then
aM=aI(U[1]):sub(2,7)..aI(U[2]):sub(2,7)for u=1,#aM,3 do
w=w..aN.char(aM:sub(u,u+3-1))end
else
w="XXXX"
end
H[w]={l=aH,aq=be}ak=C
for f,as in Q(z)do
if as==w then
ak=f
end
end
if ak then
z[ak]=w
else
z[#z+1]=w
end
end
H[R]={l=Y,aq=e()}if a[s]then
H[R].aq=j(s)end
X=br
for u=1,#R do
X=X..aN.format("%03d",R:byte(u))end
b(1,aQ(bq..X:sub(1,6)))b(2,aQ(bq..X:sub(7,12)))t=t==aG and ar or t+1
if t==ba then
t=t==aG and ar or t+1
end
b(3,t)if c(18)>0 then
d[1].v=af(c(19)*D,c(20)*D,c(18))d[1].r=aa(d[1].v,V,W,ai)d[1].l=x(d[1].r,Y)else
d[1]={v=e(),r=e(),l=e()}end
d[1].ax=c(30)if c(12)>0 then
d[2].v=af(c(13)*D,c(14)*D,c(12))d[2].r=aa(d[2].v,V,W,ai)d[2].l=x(d[2].r,Y)else
d[2]={v=e(),r=e(),l=e()}end
d[2].ax=c(31)if c(24)>0 then
d[3].v=af(c(25)*D+pi,c(26)*D,c(24))d[3].r=aa(d[3].v,V,W,ai)d[3].l=x(d[3].r,Y)else
d[3]={v=e(),r=e(),l=e()}end
d[3].ax=c(32)for f,A in Q(d)do
if(n(A.r)>0)and not(A.ax>0)then
local ag=0
for o,bj in Q(a)do
if ag==0 then
if n(J(j(o),A.l))<=aj then
ag=o
a[o].q[S]=A.l
a[o].B=0
av=C
ae=-1
for aO,aR in O(a[o].q)do
bd=n(J(aR,j(o)))if bd>=50 and aO>ae then
av=aR
ae=aO
end
end
if av~=C then
aU=T(a[o].q,M)-ae
if aU>0 then
a[o].ad=aE(J(j(o),av),aU)end
else
a[o].ad=e()end
end
else
if n(J(j(o),A.l))<=aj then
ac(a,o)end
end
end
if ag==0 then
a[#a+1]={q={[S]=A.l},ad=e(),bb=e(),B=0}end
end
end
ah=0
for f,as in Q(a)do
K=M
if N>120 then
local n=0
for aZ in O(a[f].q)do
n=n+1
end
while n>40 do
a[f].q[T(a[f].q,P)]=C
n=n-1
ah=ah+1
end
end
a[f].B=a[f].B+1
a[f].bb=x(j(f),E(a[f].ad,a[f].B))if(as.B>=b_)then
if K then
ac(a,f)K=P
end
else
if j(f).g<=-1 then
a[f].q[T(a[f].q,M)].g=5
end
for u,I in O(H)do
if K then
if n(J(I.l,j(f)))<=aj then
if K then
ac(a,f)K=P
end
end
end
end
end
end
if ah>0 then N=0 end
if a[m]then
b(14,j(m).i)b(15,j(m).h)b(16,j(m).g)end
if a[m+1]then
b(17,j(m+1).i)b(18,j(m+1).h)b(19,j(m+1).g)end
b(26,m)m=m+2
if m>#a then
m=1
end
ab=H[z[y]]if ab then
ay=ab.l
aA=ab.aq
b(20,ay.i)b(21,ay.h)b(22,ay.g)b(23,aA.i)b(24,aA.h)b(25,aA.g)end
b(28,y)y=y+1
if y>#z then
y=1
end
if bf then
b(30,d[3].l.i)b(31,d[3].l.h)b(32,d[3].l.g)else
if a[s]then
b(30,j(s).i)b(31,j(s).h)b(32,j(s).g)b(11,a[s].B)else
b(30,0)b(31,0)b(32,0)b(11,0)end
end
b(7,0)b(8,0)b(9,1)b(10,1)end
