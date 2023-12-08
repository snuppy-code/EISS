br="1"
bq=""

aH=tonumber
aa=ipairs
aW=string
aD=tostring
Q=pairs
B=nil
X=false
H=true
aV=property
ah=input
aB=table.remove
o,v,aN,aQ,bo,bm,bl=math,ah,output,aV,screen,H,X
a,d,bp,bn=v.getNumber,aN.setNumber,v.getBool,aN.setBool
K,bi=aQ.getNumber,aQ.getBool
abs,cos,sin,floor,atan=o.abs,o.cos,o.sin,o.floor,o.atan
pi=o.pi
z=pi*2
function e(h,j,f)return{h=h or 0,j=j or 0,f=f or 0}end
function x(_,l)return e(_.h+l.h,_.j+l.j,_.f+l.f)end
function A(_,L)return e(_.h*L,_.j*L,_.f*L)end
function aX(_)return A(_,-1)end
function F(_,l)return x(_,aX(l))end
function m(_)return o.sqrt(_.h*_.h+_.j*_.j+_.f*_.f)end
function aU(_,L)return A(_,1/L)end
function bj(_)return aU(_,m(_))end
function au(_,l)return _.h*l.h+_.j*l.j+_.f*l.f
end
function be(_,l)return e(_.j*l.f-_.f*l.j,_.f*l.h-_.h*l.f,_.h*l.j-_.j*l.h)end
function aA(aE,az,aw)bg=bg or 1
return e(o.sin(aE)*o.cos(az)*aw,o.cos(aE)*o.cos(az)*aw,o.sin(az)*aw)end
function ba(_,P,ap,al)return e(au(P,_),au(ap,_),au(al,_))end
function ak(_,P,ap,al)return x(x(A(P,_.h),A(ap,_.j)),A(al,_.f))end
function Z(ah,aO)local M=B
for g,b_ in Q(ah)do
if M==B or(g>M and aO)or(g<M and not aO)then
M=g
end
end
return M
end
function k(aM)return b[aM].s[Z(b[aM].s,H)]end
an=K("VL Strt Frq")bb=K("VL You Frq")aJ=K("VL End Frq")V=aV.getText("VL User")u=an
ae=K("Merge Dist")bh=K("Cull Time")c={{},{},{},{}}b={}N={}y={}t=0
n,E=0,0
Y,U=0,0
function onTick()U=U+1
Y=Y+1
O=e(a(1),a(2),a(3))aS=a(27)==1
if aS and not aY and(#b>0)then
t=t%(#b)+1
end
aY=aS
aZ=a(28)==1
aK,aR,aT=a(4),a(5),a(6)ai,ab,am=cos(aK),cos(aR),cos(aT)aC,ad,ao=sin(aK),sin(aR),sin(aT)I=e(ab*am,-ad,ab*ao)G=e(aC*ao+ai*ad*am,ai*ab,-aC*am+ai*ad*ao)S=be(I,G)aI=e(a(7),a(9),a(8))bf=e(a(21),a(22),a(23))if m(aI)>0 then
local T={a(10),a(11)}w=bq
if T[1]>=1000000 and T[1]>=1000000 then
aP=aD(T[1]):sub(2,7)..aD(T[2]):sub(2,7)for v=1,#aP,3 do
w=w..aW.char(aP:sub(v,v+3-1))end
else
w="XXXX"
end
N[w]={i=aI,ay=bf}ac=B
for g,as in aa(y)do
if as==w then
ac=g
end
end
if ac then
y[ac]=w
else
y[#y+1]=w
end
end
N[V]={i=O,ay=e()}if b[t]then
N[V].ay=k(t)end
W=bq
for v=1,#V do
W=W..aW.format("%03d",V:byte(v))end
d(1,aH(br..W:sub(1,6)))d(2,aH(br..W:sub(7,12)))u=u==aJ and an or u+1
if u==bb then
u=u==aJ and an or u+1
end
d(3,u)if a(18)>0 then
c[1].r=aA(a(19)*z,a(20)*z,a(18))c[1].q=ak(c[1].r,I,G,S)c[1].i=x(c[1].q,O)else
c[1]={r=e(),q=e(),i=e()}end
c[1].R=a(30)if a(12)>0 then
c[2].r=aA(a(13)*z,a(14)*z,a(12))c[2].q=ak(c[2].r,I,G,S)c[2].i=x(c[2].q,O)else
c[2]={r=e(),q=e(),i=e()}end
c[2].R=a(31)if a(24)>0 then
c[3].r=aA(a(25)*z+pi,a(26)*z,a(24))c[3].q=ak(c[3].r,I,G,S)c[3].i=x(c[3].q,O)else
c[3]={r=e(),q=e(),i=e()}end
c[3].R=a(32)c[4].i=e(a(15),a(16),a(17))if m(c[4].i)>0 then
c[4].q=F(O,c[4].i)c[4].r=ba(c[4].q,I,G,S)else
c[4]={r=e(),q=e(),i=e()}end
c[4].R=0
for g,D in aa(c)do
if(m(D.q)>0)and not(D.R>0)then
local ax=0
for p,bk in aa(b)do
if ax==0 then
if m(F(k(p),D.i))<=ae then
ax=p
b[p].s[Y]=D.i
b[p].C=0
at=B
ar=-1
for aG,aL in Q(b[p].s)do
bd=m(F(aL,k(p)))if bd>=50 and aG>ar then
at=aL
ar=aG
end
end
if at~=B then
aF=Z(b[p].s,H)-ar
if aF>0 then
b[p].av=aU(F(k(p),at),aF)end
else
b[p].av=e()end
end
else
if m(F(k(p),D.i))<=ae then
aB(b,p)end
end
end
if ax==0 then
b[#b+1]={s={[Y]=D.i},av=e(),bc=e(),C=0}end
end
end
ag=0
for g,as in aa(b)do
J=H
if U>120 then
local m=0
for b_ in Q(b[g].s)do
m=m+1
end
while m>40 do
b[g].s[Z(b[g].s,X)]=B
m=m-1
ag=ag+1
end
end
b[g].C=b[g].C+1
b[g].bc=x(k(g),A(b[g].av,b[g].C))if(as.C>=bh)then
if J then
aB(b,g)J=X
end
else
if k(g).f<=-1 then
b[g].s[Z(b[g].s,H)].f=5
end
for v,P in Q(N)do
if J then
if m(F(P.i,k(g)))<=ae then
if J then
aB(b,g)J=X
end
end
end
end
end
end
if ag>0 then U=0 end
if b[n]then
d(14,k(n).h)d(15,k(n).j)d(16,k(n).f)end
if b[n+1]then
d(17,k(n+1).h)d(18,k(n+1).j)d(19,k(n+1).f)end
d(26,n)n=n+2
if n>#b then
n=1
end
aj=N[y[E]]if aj then
af=aj.i
aq=aj.ay
d(20,af.h)d(21,af.j)d(22,af.f)d(23,aq.h)d(24,aq.j)d(25,aq.f)end
d(28,E)E=E+1
if E>#y then
E=1
end
if aZ then
d(30,c[3].i.h)d(31,c[3].i.j)d(32,c[3].i.f)else
if b[t]then
d(30,k(t).h)d(31,k(t).j)d(32,k(t).f)d(11,b[t].C)else
d(30,0)d(31,0)d(32,0)d(11,0)end
end
d(7,0)d(8,0)d(9,1)d(10,1)end
