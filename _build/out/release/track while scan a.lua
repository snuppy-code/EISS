br=""
bq="1"

aP=tonumber
O=ipairs
aU=string
aG=tostring
N=pairs
y=nil
X=false
J=true
aR=property
aA=input
ah=table.remove
o,u,aO,aW,bj,bk,bm=math,aA,output,aR,screen,J,X
c,b,bn,bi=u.getNumber,aO.setNumber,u.getBool,aO.setBool
M,bh=aW.getNumber,aW.getBool
abs,cos,sin,floor,atan=o.abs,o.cos,o.sin,o.floor,o.atan
pi=o.pi
B=pi*2
function e(h,i,f)return{h=h or 0,i=i or 0,f=f or 0}end
function x(_,l)return e(_.h+l.h,_.i+l.i,_.f+l.f)end
function C(_,G)return e(_.h*G,_.i*G,_.f*G)end
function be(_)return C(_,-1)end
function I(_,l)return x(_,be(l))end
function n(_)return o.sqrt(_.h*_.h+_.i*_.i+_.f*_.f)end
function aH(_,G)return C(_,1/G)end
function bo(_)return aH(_,n(_))end
function az(_,l)return _.h*l.h+_.i*l.i+_.f*l.f
end
function bb(_,l)return e(_.i*l.f-_.f*l.i,_.f*l.h-_.h*l.f,_.h*l.i-_.i*l.h)end
function am(aF,al,ar)bc=bc or 1
return e(o.sin(aF)*o.cos(al)*ar,o.cos(aF)*o.cos(al)*ar,o.sin(al)*ar)end
function bl(_,L,ad,ak)return e(az(L,_),az(ad,_),az(ak,_))end
function af(_,L,ad,ak)return x(x(C(L,_.h),C(ad,_.i)),C(ak,_.f))end
function P(aA,aI)local F=y
for g,b_ in N(aA)do
if F==y or(g>F and aI)or(g<F and not aI)then
F=g
end
end
return F
end
function j(aK)return a[aK].q[P(a[aK].q,J)]end
ae=M("VL Strt Frq")bd=M("VL You Frq")aV=M("VL End Frq")R=aR.getText("VL User")v=ae
ax=M("Merge Dist")aZ=M("Cull Time")d={{},{},{}}a={}K={}z={}r=0
m,E=0,0
W,T=0,0
function onTick()T=T+1
W=W+1
S=e(c(1),c(2),c(3))aD=c(27)==1
if aD and not ba and(#a>0)then
r=r%(#a)+1
end
ba=aD
bg=c(28)==1
aE,aC,aM=c(4),c(5),c(6)an,ac,aa=cos(aE),cos(aC),cos(aM)aQ,aj,aw=sin(aE),sin(aC),sin(aM)Q=e(ac*aa,-aj,ac*aw)Y=e(aQ*aw+an*aj*aa,an*ac,-aQ*aa+an*aj*aw)ai=bb(Q,Y)aJ=e(c(7),c(9),c(8))aX=e(c(21),c(22),c(23))if n(aJ)>0 then
local V={c(10),c(11)}w=br
if V[1]>=1000000 and V[1]>=1000000 then
aT=aG(V[1]):sub(2,7)..aG(V[2]):sub(2,7)for u=1,#aT,3 do
w=w..aU.char(aT:sub(u,u+3-1))end
else
w="XXXX"
end
K[w]={k=aJ,ao=aX}Z=y
for g,aB in O(z)do
if aB==w then
Z=g
end
end
if Z then
z[Z]=w
else
z[#z+1]=w
end
end
K[R]={k=S,ao=e()}if a[r]then
K[R].ao=j(r)end
U=br
for u=1,#R do
U=U..aU.format("%03d",R:byte(u))end
b(1,aP(bq..U:sub(1,6)))b(2,aP(bq..U:sub(7,12)))v=v==aV and ae or v+1
if v==bd then
v=v==aV and ae or v+1
end
b(3,v)if c(18)>0 then
d[1].t=am(c(19)*B,c(20)*B,c(18))d[1].s=af(d[1].t,Q,Y,ai)d[1].k=x(d[1].s,S)else
d[1]={t=e(),s=e(),k=e()}end
d[1].ay=c(30)if c(12)>0 then
d[2].t=am(c(13)*B,c(14)*B,c(12))d[2].s=af(d[2].t,Q,Y,ai)d[2].k=x(d[2].s,S)else
d[2]={t=e(),s=e(),k=e()}end
d[2].ay=c(31)if c(24)>0 then
d[3].t=am(c(25)*B+pi,c(26)*B,c(24))d[3].s=af(d[3].t,Q,Y,ai)d[3].k=x(d[3].s,S)else
d[3]={t=e(),s=e(),k=e()}end
d[3].ay=c(32)for g,D in O(d)do
if(n(D.s)>0)and not(D.ay>0)then
local ag=0
for p,bp in O(a)do
if ag==0 then
if n(I(j(p),D.k))<=ax then
ag=p
a[p].q[W]=D.k
a[p].A=0
au=y
as=-1
for aN,aL in N(a[p].q)do
aY=n(I(aL,j(p)))if aY>=50 and aN>as then
au=aL
as=aN
end
end
if au~=y then
aS=P(a[p].q,J)-as
if aS>0 then
a[p].av=aH(I(j(p),au),aS)end
else
a[p].av=e()end
end
else
if n(I(j(p),D.k))<=ax then
ah(a,p)end
end
end
if ag==0 then
a[#a+1]={q={[W]=D.k},av=e(),bf=e(),A=0}end
end
end
at=0
for g,aB in O(a)do
H=J
if T>120 then
local n=0
for b_ in N(a[g].q)do
n=n+1
end
while n>40 do
a[g].q[P(a[g].q,X)]=y
n=n-1
at=at+1
end
end
a[g].A=a[g].A+1
a[g].bf=x(j(g),C(a[g].av,a[g].A))if(aB.A>=aZ)then
if H then
ah(a,g)H=X
end
else
if j(g).f<=-1 then
a[g].q[P(a[g].q,J)].f=5
end
for u,L in N(K)do
if H then
if n(I(L.k,j(g)))<=ax then
if H then
ah(a,g)H=X
end
end
end
end
end
end
if at>0 then T=0 end
if a[m]then
b(14,j(m).h)b(15,j(m).i)b(16,j(m).f)end
if a[m+1]then
b(17,j(m+1).h)b(18,j(m+1).i)b(19,j(m+1).f)end
b(26,m)m=m+2
if m>#a then
m=1
end
ab=K[z[E]]if ab then
aq=ab.k
ap=ab.ao
b(20,aq.h)b(21,aq.i)b(22,aq.f)b(23,ap.h)b(24,ap.i)b(25,ap.f)end
b(28,E)E=E+1
if E>#z then
E=1
end
if bg then
b(30,d[3].k.h)b(31,d[3].k.i)b(32,d[3].k.f)else
if a[r]then
b(30,j(r).h)b(31,j(r).i)b(32,j(r).f)b(11,a[r].A)else
b(30,0)b(31,0)b(32,0)b(11,0)end
end
b(7,0)b(8,0)b(9,1)b(10,1)end
