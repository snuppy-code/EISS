br=""
bq="1"

aK=tonumber
X=ipairs
aI=string
aE=tostring
Y=pairs
B=nil
U=false
G=true
aF=property
al=input
aB=table.remove
p,t,aQ,aW,bp,bj,bk=math,al,output,aF,screen,G,U
c,b,bh,bm=t.getNumber,aQ.setNumber,t.getBool,aQ.setBool
F,bo=aW.getNumber,aW.getBool
abs,cos,sin,floor,atan=p.abs,p.cos,p.sin,p.floor,p.atan
pi=p.pi
E=pi*2
function e(i,h,g)return{i=i or 0,h=h or 0,g=g or 0}end
function x(_,k)return e(_.i+k.i,_.h+k.h,_.g+k.g)end
function C(_,M)return e(_.i*M,_.h*M,_.g*M)end
function bd(_)return C(_,-1)end
function L(_,k)return x(_,bd(k))end
function n(_)return p.sqrt(_.i*_.i+_.h*_.h+_.g*_.g)end
function aJ(_,M)return C(_,1/M)end
function bl(_)return aJ(_,n(_))end
function am(_,k)return _.i*k.i+_.h*k.h+_.g*k.g
end
function bg(_,k)return e(_.h*k.g-_.g*k.h,_.g*k.i-_.i*k.g,_.i*k.h-_.h*k.i)end
function aq(aC,ab,an)aZ=aZ or 1
return e(p.sin(aC)*p.cos(ab)*an,p.cos(aC)*p.cos(ab)*an,p.sin(ab)*an)end
function bn(_,H,ad,ac)return e(am(H,_),am(ad,_),am(ac,_))end
function aA(_,H,ad,ac)return x(x(C(H,_.i),C(ad,_.h)),C(ac,_.g))end
function S(al,aH)local I=B
for f,be in Y(al)do
if I==B or(f>I and aH)or(f<I and not aH)then
I=f
end
end
return I
end
function j(aO)return a[aO].q[S(a[aO].q,G)]end
ae=F("VL Strt Frq")aX=F("VL You Frq")aL=F("VL End Frq")W=aF.getText("VL User")v=ae
ax=F("Merge Dist")ba=F("Cull Time")d={{},{},{}}a={}J={}z={}s=0
m,D=0,0
T,Q=0,0
function onTick()Q=Q+1
T=T+1
P=e(c(1),c(2),c(3))aS=c(27)==1
if aS and not b_ and(#a>0)then
s=s%(#a)+1
end
b_=aS
bf=c(28)==1
aG,aP,aV=c(4),c(5),c(6)ay,Z,ah=cos(aG),cos(aP),cos(aV)aU,af,aj=sin(aG),sin(aP),sin(aV)R=e(Z*ah,-af,Z*aj)V=e(aU*aj+ay*af*ah,ay*Z,-aU*ah+ay*af*aj)az=bg(R,V)aN=e(c(7),c(9),c(8))bc=e(c(21),c(22),c(23))if n(aN)>0 then
local O={c(10),c(11)}w=br
if O[1]>=1000000 and O[1]>=1000000 then
aM=aE(O[1]):sub(2,7)..aE(O[2]):sub(2,7)for t=1,#aM,3 do
w=w..aI.char(aM:sub(t,t+3-1))end
else
w="XXXX"
end
J[w]={l=aN,av=bc}at=B
for f,aa in X(z)do
if aa==w then
at=f
end
end
if at then
z[at]=w
else
z[#z+1]=w
end
end
J[W]={l=P,av=e()}if a[s]then
J[W].av=j(s)end
N=br
for t=1,#W do
N=N..aI.format("%03d",W:byte(t))end
b(1,aK(bq..N:sub(1,6)))b(2,aK(bq..N:sub(7,12)))v=v==aL and ae or v+1
if v==aX then
v=v==aL and ae or v+1
end
b(3,v)if c(18)>0 then
d[1].u=aq(c(19)*E,c(20)*E,c(18))d[1].r=aA(d[1].u,R,V,az)d[1].l=x(d[1].r,P)else
d[1]={u=e(),r=e(),l=e()}end
d[1].au=c(30)if c(12)>0 then
d[2].u=aq(c(13)*E,c(14)*E,c(12))d[2].r=aA(d[2].u,R,V,az)d[2].l=x(d[2].r,P)else
d[2]={u=e(),r=e(),l=e()}end
d[2].au=c(31)if c(24)>0 then
d[3].u=aq(c(25)*E+pi,c(26)*E,c(24))d[3].r=aA(d[3].u,R,V,az)d[3].l=x(d[3].r,P)else
d[3]={u=e(),r=e(),l=e()}end
d[3].au=c(32)for f,A in X(d)do
if(n(A.r)>0)and not(A.au>0)then
local ar=0
for o,bi in X(a)do
if ar==0 then
if n(L(j(o),A.l))<=ax then
ar=o
a[o].q[T]=A.l
a[o].y=0
as=B
aw=-1
for aD,aT in Y(a[o].q)do
bb=n(L(aT,j(o)))if bb>=50 and aD>aw then
as=aT
aw=aD
end
end
if as~=B then
aR=S(a[o].q,G)-aw
if aR>0 then
a[o].ag=aJ(L(j(o),as),aR)end
else
a[o].ag=e()end
end
else
if n(L(j(o),A.l))<=ax then
aB(a,o)end
end
end
if ar==0 then
a[#a+1]={q={[T]=A.l},ag=e(),aY=e(),y=0}end
end
end
ao=0
for f,aa in X(a)do
K=G
if Q>120 then
local n=0
for be in Y(a[f].q)do
n=n+1
end
while n>40 do
a[f].q[S(a[f].q,U)]=B
n=n-1
ao=ao+1
end
end
a[f].y=a[f].y+1
a[f].aY=x(j(f),C(a[f].ag,a[f].y))if(aa.y>=ba)then
if K then
aB(a,f)K=U
end
else
if j(f).g<=-1 then
a[f].q[S(a[f].q,G)].g=5
end
for t,H in Y(J)do
if K then
if n(L(H.l,j(f)))<=ax then
if K then
aB(a,f)K=U
end
end
end
end
end
end
if ao>0 then Q=0 end
if a[m]then
b(14,j(m).i)b(15,j(m).h)b(16,j(m).g)end
if a[m+1]then
b(17,j(m+1).i)b(18,j(m+1).h)b(19,j(m+1).g)end
b(26,m)m=m+2
if m>#a then
m=1
end
ak=J[z[D]]if ak then
ap=ak.l
ai=ak.av
b(20,ap.i)b(21,ap.h)b(22,ap.g)b(23,ai.i)b(24,ai.h)b(25,ai.g)end
b(28,D)D=D+1
if D>#z then
D=1
end
if bf then
b(30,d[3].l.i)b(31,d[3].l.h)b(32,d[3].l.g)else
if a[s]then
b(30,j(s).i)b(31,j(s).h)b(32,j(s).g)b(11,a[s].y)else
b(30,0)b(31,0)b(32,0)b(11,0)end
end
b(7,0)b(8,0)b(9,1)b(10,1)end
