
s=200
bb=nil
ac=pairs
ay=true
as=math
aR=as.random
aX=as.rad
h,g,aI,aQ,i,bB,bK=as,input,output,property,screen,ay,false
a,aU,bz,bD=g.getNumber,aI.setNumber,g.getBool,aI.setBool
bI,bE=aQ.getNumber,aQ.getBool
abs,cos,sin,floor,atan=h.abs,h.cos,h.sin,h.floor,h.atan
pi=h.pi
by=pi*2
bJ,bx,au,bk,k,bA,bH,t=i.drawText,i.drawTextBox,i.drawLine,i.drawRect,i.drawRectF,i.drawCircle,i.drawClear,i.setColor
function e(b,c,d,m)return{b=b or 0,c=c or 0,d=d or 0,m=m or 0}end
function U(_,f)return e(_.b+f.b,_.c+f.c,_.d+f.d)end
function bG(_,f)return e(_.b*f.b,_.c*f.c,_.d*f.d)end
function K(_,aa)return e(_.b*aa,_.c*aa,_.d*aa)end
function bd(_)return K(_,-1)end
function D(_,f)return U(_,bd(f))end
function v(_)return h.sqrt(_.b*_.b+_.c*_.c+_.d*_.d)end
function bf(_,aa)return K(_,1/aa)end
function bF(_)return bf(_,v(_))end
function ak(_,f)return _.b*f.b+_.c*f.c+_.d*f.d
end
function aP(_,f)return e(_.c*f.d-_.d*f.c,_.d*f.b-_.b*f.d,_.b*f.c-_.c*f.b)end
function aT(r,n,V)local V=V or 1
return e(h.sin(r)*h.cos(n)*V,h.cos(r)*h.cos(n)*V,h.sin(n)*V)end
function aO(_,H)if not B then
B={}B[H]={at=e(),az=e()}elseif not B[H]then
B[H]={at=e(),az=e()}end
B[H].az=D(_,B[H].at)B[H].at=_
return B[H].az
end
function W(_,aD,am,aC)return e(ak(aD,_),ak(am,_),ak(aC,_))end
function aL(_,aD,am,aC)return U(U(K(aD,_.b),K(am,_.c)),K(aC,_.d))end
function Q(b,i,aF)return b<i and i or b>aF and aF or b
end
function Y(bq,bp,bi,m,o)local bm=bi*(.025-2.2)+2.2
local aZ=m/2; local aJ=o/2
local bo=(aZ-128*.025)/(aJ-128*.025)local aG=h.tan(bm/2); local br=aG*bo
local P=D(bq,bp)local aB,ar=P.c>0 and aZ*(1+P.b/P.c/br)or 0,P.c>0 and o-aJ*(1+P.d/P.c/aG)or 0
return aB,ar
end
function aN(ai,aj,bt,bn)al=11
an=ay
bh=bt-ai
bu=bn-aj
aE=bh/al
aM=bu/al
for g=1,al do
if an then
au(ai+aE*(g-1),aj+aM*(g-1),ai+aE*g,aj+aM*g)end
an=not an
end
end
p={}ae=100
j=3
X=e(0,2.625,-.5)bs=e(0,3.125,-.25)z={}for g=1,j do
z[g]={r=0,n=0}end
b_=40
J={}G={}function onTick()bv=a(28)==1
Z=.12
aA=a(20)M=e(a(1),a(3),a(2))aH,aK,aY=a(4),a(5),a(6)av,ax,ah=cos(aH),cos(aK),cos(aY)aV,aw,ao=sin(aH),sin(aK),sin(aY)ab=e(ax*ah,-aw,ax*ao)aq=e(aV*ao+av*aw*ah,av*ax,-aV*ah+av*aw*ao)bc=aP(ab,aq)ba=K(aO(M,"myvel"),60)bl=K(aO(ba,"myacc"),60)bw=v(ba)bC=v(bl)/9.81
ag=a(19)E=e(a(7),a(8),a(9))if v(E)>0 then
G[ag]={N=E,j=0}end
E=e(a(10),a(11),a(12))if v(E)>0 then
G[ag+1]={N=E,j=0}end
ag=a(21)E=e(a(13),a(14),a(15))be=e(a(16),a(17),a(18))if v(E)>0 then
J[ag]={N=E,aW=be,j=0}end
for l,bj in ac(G)do
G[l].j=G[l].j+1
if G[l].j>=b_ then
G[l]=bb
end
end
for l,bj in ac(J)do
J[l].j=J[l].j+1
if J[l].j>=b_ then
J[l]=bb
end
end
aS=e(a(23),a(24),a(25))R=ab
O=aL(aT(0,-.6*pi/4,1),ab,aq,bc)T=aP(R,O)for g=j,2,-1 do
z[g].r=z[g-1].r
z[g].n=z[g-1].n
end
z[1].r=r or 0
z[1].n=n or 0
if aA>=5 and aA<2000 then
A=U(aL(U(aT(z[j].r,z[j].n,aA),bs),ab,aq,bc),M)A=e(A.b,A.c,A.d<0 and 0 or A.d)if#p>0 then
ap,S=ay,0
while S<#p and ap and S<ae do
S=S+1
ap=v(D(p[S],A))>5
end
bg=#p>=ae
if ap then
if bg then
for g=1,ae-1 do
p[g]=p[g+1]end
p[ae]=A
else
p[#p+1]=A
end
end
else
p[1]=A
end
end
r=aX(aR(-40,40))n=aX(aR(-40,40))aU(1,r*4/pi)aU(2,n*4/pi)end
function onDraw()m,o=i.getWidth(),i.getHeight()for l,q in ac(p)do
u=D(q,M)y=v(u)if y<2000 then
w=W(u,R,O,T)if w.c>0 then
aB,ar=Y(w,X,Z,m,o)t(5-y,y-5,0)if(q.d<.5)then
t(Q(s-y/10,0,s),0,Q(y/10,0,s),Q(s-y/20,0,s))else
t(Q(s-y/10,0,s),Q(y/10,0,s),0,Q(s-y/20,0,s))end
k(aB-1,ar,1,1)end
end
end
t(80,13,1,230)for l,q in ipairs(G)do
u=D(q.N,M)w=W(u,R,O,T)C,F=Y(w,X,Z,m,o)x=q.N.d
x=h.max(h.min(x/500,5),0)au(C-x,F-2,C+x+1,F-2)bk(C-1,F-1,2,2)end
t(55,20,40,180)if v(aS)>0 then
u=D(aS,M)w=W(u,R,O,T)C,F=Y(w,X,Z,m,o)aN(m/2,o,C,F)t(46,0,25,240)k(C-2,F-2,1,5)k(C+2,F-2,1,5)k(C,F,1,1)end
t(0,40,255,230)for l,q in ac(J)do
u=D(q.N,M)w=W(u,R,O,T)I,L=Y(w,X,Z,m,o)x=q.N.d
x=h.max(h.min(x/500,5),0)au(I-x,L-2,I+x+1,L-2)k(I,L-1,1,1)k(I+1,L,1,1)k(I,L+1,1,1)k(I-1,L,1,1)if v(q.aW)>0 then
u=D(q.aW,M)w=W(u,R,O,T)af,ad=Y(w,X,Z,m,o)t(30,90,255,155)aN(I,L,af,ad)t(40,40,110,165)k(af-2,ad-2,1,5)k(af+2,ad-2,1,5)k(af,ad,1,1)end
end
if bv then
t(255,0,0)k(0,0,1,o)k(m-1,0,1,o)end
end
