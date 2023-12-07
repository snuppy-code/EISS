
w=200
aQ=nil
af=pairs
au=true
av=math
aH=av.random
aI=av.rad
h,g,aR,b_,j,bz,bx=av,input,output,property,screen,au,false
a,aU,bD,bH=g.getNumber,aR.setNumber,g.getBool,aR.setBool
bK,bE=b_.getNumber,b_.getBool
abs,cos,sin,floor,atan=h.abs,h.cos,h.sin,h.floor,h.atan
pi=h.pi
bJ=pi*2
bG,bA,aj,bt,k,bI,bC,r=j.drawText,j.drawTextBox,j.drawLine,j.drawRect,j.drawRectF,j.drawCircle,j.drawClear,j.setColor
function e(d,b,c,m)return{d=d or 0,b=b or 0,c=c or 0,m=m or 0}end
function Z(_,f)return e(_.d+f.d,_.b+f.b,_.c+f.c)end
function bF(_,f)return e(_.d*f.d,_.b*f.b,_.c*f.c)end
function J(_,X)return e(_.d*X,_.b*X,_.c*X)end
function bp(_)return J(_,-1)end
function C(_,f)return Z(_,bp(f))end
function s(_)return h.sqrt(_.d*_.d+_.b*_.b+_.c*_.c)end
function bm(_,X)return J(_,1/X)end
function bw(_)return bm(_,s(_))end
function ah(_,f)return _.d*f.d+_.b*f.b+_.c*f.c
end
function aE(_,f)return e(_.b*f.c-_.c*f.b,_.c*f.d-_.d*f.c,_.d*f.b-_.b*f.d)end
function aV(u,o,S)local S=S or 1
return e(h.sin(u)*h.cos(o)*S,h.cos(u)*h.cos(o)*S,h.sin(o)*S)end
function aF(_,M)if not D then
D={}D[M]={ar=e(),al=e()}elseif not D[M]then
D[M]={ar=e(),al=e()}end
D[M].al=C(_,D[M].ar)D[M].ar=_
return D[M].al
end
function U(_,aD,ap,ak)return e(ah(aD,_),ah(ap,_),ah(ak,_))end
function aK(_,aD,ap,ak)return Z(Z(J(aD,_.d),J(ap,_.b)),J(ak,_.c))end
function R(d,j,aZ)return d<j and j or d>aZ and aZ or d
end
function T(bf,bj,br,m,p)local bv=br*(.025-2.2)+2.2
local aM=m/2; local bb=p/2
local bl=(aM-128*.025)/(bb-128*.025)local aO=h.tan(bv/2); local bs=aO*bl
local O=C(bf,bj)local aA,an=O.b>0 and aM*(1+O.d/O.b/bs)or 0,O.b>0 and p-bb*(1+O.c/O.b/aO)or 0
return aA,an
end
function aG(aq,aw,bg,bk)ai=11
as=au
bu=bg-aq
bh=bk-aw
aN=bu/ai
aL=bh/ai
for g=1,ai do
if as then
aj(aq+aN*(g-1),aw+aL*(g-1),aq+aN*g,aw+aL*g)end
as=not as
end
end
n={}ac=100
i=3
aa=e(0,2.625,-.5)bq=e(0,3.125,-.25)x={}for g=1,i do
x[g]={u=0,o=0}end
aP=10
L={}E={}function onTick()bo=a(28)==1
W=.12
aB=a(20)I=e(a(1),a(3),a(2))aY,aS,ba=a(4),a(5),a(6)ay,aC,am=cos(aY),cos(aS),cos(ba)aT,ao,az=sin(aY),sin(aS),sin(ba)ab=e(aC*am,-ao,aC*az)ax=e(aT*az+ay*ao*am,ay*aC,-aT*am+ay*ao*az)aW=aE(ab,ax)aX=J(aF(I,"myvel"),60)bi=J(aF(aX,"myacc"),60)by=s(aX)bB=s(bi)/9.81
ag=a(19)B=e(a(7),a(8),a(9))if s(B)>0 then
E[ag]={N=B,i=0}end
B=e(a(10),a(11),a(12))if s(B)>0 then
E[ag+1]={N=B,i=0}end
ag=a(21)B=e(a(13),a(14),a(15))bn=e(a(16),a(17),a(18))if s(B)>0 then
L[ag]={N=B,bc=bn,i=0}end
for l,bd in af(E)do
E[l].i=E[l].i+1
if E[l].i>=aP then
E[l]=aQ
end
end
for l,bd in af(L)do
L[l].i=L[l].i+1
if L[l].i>=aP then
L[l]=aQ
end
end
aJ=e(a(23),a(24),a(25))Q=ab
P=aK(aV(0,-.6*pi/4,1),ab,ax,aW)V=aE(Q,P)for g=i,2,-1 do
x[g].u=x[g-1].u
x[g].o=x[g-1].o
end
x[1].u=u or 0
x[1].o=o or 0
if aB>=5 and aB<2000 then
z=Z(aK(Z(aV(x[i].u,x[i].o,aB),bq),ab,ax,aW),I)z=e(z.d,z.b,z.c<0 and 0 or z.c)if#n>0 then
at,Y=au,0
while Y<#n and at and Y<ac do
Y=Y+1
at=s(C(n[Y],z))>5
end
be=#n>=ac
if at then
if be then
for g=1,ac-1 do
n[g]=n[g+1]end
n[ac]=z
else
n[#n+1]=z
end
end
else
n[1]=z
end
end
u=aI(aH(-40,40))o=aI(aH(-40,40))aU(1,u*4/pi)aU(2,o*4/pi)end
function onDraw()m,p=j.getWidth(),j.getHeight()if bo then
r(255,0,0)k(0,0,1,p)k(m-1,0,1,p)end
for l,q in af(n)do
t=C(q,I)y=s(t)if y<2000 then
v=U(t,Q,P,V)if v.b>0 then
aA,an=T(v,aa,W,m,p)r(5-y,y-5,0)if(q.c<.5)then
r(R(w-y/10,0,w),0,R(y/10,0,w),R(w-y/20,0,w))else
r(R(w-y/10,0,w),R(y/10,0,w),0,R(w-y/20,0,w))end
k(aA-1,an,1,1)end
end
end
r(80,13,1,230)for l,q in ipairs(E)do
t=C(q.N,I)v=U(t,Q,P,V)F,G=T(v,aa,W,m,p)A=q.N.c
A=h.max(h.min(A/500,5),0)aj(F-A,G-2,F+A+1,G-2)bt(F-1,G-1,2,2)end
r(55,20,40,180)if s(aJ)>0 then
t=C(aJ,I)v=U(t,Q,P,V)F,G=T(v,aa,W,m,p)aG(m/2,p,F,G)r(46,0,25,240)k(F-2,G-2,1,5)k(F+2,G-2,1,5)k(F,G,1,1)end
r(0,40,255,230)for l,q in af(L)do
t=C(q.N,I)v=U(t,Q,P,V)K,H=T(v,aa,W,m,p)A=q.N.c
A=h.max(h.min(A/500,5),0)aj(K-A,H-2,K+A+1,H-2)k(K,H-1,1,1)k(K+1,H,1,1)k(K,H+1,1,1)k(K-1,H,1,1)if s(q.bc)>0 then
t=C(q.bc,I)v=U(t,Q,P,V)ad,ae=T(v,aa,W,m,p)r(30,90,255,155)aG(K,H,ad,ae)r(40,40,110,165)k(ad-2,ae-2,1,5)k(ad+2,ae-2,1,5)k(ad,ae,1,1)end
end
end
