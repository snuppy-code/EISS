bu=""
bt="1"

ac=ipairs
as=tonumber
aF=string
aK=tostring
E=pairs
q=nil
ar=property
am=input
G=table
au=debug.log
ag=G.remove
k,o,aN,aD,bp,be,bs=math,am,output,ar,screen,true,false
e,d,bb,bm=o.getNumber,aN.setNumber,o.getBool,aN.setBool
s,bl=aD.getNumber,aD.getBool
abs,cos,sin,floor,atan=k.abs,k.cos,k.sin,k.floor,k.atan
pi=k.pi
M=pi*2
function j(g,h,f)return{g=g or 0,h=h or 0,f=f or 0}end
function x(_,b)return j(_.g+b.g,_.h+b.h,_.f+b.f)end
function bf(_,b)return j(_.g*b.g,_.h*b.h,_.f*b.f)end
function u(_,K)return j(_.g*K,_.h*K,_.f*K)end
function aQ(_)return u(_,-1)end
function Q(_,b)return x(_,aQ(b))end
function w(_)return k.sqrt(_.g*_.g+_.h*_.h+_.f*_.f)end
function az(_,K)return u(_,1/K)end
function bj(_)return az(_,w(_))end
function ah(_,b)return _.g*b.g+_.h*b.h+_.f*b.f
end
function aX(_,b)return j(_.h*b.f-_.f*b.h,_.f*b.g-_.g*b.f,_.g*b.h-_.h*b.g)end
function ax(ay,ao,J)local J=J or 1
return j(k.sin(ay)*k.cos(ao)*J,k.cos(ay)*k.cos(ao)*J,k.sin(ao)*J)end
function bn(_,B,Y,V)return j(ah(B,_),ah(Y,_),ah(V,_))end
function av(_,B,Y,V)return x(x(u(B,_.g),u(Y,_.h)),u(V,_.f))end
function bg(at,b)if not _ then _={}_[b]={al=0,aq=0}elseif not _[b]then _[b]={al=0,aq=0}end;_[b].aq=at-_[b].al;_[b].al=at;return _[b].aq end
function bh(_,min,max)return k.max(min,k.min(_,max))end
function O(am)local n=q
for c,aB in E(am)do
if n==q or c>n then
n=c
end
end
return n
end
function bd(G)local n,L=q,q
for c,aB in E(G)do
if n==q or c>n then
L=n
n=c
elseif L==q or c>L then
L=c
end
end
return L
end
function A(P)return a[P].m[O(a[P].m)]end
function br(P,b_)return a[P].m[b_]end
function aU(aS)local af=0
for aB in E(aS)do
af=af+1
end
return af
end
function aR(G,aT)for X,aY in E(G)do
if type(X)=="number" and X<aT then
return X,aY
end
end
return q
end
ad=s("VL Strt Frq")aW=s("VL You Frq")aH=s("VL End Frq")Z=ar.getText("VL User")p=ad
bi=s("ML Strt Frq")bq=s("ML End Frq")ap=s("Merge Dist")aZ=s("Cull Time")bo={}i={{},{}}a={}I={}aG={}aO,bk=0,0
y,D,C=0,0,0
F=0
function onTick()F=F+1
W=j(e(1),e(2),e(3))aM,aA,aI=e(4),e(5),e(6)aj,aa,ak=cos(aM),cos(aA),cos(aI)aw,an,U=sin(aM),sin(aA),sin(aI)ai=j(aa*ak,-an,aa*U)ab=j(aw*U+aj*an*ak,aj*aa,-aw*ak+aj*an*U)aC=aX(ai,ab)aL=j(e(7),e(8),e(9))if w(aL)>0 then
local R={e(10),e(11)}N=bu
if R[1]>=1000000 and R[1]>=1000000 then
aE=aK(R[1]):sub(2,7)..aK(R[2]):sub(2,7)for o=1,#aE,3 do
N=N..aF.char(aE:sub(o,o+3-1))end
else
N="XXXX"
end
I[N]=aL
end
I[Z]=W
S=bu
for o=1,#Z do
S=S..aF.format("%03d",Z:byte(o))end
d(1,as(bt..S:sub(1,6)))d(2,as(bt..S:sub(7,12)))p=p==aH and ad or p+1
if p==aW then
p=p==aH and ad or p+1
end
d(3,p)if e(18)>0 then
i[1].H=ax(e(19)*M,e(20)*M,e(18))i[1].t=av(i[1].H,ai,ab,aC)i[1].r=x(i[1].t,W)else
i[1].H=j()i[1].t=j()i[1].r=j()end
i[1].aJ=e(31)if e(24)>0 then
i[2].H=ax(e(25)*M+pi,e(26)*M,e(24))i[2].t=av(i[2].H,ai,ab,aC)i[2].r=x(i[2].t,W)else
i[2].H=j()i[2].t=j()i[2].r=j()end
i[2].aJ=e(31)for c,v in ac(i)do
if(w(v.t)>0)and not(v.aJ>0)then
local match=0
for z,bc in ac(a)do
if match==0 then
if w(Q(A(z),v.r))<=ap then
match=z
a[z].m[F]=v.r
a[z].T=0
end
else
if w(Q(A(z),v.r))<=ap then
ag(a,z)end
end
end
if match==0 then
a[#a+1]={m={[F]=v.r},ae=j(),l=j(),T=0}end
end
end
au("targetfiles loop start")for c,aV in ac(a)do
a[c].T=F-O(a[c].m)if aU(a[c].m)>=10 then
aP,ba=aR(a[c].m,20)a[c].ae=az(Q(A(c),ba),O(a[c].m)-aP)end
au("v x: "..type(a[c].ae.g))a[c].l=x(A(c),u(a[c].ae,a[c].T))if(aV.T>=aZ)and not(c==aO)then
ag(a,c)else
if A(c).f<=-1 then
a[c].m[O(a[c].m)].f=5
end
for o,B in E(I)do
if w(Q(B,A(c)))<=ap then
ag(a,c)end
end
end
end
if a[1]then
d(24,a[1].l.g)d(25,a[1].l.h)d(26,a[1].l.f)else
d(24,0)d(25,0)d(26,0)end
if a[2]then
d(27,a[2].l.g)d(28,a[2].l.h)d(29,a[2].l.f)else
d(27,0)d(28,0)d(29,0)end
if a[3]then
d(30,a[3].l.g)d(31,a[3].l.h)d(32,a[3].l.f)else
d(30,0)d(31,0)d(32,0)end
if a[y]then
end
if a[y+1]then
end
y=y+2
if y>#a then
y=1
end
if I[D]then
end
D=D+1
if D>#I then
D=1
end
if aG[C]then
end
C=C+1
if C>#aG then
C=1
end
d(9,1)d(10,1)end
