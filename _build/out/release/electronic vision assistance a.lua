
q=200
aE=nil
af=pairs
al=true
aA=math
aL=aA.random
aH=aA.rad
g,h,aM,aO,i,by,bw=aA,input,output,property,screen,al,false
a,aP,bF,bK=h.getNumber,aM.setNumber,h.getBool,aM.setBool
bC,bE=aO.getNumber,aO.getBool
abs,cos,sin,floor,atan=g.abs,g.cos,g.sin,g.floor,g.atan
pi=g.pi
bJ=pi*2
bx,bI,as,bk,j,bA,bB,t=i.drawText,i.drawTextBox,i.drawLine,i.drawRect,i.drawRectF,i.drawCircle,i.drawClear,i.setColor
function e(c,b,d,l)return{c=c or 0,b=b or 0,d=d or 0,l=l or 0}end
function X(_,f)return e(_.c+f.c,_.b+f.b,_.d+f.d)end
function bD(_,f)return e(_.c*f.c,_.b*f.b,_.d*f.d)end
function H(_,W)return e(_.c*W,_.b*W,_.d*W)end
function bv(_)return H(_,-1)end
function B(_,f)return X(_,bv(f))end
function u(_)return g.sqrt(_.c*_.c+_.b*_.b+_.d*_.d)end
function bq(_,W)return H(_,1/W)end
function bH(_)return bq(_,u(_))end
function aB(_,f)return _.c*f.c+_.b*f.b+_.d*f.d
end
function aN(_,f)return e(_.b*f.d-_.d*f.b,_.d*f.c-_.c*f.d,_.c*f.b-_.b*f.c)end
function aI(s,n,Z)local Z=Z or 1
return e(g.sin(s)*g.cos(n)*Z,g.cos(s)*g.cos(n)*Z,g.sin(n)*Z)end
function aV(_,L)if not F then
F={}F[L]={au=e(),aC=e()}elseif not F[L]then
F[L]={au=e(),aC=e()}end
F[L].aC=B(_,F[L].au)F[L].au=_
return F[L].aC
end
function S(_,ay,aD,av)return e(aB(ay,_),aB(aD,_),aB(av,_))end
function aR(_,ay,aD,av)return X(X(H(ay,_.c),H(aD,_.b)),H(av,_.d))end
function N(c,i,aS)return c<i and i or c>aS and aS or c
end
function aa(bh,bf,bp,l,p)local bi=bp*(.025-2.2)+2.2
local aU=l/2; local aW=p/2
local bn=(aU-128*.025)/(aW-128*.025)local ba=g.tan(bi/2); local bj=ba*bn
local O=B(bh,bf)local ap,ar=O.b>0 and aU*(1+O.c/O.b/bj)or 0,O.b>0 and p-aW*(1+O.d/O.b/ba)or 0
return ap,ar
end
function aQ(ao,ah,bg,bu)ak=11
aj=al
bs=bg-ao
bd=bu-ah
bb=bs/ak
aF=bd/ak
for h=1,ak do
if aj then
as(ao+bb*(h-1),ah+aF*(h-1),ao+bb*h,ah+aF*h)end
aj=not aj
end
end
o={}ae=100
k=3
V=e(0,2.625,-.5)bm=e(0,3.125,-.25)A={}for h=1,k do
A[h]={s=0,n=0}end
bc=10
K={}C={}function onTick()bt=a(28)==1
U=.12
aq=a(20)I=e(a(1),a(3),a(2))aJ,b_,aX=a(4),a(5),a(6)am,aw,ax=cos(aJ),cos(b_),cos(aX)aZ,at,az=sin(aJ),sin(b_),sin(aX)ac=e(aw*ax,-at,aw*az)ai=e(aZ*az+am*at*ax,am*aw,-aZ*ax+am*at*az)aT=aN(ac,ai)aK=H(aV(I,"myvel"),60)bl=H(aV(aK,"myacc"),60)bG=u(aK)bz=u(bl)/9.81
ag=a(19)E=e(a(7),a(8),a(9))if u(E)>0 then
C[ag]={R=E,k=0}end
E=e(a(10),a(11),a(12))if u(E)>0 then
C[ag+1]={R=E,k=0}end
ag=a(21)E=e(a(13),a(14),a(15))br=e(a(16),a(17),a(18))if u(E)>0 then
K[ag]={R=E,aY=br,k=0}end
for m,be in af(C)do
C[m].k=C[m].k+1
if C[m].k>=bc then
C[m]=aE
end
end
for m,be in af(K)do
K[m].k=K[m].k+1
if K[m].k>=bc then
K[m]=aE
end
end
aG=e(a(23),a(24),a(25))P=ac
Q=aR(aI(0,-.6*pi/4,1),ac,ai,aT)Y=aN(P,Q)for h=k,2,-1 do
A[h].s=A[h-1].s
A[h].n=A[h-1].n
end
A[1].s=s or 0
A[1].n=n or 0
if aq>=5 and aq<2000 then
z=X(aR(X(aI(A[k].s,A[k].n,aq),bm),ac,ai,aT),I)z=e(z.c,z.b,z.d<0 and 0 or z.d)if#o>0 then
an,T=al,0
while T<#o and an and T<ae do
T=T+1
an=u(B(o[T],z))>5
end
bo=#o>=ae
if an then
if bo then
for h=1,ae-1 do
o[h]=o[h+1]end
o[ae]=z
else
o[#o+1]=z
end
end
else
o[1]=z
end
end
s=aH(aL(-40,40))n=aH(aL(-40,40))aP(1,s*4/pi)aP(2,n*4/pi)end
function onDraw()l,p=i.getWidth(),i.getHeight()for m,r in af(o)do
w=B(r,I)x=u(w)if x<2000 then
v=S(w,P,Q,Y)if v.b>0 then
ap,ar=aa(v,V,U,l,p)t(5-x,x-5,0)if(r.d<.5)then
t(N(q-x/10,0,q),0,N(x/10,0,q),N(q-x/20,0,q))else
t(N(q-x/10,0,q),N(x/10,0,q),0,N(q-x/20,0,q))end
j(ap-1,ar,1,1)end
end
end
t(80,13,1,230)for m,r in ipairs(C)do
w=B(r.R,I)v=S(w,P,Q,Y)G,D=aa(v,V,U,l,p)y=r.R.d
y=g.max(g.min(y/500,5),0)as(G-y,D-2,G+y+1,D-2)bk(G-1,D-1,2,2)end
t(55,20,40,180)if u(aG)>0 then
w=B(aG,I)v=S(w,P,Q,Y)G,D=aa(v,V,U,l,p)aQ(l/2,p,G,D)t(46,0,25,240)j(G-2,D-2,1,5)j(G+2,D-2,1,5)j(G,D,1,1)end
t(0,40,255,230)for m,r in af(K)do
w=B(r.R,I)v=S(w,P,Q,Y)M,J=aa(v,V,U,l,p)y=r.R.d
y=g.max(g.min(y/500,5),0)as(M-y,J-2,M+y+1,J-2)j(M,J-1,1,1)j(M+1,J,1,1)j(M,J+1,1,1)j(M-1,J,1,1)if u(r.aY)>0 then
w=B(r.aY,I)v=S(w,P,Q,Y)ad,ab=aa(v,V,U,l,p)t(30,90,255,155)aQ(M,J,ad,ab)t(40,40,110,165)j(ad-2,ab-2,1,5)j(ad+2,ab-2,1,5)j(ad,ab,1,1)end
end
if bt then
t(255,0,0)j(0,0,1,p)j(l-1,0,1,p)end
end
