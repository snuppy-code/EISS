
s=200
aO=nil
ah=pairs
b_=false
ad=true
ao=math
aF=ao.random
aP=ao.rad
g,h,be,aW,j,bB,bG=ao,input,output,property,screen,ad,b_
a,aI,bE,bz=h.getNumber,be.setNumber,h.getBool,be.setBool
bN,bC=aW.getNumber,aW.getBool
abs,cos,sin,floor,atan=g.abs,g.cos,g.sin,g.floor,g.atan
pi=g.pi
bJ=pi*2
bK,bF,al,bn,i,bL,bD,p=j.drawText,j.drawTextBox,j.drawLine,j.drawRect,j.drawRectF,j.drawCircle,j.drawClear,j.setColor
function d(c,e,b,o)return{c=c or 0,e=e or 0,b=b or 0,o=o or 0}end
function Q(_,f)return d(_.c+f.c,_.e+f.e,_.b+f.b)end
function bI(_,f)return d(_.c*f.c,_.e*f.e,_.b*f.b)end
function I(_,aa)return d(_.c*aa,_.e*aa,_.b*aa)end
function bi(_)return I(_,-1)end
function G(_,f)return Q(_,bi(f))end
function q(_)return g.sqrt(_.c*_.c+_.e*_.e+_.b*_.b)end
function bs(_,aa)return I(_,1/aa)end
function bH(_)return bs(_,q(_))end
function au(_,f)return _.c*f.c+_.e*f.e+_.b*f.b
end
function aN(_,f)return d(_.e*f.b-_.b*f.e,_.b*f.c-_.c*f.b,_.c*f.e-_.e*f.c)end
function aQ(t,m,T)local T=T or 1
return d(g.sin(t)*g.cos(m)*T,g.cos(t)*g.cos(m)*T,g.sin(m)*T)end
function aT(_,M)if not D then
D={}D[M]={as=d(),ar=d()}elseif not D[M]then
D[M]={as=d(),ar=d()}end
D[M].ar=G(_,D[M].as)D[M].as=_
return D[M].ar
end
function S(_,aD,aq,an)return d(au(aD,_),au(aq,_),au(an,_))end
function bf(_,aD,aq,an)return Q(Q(I(aD,_.c),I(aq,_.e)),I(an,_.b))end
function P(c,j,aS)return c<j and j or c>aS and aS or c
end
function X(bu,bw,br,o,y)local bp=br*(.025-2.2)+2.2
local aK=o/2; local aH=y/2
local bh=(aK-128*.025)/(aH-128*.025)local aM=g.tan(bp/2); local bm=aM*bh
local R=G(bu,bw)local aB,aw=R.e>0 and aK*(1+R.c/R.e/bm)or 0,R.e>0 and y-aH*(1+R.b/R.e/aM)or 0
return aB,aw
end
function aU(ay,aE,bt,bk)av=11
aC=ad
bv=bt-ay
bl=bk-aE
aG=bv/av
bb=bl/av
for h=1,av do
if aC then
al(ay+aG*(h-1),aE+bb*(h-1),ay+aG*h,aE+bb*h)end
aC=not aC
end
end
n={}ag=100
k=3
W=d(0,2.625,-.5)bx=d(0,3.125,-.25)A={}for h=1,k do
A[h]={t=0,m=0}end
aZ=40
H={}C={}function onTick()bg=a(28)==1
U=.12
am=a(20)L=d(a(1),a(3),a(2))aJ,aR,bc=a(4),a(5),a(6)ap,aj,at=cos(aJ),cos(aR),cos(bc)ba,az,ax=sin(aJ),sin(aR),sin(bc)ac=d(aj*at,-az,aj*ax)ak=d(ba*ax+ap*az*at,ap*aj,-ba*at+ap*az*ax)aL=aN(ac,ak)bd=I(aT(L,"myvel"),60)bo=I(aT(bd,"myacc"),60)bA=q(bd)bM=q(bo)/9.81
af=a(19)E=d(a(7),a(8),a(9))if q(E)>0 then
C[af]={V=E,k=0}end
E=d(a(10),a(11),a(12))if q(E)>0 then
C[af+1]={V=E,k=0}end
af=a(21)E=d(a(13),a(14),a(15))bq=d(a(16),a(17),a(18))if q(E)>0 then
H[af]={V=E,aV=bq,k=0}end
for l,by in ah(C)do
C[l].k=C[l].k+1
if C[l].k>=aZ then
C[l]=aO
end
end
for l,by in ah(H)do
H[l].k=H[l].k+1
if H[l].k>=aZ then
H[l]=aO
end
end
aX=d(a(23),a(24),a(25))N=ac
O=bf(aQ(0,-.6*pi/4,1),ac,ak,aL)ab=aN(N,O)for h=k,2,-1 do
A[h].t=A[h-1].t
A[h].m=A[h-1].m
end
A[1].t=t or 0
A[1].m=m or 0
if am>=5 and am<2000 then
v=Q(bf(Q(aQ(A[k].t,A[k].m,am),bx),ac,ak,aL),L)v=d(v.c,v.e,v.b<0 and 0 or v.b)if#n>0 then
aA,Z=ad,0
while Z<#n and aA and Z<ag do
Z=Z+1
aA=q(G(n[Z],v))>5
end
bj=#n>=ag
if aA then
if bj then
for h=1,ag-1 do
n[h]=n[h+1]end
n[ag]=v
else
n[#n+1]=v
end
end
else
n[1]=v
end
end
t=aP(aF(-40,40))m=aP(aF(-40,40))aI(1,t*4/pi)aI(2,m*4/pi)end
function onDraw()o,y=j.getWidth(),j.getHeight()for l,x in ah(n)do
u=G(x,L)z=q(u)if z<2000 then
r=S(u,N,O,ab)if r.e>0 then
aB,aw=X(r,W,U,o,y)p(5-z,z-5,0)if(x.b<.5)then
p(P(s-z/10,0,s),0,P(z/10,0,s),P(s-z/20,0,s))else
p(P(s-z/10,0,s),P(z/10,0,s),0,P(s-z/20,0,s))end
i(aB-1,aw,1,1)end
end
end
for l,x in ipairs(C)do
Y=x.V
if Y.b<0 then
Y=Q(Y,d(0,0,9999))p(240,0,0)aY=b_
else
aY=ad
p(80,13,1,230)end
u=G(Y,L)r=S(u,N,O,ab)F,B=X(r,W,U,o,y)w=Y.b
if aY then
w=g.max(g.min(w/500,5),0)al(F-w,B-2,F+w+1,B-2)end
bn(F-1,B-1,2,2)end
p(55,20,40,180)if q(aX)>0 then
u=G(aX,L)r=S(u,N,O,ab)F,B=X(r,W,U,o,y)aU(o/2,y,F,B)p(46,0,25,240)i(F-2,B-2,1,5)i(F+2,B-2,1,5)i(F,B,1,1)end
p(0,40,255,230)for l,x in ah(H)do
u=G(x.V,L)r=S(u,N,O,ab)J,K=X(r,W,U,o,y)w=x.V.b
w=g.max(g.min(w/500,5),0)al(J-w,K-2,J+w+1,K-2)i(J,K-1,1,1)i(J+1,K,1,1)i(J,K+1,1,1)i(J-1,K,1,1)if q(x.aV)>0 then
u=G(x.aV,L)r=S(u,N,O,ab)ae,ai=X(r,W,U,o,y)p(30,90,255,155)aU(J,K,ae,ai)p(40,40,110,165)i(ae-2,ai-2,1,5)i(ae+2,ai-2,1,5)i(ae,ai,1,1)end
end
if bg then
p(255,0,0)i(7,4,1,88)i(88,4,1,88)end
end
