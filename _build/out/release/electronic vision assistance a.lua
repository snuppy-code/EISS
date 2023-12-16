
s=200
aS=nil
af=pairs
aU=false
ag=true
ao=math
b_=ao.random
aV=ao.rad
g,h,aL,aJ,k,bB,bH=ao,input,output,property,screen,ag,aU
a,be,bD,bM=h.getNumber,aL.setNumber,h.getBool,aL.setBool
bN,bI=aJ.getNumber,aJ.getBool
abs,cos,sin,floor,atan=g.abs,g.cos,g.sin,g.floor,g.atan
pi=g.pi
bG=pi*2
bF,bK,at,by,j,bJ,bA,m=k.drawText,k.drawTextBox,k.drawLine,k.drawRect,k.drawRectF,k.drawCircle,k.drawClear,k.setColor
function d(e,c,b,p)return{e=e or 0,c=c or 0,b=b or 0,p=p or 0}end
function R(_,f)return d(_.e+f.e,_.c+f.c,_.b+f.b)end
function bE(_,f)return d(_.e*f.e,_.c*f.c,_.b*f.b)end
function H(_,aa)return d(_.e*aa,_.c*aa,_.b*aa)end
function br(_)return H(_,-1)end
function D(_,f)return R(_,br(f))end
function u(_)return g.sqrt(_.e*_.e+_.c*_.c+_.b*_.b)end
function bh(_,aa)return H(_,1/aa)end
function bC(_)return bh(_,u(_))end
function aq(_,f)return _.e*f.e+_.c*f.c+_.b*f.b
end
function aI(_,f)return d(_.c*f.b-_.b*f.c,_.b*f.e-_.e*f.b,_.e*f.c-_.c*f.e)end
function aQ(q,o,X)local X=X or 1
return d(g.sin(q)*g.cos(o)*X,g.cos(q)*g.cos(o)*X,g.sin(o)*X)end
function aH(_,M)if not C then
C={}C[M]={av=d(),aE=d()}elseif not C[M]then
C[M]={av=d(),aE=d()}end
C[M].aE=D(_,C[M].av)C[M].av=_
return C[M].aE
end
function V(_,aj,aD,az)return d(aq(aj,_),aq(aD,_),aq(az,_))end
function aW(_,aj,aD,az)return R(R(H(aj,_.e),H(aD,_.c)),H(az,_.b))end
function Q(e,k,ba)return e<k and k or e>ba and ba or e
end
function W(bu,bn,bm,p,x)local bx=bm*(.025-2.2)+2.2
local bd=p/2; local aX=x/2
local bi=(bd-128*.025)/(aX-128*.025)local aT=g.tan(bx/2); local bp=aT*bi
local N=D(bu,bn)local aC,ap=N.c>0 and bd*(1+N.e/N.c/bp)or 0,N.c>0 and x-aX*(1+N.b/N.c/aT)or 0
return aC,ap
end
function aF(au,ay,bk,bj)aw=11
an=ag
bl=bk-au
bw=bj-ay
aM=bl/aw
aZ=bw/aw
for h=1,aw do
if an then
at(au+aM*(h-1),ay+aZ*(h-1),au+aM*h,ay+aZ*h)end
an=not an
end
end
n={}ai=100
i=3
T=d(0,2.625,-.5)bq=d(0,3.125,-.25)z={}for h=1,i do
z[h]={q=0,o=0}end
bb=40
L={}F={}function onTick()bv=a(28)==1
ab=.12
ar=a(20)J=d(a(1),a(3),a(2))aG,aY,aR=a(4),a(5),a(6)am,as,al=cos(aG),cos(aY),cos(aR)bc,aA,aB=sin(aG),sin(aY),sin(aR)ae=d(as*al,-aA,as*aB)ak=d(bc*aB+am*aA*al,am*as,-bc*al+am*aA*aB)aP=aI(ae,ak)aO=H(aH(J,"myvel"),60)bo=H(aH(aO,"myacc"),60)bL=u(aO)bz=u(bo)/9.81
ac=a(19)G=d(a(7),a(8),a(9))if u(G)>0 then
F[ac]={U=G,i=0}end
G=d(a(10),a(11),a(12))if u(G)>0 then
F[ac+1]={U=G,i=0}end
ac=a(21)G=d(a(13),a(14),a(15))bs=d(a(16),a(17),a(18))if u(G)>0 then
L[ac]={U=G,bf=bs,i=0}end
for l,bg in af(F)do
F[l].i=F[l].i+1
if F[l].i>=bb then
F[l]=aS
end
end
for l,bg in af(L)do
L[l].i=L[l].i+1
if L[l].i>=bb then
L[l]=aS
end
end
aK=d(a(23),a(24),a(25))P=ae
O=aW(aQ(0,-.6*pi/4,1),ae,ak,aP)Y=aI(P,O)for h=i,2,-1 do
z[h].q=z[h-1].q
z[h].o=z[h-1].o
end
z[1].q=q or 0
z[1].o=o or 0
if ar>=5 and ar<2000 then
y=R(aW(R(aQ(z[i].q,z[i].o,ar),bq),ae,ak,aP),J)y=d(y.e,y.c,y.b<0 and 0 or y.b)if#n>0 then
ax,S=ag,0
while S<#n and ax and S<ai do
S=S+1
ax=u(D(n[S],y))>5
end
bt=#n>=ai
if ax then
if bt then
for h=1,ai-1 do
n[h]=n[h+1]end
n[ai]=y
else
n[#n+1]=y
end
end
else
n[1]=y
end
end
q=aV(b_(-40,40))o=aV(b_(-40,40))be(1,q*4/pi)be(2,o*4/pi)end
function onDraw()p,x=k.getWidth(),k.getHeight()for l,v in af(n)do
r=D(v,J)A=u(r)if A<2000 then
t=V(r,P,O,Y)if t.c>0 then
aC,ap=W(t,T,ab,p,x)m(5-A,A-5,0)if(v.b<.5)then
m(Q(s-A/10,0,s),0,Q(A/10,0,s),Q(s-A/20,0,s))else
m(Q(s-A/10,0,s),Q(A/10,0,s),0,Q(s-A/20,0,s))end
j(aC-1,ap,1,1)end
end
end
for l,v in ipairs(F)do
Z=v.U
if Z.b<0 then
Z=R(Z,d(0,0,9999))m(240,0,0)aN=aU
else
aN=ag
m(80,13,1,230)end
r=D(Z,J)t=V(r,P,O,Y)E,B=W(t,T,ab,p,x)w=Z.b
if aN then
w=g.max(g.min(w/500,5),0)at(E-w,B-2,E+w+1,B-2)end
by(E-1,B-1,2,2)end
m(55,20,40,180)if u(aK)>0 then
r=D(aK,J)t=V(r,P,O,Y)E,B=W(t,T,ab,p,x)aF(p/2,x,E,B)m(46,0,25,240)j(E-2,B-2,1,5)j(E+2,B-2,1,5)j(E,B,1,1)end
m(0,40,255,230)for l,v in af(L)do
r=D(v.U,J)t=V(r,P,O,Y)K,I=W(t,T,ab,p,x)w=v.U.b
w=g.max(g.min(w/500,5),0)at(K-w,I-2,K+w+1,I-2)j(K,I-1,1,1)j(K+1,I,1,1)j(K,I+1,1,1)j(K-1,I,1,1)if u(v.bf)>0 then
r=D(v.bf,J)t=V(r,P,O,Y)ad,ah=W(t,T,ab,p,x)m(30,90,255,155)aF(K,I,ad,ah)m(40,40,110,165)j(ad-2,ah-2,1,5)j(ad+2,ah-2,1,5)j(ad,ah,1,1)end
end
if bv then
m(255,0,0)j(7,4,1,88)j(88,4,1,88)end
end
