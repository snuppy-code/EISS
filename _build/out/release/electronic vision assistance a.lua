
u=200
aT=nil
ai=pairs
aQ=false
ad=true
ap=math
bb=ap.random
aJ=ap.rad
g,h,aH,aV,j,bM,bA=ap,input,output,property,screen,ad,aQ
a,bc,bG,bC=h.getNumber,aH.setNumber,h.getBool,aH.setBool
bH,bK=aV.getNumber,aV.getBool
abs,cos,sin,floor,atan=g.abs,g.cos,g.sin,g.floor,g.atan
pi=g.pi
bB=pi*2
bN,bz,ao,bn,k,bL,bE,p=j.drawText,j.drawTextBox,j.drawLine,j.drawRect,j.drawRectF,j.drawCircle,j.drawClear,j.setColor
function e(c,d,b,o)return{c=c or 0,d=d or 0,b=b or 0,o=o or 0}end
function Q(_,f)return e(_.c+f.c,_.d+f.d,_.b+f.b)end
function bI(_,f)return e(_.c*f.c,_.d*f.d,_.b*f.b)end
function K(_,W)return e(_.c*W,_.d*W,_.b*W)end
function by(_)return K(_,-1)end
function E(_,f)return Q(_,by(f))end
function s(_)return g.sqrt(_.c*_.c+_.d*_.d+_.b*_.b)end
function bm(_,W)return K(_,1/W)end
function bD(_)return bm(_,s(_))end
function aA(_,f)return _.c*f.c+_.d*f.d+_.b*f.b
end
function aZ(_,f)return e(_.d*f.b-_.b*f.d,_.b*f.c-_.c*f.b,_.c*f.d-_.d*f.c)end
function aP(t,m,T)local T=T or 1
return e(g.sin(t)*g.cos(m)*T,g.cos(t)*g.cos(m)*T,g.sin(m)*T)end
function aM(_,J)if not B then
B={}B[J]={az=e(),aB=e()}elseif not B[J]then
B[J]={az=e(),aB=e()}end
B[J].aB=E(_,B[J].az)B[J].az=_
return B[J].aB
end
function aa(_,as,at,av)return e(aA(as,_),aA(at,_),aA(av,_))end
function aN(_,as,at,av)return Q(Q(K(as,_.c),K(at,_.d)),K(av,_.b))end
function N(c,j,ba)return c<j and j or c>ba and ba or c
end
function ab(bx,bq,bl,o,w)local bk=bl*(.025-2.2)+2.2
local bd=o/2; local aG=w/2
local br=(bd-128*.025)/(aG-128*.025)local be=g.tan(bk/2); local bu=be*br
local R=E(bx,bq)local aC,an=R.d>0 and bd*(1+R.c/R.d/bu)or 0,R.d>0 and w-aG*(1+R.b/R.d/be)or 0
return aC,an
end
function aX(ax,aq,bg,bt)ar=11
al=ad
bs=bg-ax
bp=bt-aq
aI=bs/ar
aO=bp/ar
for h=1,ar do
if al then
ao(ax+aI*(h-1),aq+aO*(h-1),ax+aI*h,aq+aO*h)end
al=not al
end
end
n={}ae=100
i=3
Z=e(0,2.625,-.5)bo=e(0,3.125,-.25)x={}for h=1,i do
x[h]={t=0,m=0}end
aU=40
L={}C={}function onTick()bi=a(28)==1
X=.12
au=a(20)I=e(a(1),a(3),a(2))bf,aF,aS=a(4),a(5),a(6)aE,am,aw=cos(bf),cos(aF),cos(aS)aL,ak,aD=sin(bf),sin(aF),sin(aS)ag=e(am*aw,-ak,am*aD)ay=e(aL*aD+aE*ak*aw,aE*am,-aL*aw+aE*ak*aD)aY=aZ(ag,ay)b_=K(aM(I,"myvel"),60)bh=K(aM(b_,"myacc"),60)bJ=s(b_)bF=s(bh)/9.81
ac=a(19)F=e(a(7),a(8),a(9))if s(F)>0 then
C[ac]={U=F,i=0}end
F=e(a(10),a(11),a(12))if s(F)>0 then
C[ac+1]={U=F,i=0}end
ac=a(21)F=e(a(13),a(14),a(15))bw=e(a(16),a(17),a(18))if s(F)>0 then
L[ac]={U=F,aK=bw,i=0}end
for l,bj in ai(C)do
C[l].i=C[l].i+1
if C[l].i>=aU then
C[l]=aT
end
end
for l,bj in ai(L)do
L[l].i=L[l].i+1
if L[l].i>=aU then
L[l]=aT
end
end
aR=e(a(23),a(24),a(25))O=ag
P=aN(aP(0,-.6*pi/4,1),ag,ay,aY)Y=aZ(O,P)for h=i,2,-1 do
x[h].t=x[h-1].t
x[h].m=x[h-1].m
end
x[1].t=t or 0
x[1].m=m or 0
if au>=5 and au<2000 then
y=Q(aN(Q(aP(x[i].t,x[i].m,au),bo),ag,ay,aY),I)y=e(y.c,y.d,y.b<0 and 0 or y.b)if#n>0 then
aj,S=ad,0
while S<#n and aj and S<ae do
S=S+1
aj=s(E(n[S],y))>5
end
bv=#n>=ae
if aj then
if bv then
for h=1,ae-1 do
n[h]=n[h+1]end
n[ae]=y
else
n[#n+1]=y
end
end
else
n[1]=y
end
end
t=aJ(bb(-40,40))m=aJ(bb(-40,40))bc(1,t*4/pi)bc(2,m*4/pi)end
function onDraw()o,w=j.getWidth(),j.getHeight()for l,A in ai(n)do
q=E(A,I)z=s(q)if z<2000 then
r=aa(q,O,P,Y)if r.d>0 then
aC,an=ab(r,Z,X,o,w)p(5-z,z-5,0)if(A.b<.5)then
p(N(u-z/10,0,u),0,N(z/10,0,u),N(u-z/20,0,u))else
p(N(u-z/10,0,u),N(z/10,0,u),0,N(u-z/20,0,u))end
k(aC-1,an,1,1)end
end
end
for l,A in ipairs(C)do
V=A.U
if V.b<0 then
V=Q(V,e(0,0,9999))p(240,0,0)aW=aQ
else
aW=ad
p(80,13,1,230)end
q=E(V,I)r=aa(q,O,P,Y)D,G=ab(r,Z,X,o,w)v=V.b
if aW then
v=g.max(g.min(v/500,5),0)ao(D-v,G-2,D+v+1,G-2)end
bn(D-1,G-1,2,2)end
p(55,20,40,180)if s(aR)>0 then
q=E(aR,I)r=aa(q,O,P,Y)D,G=ab(r,Z,X,o,w)aX(o/2,w,D,G)p(46,0,25,240)k(D-2,G-2,1,5)k(D+2,G-2,1,5)k(D,G,1,1)end
p(0,40,255,230)for l,A in ai(L)do
q=E(A.U,I)r=aa(q,O,P,Y)H,M=ab(r,Z,X,o,w)v=A.U.b
v=g.max(g.min(v/500,5),0)ao(H-v,M-2,H+v+1,M-2)k(H,M-1,1,1)k(H+1,M,1,1)k(H,M+1,1,1)k(H-1,M,1,1)if s(A.aK)>0 then
q=E(A.aK,I)r=aa(q,O,P,Y)ah,af=ab(r,Z,X,o,w)p(30,90,255,155)aX(H,M,ah,af)p(40,40,110,165)k(ah-2,af-2,1,5)k(ah+2,af-2,1,5)k(ah,af,1,1)end
end
if bi then
p(255,0,0)k(7,4,1,88)k(88,4,1,88)end
end
