-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>

bs=""
br="1"

ag=ipairs
aC=tonumber
aR=string
av=tostring
T=pairs
C=nil
aN=false
I=true
au=property
ao=input
ab=table.remove
l,s,aE,ax,bd,bo,bm=math,ao,output,au,screen,I,aN
d,i,bg,bl=s.getNumber,aE.setNumber,s.getBool,aE.setBool
r,bf=ax.getNumber,ax.getBool
abs,cos,sin,floor,atan=l.abs,l.cos,l.sin,l.floor,l.atan
pi=l.pi
M=pi*2
function e(j,h,g)return{j=j or 0,h=h or 0,g=g or 0}end
function x(_,c)return e(_.j+c.j,_.h+c.h,_.g+c.g)end
function bn(_,c)return e(_.j*c.j,_.h*c.h,_.g*c.g)end
function A(_,E)return e(_.j*E,_.h*E,_.g*E)end
function aZ(_)return A(_,-1)end
function w(_,c)return x(_,aZ(c))end
function k(_)return l.sqrt(_.j*_.j+_.h*_.h+_.g*_.g)end
function aK(_,E)return A(_,1/E)end
function bi(_)return aK(_,k(_))end
function ap(_,c)return _.j*c.j+_.h*c.h+_.g*c.g
end
function aT(_,c)return e(_.h*c.g-_.g*c.h,_.g*c.j-_.j*c.g,_.j*c.h-_.h*c.j)end
function aw(aQ,Z,an)aU=aU or 1
return e(l.sin(aQ)*l.cos(Z)*an,l.cos(aQ)*l.cos(Z)*an,l.sin(Z)*an)end
function aY(_,G,ah,af)return e(ap(G,_),ap(ah,_),ap(af,_))end
function ay(_,G,ah,af)return x(x(A(G,_.j),A(ah,_.h)),A(af,_.g))end
function bc(aP,c)if not _ then _={}_[c]={aq=0,ad=0}elseif not _[c]then _[c]={aq=0,ad=0}end;_[c].ad=aP-_[c].aq;_[c].aq=aP;return _[c].ad end
function bj(_,min,max)return l.max(min,l.min(_,max))end
function L(ao,aL)local H=C
for f,ba in T(ao)do
if H==C or(f>H and aL)or(f<H and not aL)then
H=f
end
end
return H
end
function u(aG)return a[aG].n[L(a[aG].n,I)]end
ar=r("VL Strt Frq")aW=r("VL You Frq")aD=r("VL End Frq")am=au.getText("VL User")q=ar
bp=r("ML Strt Frq")bq=r("ML End Frq")ae=r("Merge Dist")aX=r("Cull Time")bb=r("Min extrap dist delta")bh={}b={{},{},{}}a={}J={}aJ={}z,be=1,0
v,K,B=0,0,0
F,S=0,0
function onTick()S=S+1
F=F+1
U=e(d(1),d(2),d(3))az,aA,aH=d(4),d(5),d(6)Y,at,ai=cos(az),cos(aA),cos(aH)aS,as,X=sin(az),sin(aA),sin(aH)V=e(at*ai,-as,at*X)W=e(aS*X+Y*as*ai,Y*at,-aS*ai+Y*as*X)ak=aT(V,W)aM=e(d(7),d(8),d(9))if k(aM)>0 then
local Q={d(10),d(11)}O=bs
if Q[1]>=1000000 and Q[1]>=1000000 then
aO=av(Q[1]):sub(2,7)..av(Q[2]):sub(2,7)for s=1,#aO,3 do
O=O..aR.char(aO:sub(s,s+3-1))end
else
O="XXXX"
end
J[O]=aM
end
J[am]=U
P=bs
for s=1,#am do
P=P..aR.format("%03d",am:byte(s))end
i(1,aC(br..P:sub(1,6)))i(2,aC(br..P:sub(7,12)))q=q==aD and ar or q+1
if q==aW then
q=q==aD and ar or q+1
end
i(3,q)if d(18)>0 then
b[1].t=aw(d(19)*M,d(20)*M,d(18))b[1].p=ay(b[1].t,V,W,ak)b[1].o=x(b[1].p,U)else
b[1].t=e()b[1].p=e()b[1].o=e()end
b[1].ac=d(31)if d(24)>0 then
b[2].t=aw(d(25)*M+pi,d(26)*M,d(24))b[2].p=ay(b[2].t,V,W,ak)b[2].o=x(b[2].p,U)else
b[2].t=e()b[2].p=e()b[2].o=e()end
b[2].ac=d(31)b[3].o=e(d(15),d(16),d(17))if k(b[3].o)>0 then
b[3].p=w(U,b[3].o)b[3].t=aY(b[3].p,V,W,ak)else
b[3].t=e()b[3].p=e()b[3].o=e()end
b[3].ac=0
for f,y in ag(b)do
if(k(y.p)>0)and not(y.ac>0)then
local match=0
for m,bk in ag(a)do
if match==0 then
if k(w(u(m),y.o))<=ae then
match=m
a[m].n[F]=y.o
a[m].D=0
al=C
aa=-1
for aB,aF in T(a[m].n)do
aV=k(w(aF,u(m)))if aV>=bb and aB>aa then
al=aF
aa=aB
end
end
if al~=C then
aI=L(a[m].n,I)-aa
if aI>0 then
a[m].aj=aK(w(u(m),al),aI)end
else
a[m].aj=e()end
end
else
if k(w(u(m),y.o))<=ae then
ab(a,m)end
end
end
if match==0 then
a[#a+1]={n={[F]=y.o},aj=e(),R=e(),D=0}end
end
end
N=0
for f,b_ in ag(a)do
if S>120 then
local k=0
for ba in T(a[f].n)do
k=k+1
end
while k>40 do
a[f].n[L(a[f].n,aN)]=C
k=k-1
N=N+1
end
debug.log("culled "..N.." positions of target "..f)end
a[f].D=F-L(a[f].n,I)a[f].R=x(u(f),A(a[f].aj,a[f].D))if(b_.D>=aX)and not(f==z)then
ab(a,f)else
if u(f).g<=-1 then
a[f].n[L(a[f].n,I)].g=5
end
for s,G in T(J)do
if k(w(G,u(f)))<=ae then
ab(a,f)end
end
end
end
if N>0 then S=0 end
if a[v]then
end
if a[v+1]then
end
v=v+2
if v>#a then
v=1
end
if J[K]then
end
K=K+1
if K>#J then
K=1
end
if aJ[B]then
end
B=B+1
if B>#aJ then
B=1
end
if a[z]then
i(30,a[z].R.j)i(31,a[z].R.h)i(32,a[z].R.g)i(11,a[z].D)else
i(30,0)i(31,0)i(32,0)i(11,0)end
i(5,0)i(6,0)i(7,0)i(8,0)i(9,1)i(10,1)end
