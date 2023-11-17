-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>

bs=""
br="1"

W=ipairs
aC=tonumber
aA=string
at=tostring
K=pairs
B=nil
aB=false
E=true
aR=property
ar=input
ae=table.remove
k,r,ay,aP,bg,bq,bm=math,ar,output,aR,screen,E,aB
d,m,bl,bf=r.getNumber,ay.setNumber,r.getBool,ay.setBool
q,bc=aP.getNumber,aP.getBool
abs,cos,sin,floor,atan=k.abs,k.cos,k.sin,k.floor,k.atan
pi=k.pi
O=pi*2
function f(h,i,g)return{h=h or 0,i=i or 0,g=g or 0}end
function x(_,c)return f(_.h+c.h,_.i+c.i,_.g+c.g)end
function bh(_,c)return f(_.h*c.h,_.i*c.i,_.g*c.g)end
function v(_,J)return f(_.h*J,_.i*J,_.g*J)end
function aX(_)return v(_,-1)end
function y(_,c)return x(_,aX(c))end
function j(_)return k.sqrt(_.h*_.h+_.i*_.i+_.g*_.g)end
function aE(_,J)return v(_,1/J)end
function bp(_)return aE(_,j(_))end
function am(_,c)return _.h*c.h+_.i*c.i+_.g*c.g
end
function aV(_,c)return f(_.i*c.g-_.g*c.i,_.g*c.h-_.h*c.g,_.h*c.i-_.i*c.h)end
function au(aJ,as,ah)b_=b_ or 1
return f(k.sin(aJ)*k.cos(as)*ah,k.cos(aJ)*k.cos(as)*ah,k.sin(as)*ah)end
function aU(_,D,ap,ak)return f(am(D,_),am(ap,_),am(ak,_))end
function aw(_,D,ap,ak)return x(x(v(D,_.h),v(ap,_.i)),v(ak,_.g))end
function be(aF,c)if not _ then _={}_[c]={aj=0,V=0}elseif not _[c]then _[c]={aj=0,V=0}end;_[c].V=aF-_[c].aj;_[c].aj=aF;return _[c].V end
function bj(_,min,max)return k.max(min,k.min(_,max))end
function G(ar,aG)local I=B
for e,aY in K(ar)do
if I==B or(e>I and aG)or(e<I and not aG)then
I=e
end
end
return I
end
function u(aM)return a[aM].o[G(a[aM].o,E)]end
Y=q("VL Strt Frq")aS=q("VL You Frq")az=q("VL End Frq")af=aR.getText("VL User")s=Y
bk=q("ML Strt Frq")bd=q("ML End Frq")ai=q("Merge Dist")bb=q("Cull Time")aZ=q("Min extrap dist delta")bn={}b={{},{},{}}a={}F={}aI={}ba,bi=0,0
w,A,H=0,0,0
C,X=0,0
function onTick()X=X+1
C=C+1
Q=f(d(1),d(2),d(3))aD,ax,av=d(4),d(5),d(6)al,aa,aq=cos(aD),cos(ax),cos(av)aK,ab,an=sin(aD),sin(ax),sin(av)P=f(aa*aq,-ab,aa*an)N=f(aK*an+al*ab*aq,al*aa,-aK*aq+al*ab*an)U=aV(P,N)aO=f(d(7),d(8),d(9))if j(aO)>0 then
local S={d(10),d(11)}T=bs
if S[1]>=1000000 and S[1]>=1000000 then
aN=at(S[1]):sub(2,7)..at(S[2]):sub(2,7)for r=1,#aN,3 do
T=T..aA.char(aN:sub(r,r+3-1))end
else
T="XXXX"
end
F[T]=aO
end
F[af]=Q
R=bs
for r=1,#af do
R=R..aA.format("%03d",af:byte(r))end
m(1,aC(br..R:sub(1,6)))m(2,aC(br..R:sub(7,12)))s=s==az and Y or s+1
if s==aS then
s=s==az and Y or s+1
end
m(3,s)if d(18)>0 then
b[1].t=au(d(19)*O,d(20)*O,d(18))b[1].p=aw(b[1].t,P,N,U)b[1].n=x(b[1].p,Q)else
b[1].t=f()b[1].p=f()b[1].n=f()end
b[1].ao=d(31)if d(24)>0 then
b[2].t=au(d(25)*O+pi,d(26)*O,d(24))b[2].p=aw(b[2].t,P,N,U)b[2].n=x(b[2].p,Q)else
b[2].t=f()b[2].p=f()b[2].n=f()end
b[2].ao=d(31)b[3].n=f(d(15),d(16),d(17))if j(b[3].n)>0 then
b[3].p=y(Q,b[3].n)b[3].t=aU(b[3].p,P,N,U)else
b[3].t=f()b[3].p=f()b[3].n=f()end
b[3].ao=0
for e,z in W(b)do
if(j(z.p)>0)and not(z.ao>0)then
local match=0
for l,bo in W(a)do
if match==0 then
if j(y(u(l),z.n))<=ai then
match=l
a[l].o[C]=z.n
a[l].M=0
ac=B
ad=-1
for aL,aQ in K(a[l].o)do
aW=j(y(aQ,u(l)))if aW>=aZ and aL>ad then
ac=aQ
ad=aL
end
end
if ac~=B then
aH=G(a[l].o,E)-ad
if aH>0 then
a[l].ag=aE(y(u(l),ac),aH)end
else
a[l].ag=f()end
end
else
if j(y(u(l),z.n))<=ai then
ae(a,l)end
end
end
if match==0 then
a[#a+1]={o={[C]=z.n},ag=f(),L=f(),M=0}end
end
end
for e,aT in W(a)do
if X>120 then
local Z=0
local j=0
for e,aY in K(a[e].o)do
j=j+1
end
while j>40 do
a[e].o[G(a[e].o,aB)]=B
j=j-1
Z=Z+1
end
debug.log("culled "..Z.." positions of target "..e)end
a[e].M=C-G(a[e].o,E)a[e].L=x(u(e),v(a[e].ag,a[e].M))if(aT.M>=bb)and not(e==ba)then
ae(a,e)else
if u(e).g<=-1 then
a[e].o[G(a[e].o,E)].g=5
end
for r,D in K(F)do
if j(y(D,u(e)))<=ai then
ae(a,e)end
end
end
end
if a[1]then
m(30,a[1].L.h)m(31,a[1].L.i)m(32,a[1].L.g)else
m(30,0)m(31,0)m(32,0)end
if a[w]then
end
if a[w+1]then
end
w=w+2
if w>#a then
w=1
end
if F[A]then
end
A=A+1
if A>#F then
A=1
end
if aI[H]then
end
H=H+1
if H>#aI then
H=1
end
m(9,1)m(10,1)end
