br=""
bq="1"

aF=tonumber
S=ipairs
aK=string
aJ=tostring
Y=pairs
z=nil
V=false
J=true
aD=property
aB=input
az=table.remove
p,v,aG,aH,bk,bl,bm=math,aB,output,aD,screen,J,V
c,b,bh,bp=v.getNumber,aG.setNumber,v.getBool,aG.setBool
L,bj=aH.getNumber,aH.getBool
abs,cos,sin,floor,atan=p.abs,p.cos,p.sin,p.floor,p.atan
pi=p.pi
E=pi*2
function e(h,i,g)return{h=h or 0,i=i or 0,g=g or 0}end
function x(_,l)return e(_.h+l.h,_.i+l.i,_.g+l.g)end
function B(_,I)return e(_.h*I,_.i*I,_.g*I)end
function aX(_)return B(_,-1)end
function F(_,l)return x(_,aX(l))end
function n(_)return p.sqrt(_.h*_.h+_.i*_.i+_.g*_.g)end
function aR(_,I)return B(_,1/I)end
function bo(_)return aR(_,n(_))end
function as(_,l)return _.h*l.h+_.i*l.i+_.g*l.g
end
function b_(_,l)return e(_.i*l.g-_.g*l.i,_.g*l.h-_.h*l.g,_.h*l.i-_.i*l.h)end
function ag(aC,aA,ab)bg=bg or 1
return e(p.sin(aC)*p.cos(aA)*ab,p.cos(aC)*p.cos(aA)*ab,p.sin(aA)*ab)end
function bi(_,M,au,ac)return e(as(M,_),as(au,_),as(ac,_))end
function ad(_,M,au,ac)return x(x(B(M,_.h),B(au,_.i)),B(ac,_.g))end
function P(aB,aO)local K=z
for f,bc in Y(aB)do
if K==z or(f>K and aO)or(f<K and not aO)then
K=f
end
end
return K
end
function j(aE)return a[aE].q[P(a[aE].q,J)]end
an=L("VL Strt Frq")be=L("VL You Frq")aW=L("VL End Frq")W=aD.getText("VL User")t=an
aq=L("Merge Dist")ba=L("Cull Time")d={{},{},{}}a={}H={}D={}r=0
m,C=0,0
U,T=0,0
function onTick()T=T+1
U=U+1
X=e(c(1),c(2),c(3))aL=c(27)==1
if aL and not bb and(#a>0)then
r=r%(#a)+1
end
bb=aL
bf=c(28)==1
aV,aT,aP=c(4),c(5),c(6)aa,al,ah=cos(aV),cos(aT),cos(aP)aQ,ay,ap=sin(aV),sin(aT),sin(aP)R=e(al*ah,-ay,al*ap)Q=e(aQ*ap+aa*ay*ah,aa*al,-aQ*ah+aa*ay*ap)at=b_(R,Q)aI=e(c(7),c(9),c(8))bd=e(c(21),c(22),c(23))if n(aI)>0 then
local O={c(10),c(11)}w=br
if O[1]>=1000000 and O[1]>=1000000 then
aU=aJ(O[1]):sub(2,7)..aJ(O[2]):sub(2,7)for v=1,#aU,3 do
w=w..aK.char(aU:sub(v,v+3-1))end
else
w="XXXX"
end
H[w]={k=aI,af=bd}ak=z
for f,Z in S(D)do
if Z==w then
ak=f
end
end
if ak then
D[ak]=w
else
D[#D+1]=w
end
end
H[W]={k=X,af=e()}if a[r]then
H[W].af=j(r)end
N=br
for v=1,#W do
N=N..aK.format("%03d",W:byte(v))end
b(1,aF(bq..N:sub(1,6)))b(2,aF(bq..N:sub(7,12)))t=t==aW and an or t+1
if t==be then
t=t==aW and an or t+1
end
b(3,t)if c(18)>0 then
d[1].u=ag(c(19)*E,c(20)*E,c(18))d[1].s=ad(d[1].u,R,Q,at)d[1].k=x(d[1].s,X)else
d[1]={u=e(),s=e(),k=e()}end
d[1].ae=c(30)if c(12)>0 then
d[2].u=ag(c(13)*E,c(14)*E,c(12))d[2].s=ad(d[2].u,R,Q,at)d[2].k=x(d[2].s,X)else
d[2]={u=e(),s=e(),k=e()}end
d[2].ae=c(31)if c(24)>0 then
d[3].u=ag(c(25)*E+pi,c(26)*E,c(24))d[3].s=ad(d[3].u,R,Q,at)d[3].k=x(d[3].s,X)else
d[3]={u=e(),s=e(),k=e()}end
d[3].ae=c(32)for f,y in S(d)do
if(n(y.s)>0)and not(y.ae>0)then
local aw=0
for o,bn in S(a)do
if aw==0 then
if n(F(j(o),y.k))<=aq then
aw=o
a[o].q[U]=y.k
a[o].A=0
ax=z
am=-1
for aS,aM in Y(a[o].q)do
aY=n(F(aM,j(o)))if aY>=50 and aS>am then
ax=aM
am=aS
end
end
if ax~=z then
aN=P(a[o].q,J)-am
if aN>0 then
a[o].ao=aR(F(j(o),ax),aN)end
else
a[o].ao=e()end
end
else
if n(F(j(o),y.k))<=aq then
az(a,o)end
end
end
if aw==0 then
a[#a+1]={q={[U]=y.k},ao=e(),aZ=e(),A=0}end
end
end
ar=0
for f,Z in S(a)do
G=J
if T>120 then
local n=0
for bc in Y(a[f].q)do
n=n+1
end
while n>40 do
a[f].q[P(a[f].q,V)]=z
n=n-1
ar=ar+1
end
end
a[f].A=a[f].A+1
a[f].aZ=x(j(f),B(a[f].ao,a[f].A))if(Z.A>=ba)then
if G then
az(a,f)G=V
end
else
if j(f).g<=-1 then
a[f].q[P(a[f].q,J)].g=5
end
for v,M in Y(H)do
if G then
if n(F(M.k,j(f)))<=aq then
if G then
az(a,f)G=V
end
end
end
end
end
end
if ar>0 then T=0 end
if a[m]then
b(14,j(m).h)b(15,j(m).i)b(16,j(m).g)end
if a[m+1]then
b(17,j(m+1).h)b(18,j(m+1).i)b(19,j(m+1).g)end
b(26,m)m=m+2
if m>#a then
m=1
end
av=H[D[C]]if av then
aj=av.k
ai=av.af
b(20,aj.h)b(21,aj.i)b(22,aj.g)b(23,ai.h)b(24,ai.i)b(25,ai.g)end
b(28,C)C=C+1
if C>#D then
C=1
end
if bf then
b(30,d[3].k.h)b(31,d[3].k.i)b(32,d[3].k.g)else
if a[r]then
b(30,j(r).h)b(31,j(r).i)b(32,j(r).g)b(11,a[r].A)else
b(30,0)b(31,0)b(32,0)b(11,0)end
end
b(7,0)b(8,0)b(9,1)b(10,1)end
