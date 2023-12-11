
r=200
aQ=nil
ab=pairs
aj=true
ax=math
aS=ax.random
aM=ax.rad
h,g,aI,aH,i,bz,bG=ax,input,output,property,screen,aj,false
a,aF,bH,by=g.getNumber,aI.setNumber,g.getBool,aI.setBool
bw,bB=aH.getNumber,aH.getBool
abs,cos,sin,floor,atan=h.abs,h.cos,h.sin,h.floor,h.atan
pi=h.pi
bD=pi*2
bF,bJ,ar,bv,j,bI,bE,t=i.drawText,i.drawTextBox,i.drawLine,i.drawRect,i.drawRectF,i.drawCircle,i.drawClear,i.setColor
function e(c,d,b,m)return{c=c or 0,d=d or 0,b=b or 0,m=m or 0}end
function U(_,f)return e(_.c+f.c,_.d+f.d,_.b+f.b)end
function bC(_,f)return e(_.c*f.c,_.d*f.d,_.b*f.b)end
function J(_,aa)return e(_.c*aa,_.d*aa,_.b*aa)end
function bg(_)return J(_,-1)end
function G(_,f)return U(_,bg(f))end
function s(_)return h.sqrt(_.c*_.c+_.d*_.d+_.b*_.b)end
function bk(_,aa)return J(_,1/aa)end
function bA(_)return bk(_,s(_))end
function an(_,f)return _.c*f.c+_.d*f.d+_.b*f.b
end
function aR(_,f)return e(_.d*f.b-_.b*f.d,_.b*f.c-_.c*f.b,_.c*f.d-_.d*f.c)end
function aJ(q,n,Y)local Y=Y or 1
return e(h.sin(q)*h.cos(n)*Y,h.cos(q)*h.cos(n)*Y,h.sin(n)*Y)end
function aP(_,M)if not D then
D={}D[M]={aB=e(),aA=e()}elseif not D[M]then
D[M]={aB=e(),aA=e()}end
D[M].aA=G(_,D[M].aB)D[M].aB=_
return D[M].aA
end
function V(_,ai,al,aq)return e(an(ai,_),an(al,_),an(aq,_))end
function aV(_,ai,al,aq)return U(U(J(ai,_.c),J(al,_.d)),J(aq,_.b))end
function N(c,i,aZ)return c<i and i or c>aZ and aZ or c
end
function Z(bu,bp,bt,m,p)local bm=bt*(.025-2.2)+2.2
local aW=m/2; local aU=p/2
local bd=(aW-128*.025)/(aU-128*.025)local aL=h.tan(bm/2); local bq=aL*bd
local Q=G(bu,bp)local ao,az=Q.d>0 and aW*(1+Q.c/Q.d/bq)or 0,Q.d>0 and p-aU*(1+Q.b/Q.d/aL)or 0
return ao,az
end
function aE(at,am,bl,bo)ay=11
aD=aj
bj=bl-at
bf=bo-am
aY=bj/ay
aT=bf/ay
for g=1,ay do
if aD then
ar(at+aY*(g-1),am+aT*(g-1),at+aY*g,am+aT*g)end
aD=not aD
end
end
o={}ae=100
k=3
S=e(0,2.625,-.5)bs=e(0,3.125,-.25)x={}for g=1,k do
x[g]={q=0,n=0}end
ba=40
I={}F={}function onTick()bh=a(28)==1
W=.12
as=a(20)H=e(a(1),a(3),a(2))aK,aN,bb=a(4),a(5),a(6)au,ak,ap=cos(aK),cos(aN),cos(bb)b_,aw,av=sin(aK),sin(aN),sin(bb)ad=e(ak*ap,-aw,ak*av)ah=e(b_*av+au*aw*ap,au*ak,-b_*ap+au*aw*av)aG=aR(ad,ah)aX=J(aP(H,"myvel"),60)bn=J(aP(aX,"myacc"),60)bK=s(aX)bx=s(bn)/9.81
af=a(19)B=e(a(7),a(8),a(9))if s(B)>0 then
F[af]={P=B,k=0}end
B=e(a(10),a(11),a(12))if s(B)>0 then
F[af+1]={P=B,k=0}end
af=a(21)B=e(a(13),a(14),a(15))br=e(a(16),a(17),a(18))if s(B)>0 then
I[af]={P=B,aO=br,k=0}end
for l,bi in ab(F)do
F[l].k=F[l].k+1
if F[l].k>=ba then
F[l]=aQ
end
end
for l,bi in ab(I)do
I[l].k=I[l].k+1
if I[l].k>=ba then
I[l]=aQ
end
end
bc=e(a(23),a(24),a(25))O=ad
R=aV(aJ(0,-.6*pi/4,1),ad,ah,aG)T=aR(O,R)for g=k,2,-1 do
x[g].q=x[g-1].q
x[g].n=x[g-1].n
end
x[1].q=q or 0
x[1].n=n or 0
if as>=5 and as<2000 then
y=U(aV(U(aJ(x[k].q,x[k].n,as),bs),ad,ah,aG),H)y=e(y.c,y.d,y.b<0 and 0 or y.b)if#o>0 then
aC,X=aj,0
while X<#o and aC and X<ae do
X=X+1
aC=s(G(o[X],y))>5
end
be=#o>=ae
if aC then
if be then
for g=1,ae-1 do
o[g]=o[g+1]end
o[ae]=y
else
o[#o+1]=y
end
end
else
o[1]=y
end
end
q=aM(aS(-40,40))n=aM(aS(-40,40))aF(1,q*4/pi)aF(2,n*4/pi)end
function onDraw()m,p=i.getWidth(),i.getHeight()for l,u in ab(o)do
v=G(u,H)A=s(v)if A<2000 then
w=V(v,O,R,T)if w.d>0 then
ao,az=Z(w,S,W,m,p)t(5-A,A-5,0)if(u.b<.5)then
t(N(r-A/10,0,r),0,N(A/10,0,r),N(r-A/20,0,r))else
t(N(r-A/10,0,r),N(A/10,0,r),0,N(r-A/20,0,r))end
j(ao-1,az,1,1)end
end
end
t(80,13,1,230)for l,u in ipairs(F)do
v=G(u.P,H)w=V(v,O,R,T)C,E=Z(w,S,W,m,p)z=u.P.b
z=h.max(h.min(z/500,5),0)ar(C-z,E-2,C+z+1,E-2)bv(C-1,E-1,2,2)end
t(55,20,40,180)if s(bc)>0 then
v=G(bc,H)w=V(v,O,R,T)C,E=Z(w,S,W,m,p)aE(m/2,p,C,E)t(46,0,25,240)j(C-2,E-2,1,5)j(C+2,E-2,1,5)j(C,E,1,1)end
t(0,40,255,230)for l,u in ab(I)do
v=G(u.P,H)w=V(v,O,R,T)K,L=Z(w,S,W,m,p)z=u.P.b
z=h.max(h.min(z/500,5),0)ar(K-z,L-2,K+z+1,L-2)j(K,L-1,1,1)j(K+1,L,1,1)j(K,L+1,1,1)j(K-1,L,1,1)if s(u.aO)>0 then
v=G(u.aO,H)w=V(v,O,R,T)ag,ac=Z(w,S,W,m,p)t(30,90,255,155)aE(K,L,ag,ac)t(40,40,110,165)j(ag-2,ac-2,1,5)j(ag+2,ac-2,1,5)j(ag,ac,1,1)end
end
if bh then
t(255,0,0)j(0,0,1,p)j(m-1,0,1,p)end
end
