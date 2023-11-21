bs="1"
br=""

X=ipairs
aS=tonumber
aH=string
aI=tostring
U=pairs
K=nil
aP=false
t=true
aR=property
at=input
ar=table.remove
m,u,aF,aE,bj,bg,bd=math,at,output,aR,screen,t,aP
d,g,bm,bl=u.getNumber,aF.setNumber,u.getBool,aF.setBool
r,be=aE.getNumber,aE.getBool
abs,cos,sin,floor,atan=m.abs,m.cos,m.sin,m.floor,m.atan
pi=m.pi
W=pi*2
function e(j,i,h)return{j=j or 0,i=i or 0,h=h or 0}end
function z(_,c)return e(_.j+c.j,_.i+c.i,_.h+c.h)end
function bf(_,c)return e(_.j*c.j,_.i*c.i,_.h*c.h)end
function y(_,D)return e(_.j*D,_.i*D,_.h*D)end
function bb(_)return y(_,-1)end
function A(_,c)return z(_,bb(c))end
function l(_)return m.sqrt(_.j*_.j+_.i*_.i+_.h*_.h)end
function av(_,D)return y(_,1/D)end
function bc(_)return av(_,l(_))end
function al(_,c)return _.j*c.j+_.i*c.i+_.h*c.h
end
function aX(_,c)return e(_.i*c.h-_.h*c.i,_.h*c.j-_.j*c.h,_.j*c.i-_.i*c.j)end
function aG(aJ,ap,aa)aV=aV or 1
return e(m.sin(aJ)*m.cos(ap)*aa,m.cos(aJ)*m.cos(ap)*aa,m.sin(ap)*aa)end
function aW(_,J,ao,an)return e(al(J,_),al(ao,_),al(an,_))end
function aB(_,J,ao,an)return z(z(y(J,_.j),y(ao,_.i)),y(an,_.h))end
function bh(aN,c)if not _ then _={}_[c]={ah=0,am=0}elseif not _[c]then _[c]={ah=0,am=0}end;_[c].am=aN-_[c].ah;_[c].ah=aN;return _[c].am end
function bk(_,min,max)return m.max(min,m.min(_,max))end
function v(at,aQ)local G=K
for f,b_ in U(at)do
if G==K or(f>G and aQ)or(f<G and not aQ)then
G=f
end
end
return G
end
function x(au)return a[au].k[v(a[au].k,t)]end
af=r("VL Strt Frq")ba=r("VL You Frq")ay=r("VL End Frq")aj=aR.getText("VL User")s=af
bp=r("ML Strt Frq")bi=r("ML End Frq")ac=r("Merge Dist")aT=r("Cull Time")aZ=r("Min extrap dist delta")bo={}b={{},{},{}}a={}L={}ax={}C,bq=1,0
n,E,F=0,0,0
I,M=0,0
function onTick()M=M+1
I=I+1
S=e(d(1),d(2),d(3))aD,aA,aw=d(4),d(5),d(6)ae,ag,Y=cos(aD),cos(aA),cos(aw)az,ak,Z=sin(aD),sin(aA),sin(aw)N=e(ag*Y,-ak,ag*Z)T=e(az*Z+ae*ak*Y,ae*ag,-az*Y+ae*ak*Z)ai=aX(N,T)aC=e(d(7),d(8),d(9))if l(aC)>0 then
local V={d(10),d(11)}O=br
if V[1]>=1000000 and V[1]>=1000000 then
aO=aI(V[1]):sub(2,7)..aI(V[2]):sub(2,7)for u=1,#aO,3 do
O=O..aH.char(aO:sub(u,u+3-1))end
else
O="XXXX"
end
L[O]=aC
end
L[aj]=S
Q=br
for u=1,#aj do
Q=Q..aH.format("%03d",aj:byte(u))end
g(1,aS(bs..Q:sub(1,6)))g(2,aS(bs..Q:sub(7,12)))s=s==ay and af or s+1
if s==ba then
s=s==ay and af or s+1
end
g(3,s)if d(18)>0 then
b[1].w=aG(d(19)*W,d(20)*W,d(18))b[1].q=aB(b[1].w,N,T,ai)b[1].p=z(b[1].q,S)else
b[1].w=e()b[1].q=e()b[1].p=e()end
b[1].aq=d(31)if d(24)>0 then
b[2].w=aG(d(25)*W+pi,d(26)*W,d(24))b[2].q=aB(b[2].w,N,T,ai)b[2].p=z(b[2].q,S)else
b[2].w=e()b[2].q=e()b[2].p=e()end
b[2].aq=d(31)b[3].p=e(d(15),d(16),d(17))if l(b[3].p)>0 then
b[3].q=A(S,b[3].p)b[3].w=aW(b[3].q,N,T,ai)else
b[3].w=e()b[3].q=e()b[3].p=e()end
b[3].aq=0
for f,B in X(b)do
if(l(B.q)>0)and not(B.aq>0)then
local match=0
for o,bn in X(a)do
if match==0 then
if l(A(x(o),B.p))<=ac then
match=o
a[o].k[I]=B.p
a[o].H=0
ad=K
as=-1
for aK,aM in U(a[o].k)do
aU=l(A(aM,x(o)))if aU>=aZ and aK>as then
ad=aM
as=aK
end
end
if ad~=K then
aL=v(a[o].k,t)-as
if aL>0 then
a[o].ab=av(A(x(o),ad),aL)end
else
a[o].ab=e()end
end
else
if l(A(x(o),B.p))<=ac then
ar(a,o)end
end
end
if match==0 then
a[#a+1]={k={[I]=B.p},ab=e(),R=e(),H=0}end
end
end
P=0
for f,aY in X(a)do
if M>120 then
local l=0
for b_ in U(a[f].k)do
l=l+1
end
while l>40 do
a[f].k[v(a[f].k,aP)]=K
l=l-1
P=P+1
end
debug.log("culled "..P.." positions of target "..f)end
a[f].H=I-v(a[f].k,t)a[f].R=z(x(f),y(a[f].ab,a[f].H))if(aY.H>=aT)and not(f==C)then
ar(a,f)else
if x(f).h<=-1 then
a[f].k[v(a[f].k,t)].h=5
end
for u,J in U(L)do
if l(A(J,x(f)))<=ac then
ar(a,f)end
end
end
end
if P>0 then M=0 end
if a[n]then
g(14,a[n].k[v(a[n].k,t)].j)g(15,a[n].k[v(a[n].k,t)].i)g(16,a[n].k[v(a[n].k,t)].h)end
g(26,n)n=n+1
if n>#a then
n=1
end
if L[E]then
end
E=E+1
if E>#L then
E=1
end
if ax[F]then
end
F=F+1
if F>#ax then
F=1
end
if a[C]then
g(30,a[C].R.j)g(31,a[C].R.i)g(32,a[C].R.h)g(11,a[C].H)else
g(30,0)g(31,0)g(32,0)g(11,0)end
g(5,0)g(6,0)g(7,0)g(8,0)g(9,1)g(10,1)end
