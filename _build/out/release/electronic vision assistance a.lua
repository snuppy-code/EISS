
w=200
aX=nil
ad=pairs
ah=true
at=math
aQ=at.random
aU=at.rad
g,h,aG,aN,j,bA,bK=at,input,output,property,screen,ah,false
a,aJ,bI,bz=h.getNumber,aG.setNumber,h.getBool,aG.setBool
bD,by=aN.getNumber,aN.getBool
abs,cos,sin,floor,atan=g.abs,g.cos,g.sin,g.floor,g.atan
pi=g.pi
bB=pi*2
bF,bC,am,bt,i,bJ,bH,s=j.drawText,j.drawTextBox,j.drawLine,j.drawRect,j.drawRectF,j.drawCircle,j.drawClear,j.setColor
function e(d,b,c,m)return{d=d or 0,b=b or 0,c=c or 0,m=m or 0}end
function V(_,f)return e(_.d+f.d,_.b+f.b,_.c+f.c)end
function bx(_,f)return e(_.d*f.d,_.b*f.b,_.c*f.c)end
function K(_,Z)return e(_.d*Z,_.b*Z,_.c*Z)end
function bf(_)return K(_,-1)end
function B(_,f)return V(_,bf(f))end
function q(_)return g.sqrt(_.d*_.d+_.b*_.b+_.c*_.c)end
function br(_,Z)return K(_,1/Z)end
function bG(_)return br(_,q(_))end
function ak(_,f)return _.d*f.d+_.b*f.b+_.c*f.c
end
function aO(_,f)return e(_.b*f.c-_.c*f.b,_.c*f.d-_.d*f.c,_.d*f.b-_.b*f.d)end
function bb(v,p,aa)local aa=aa or 1
return e(g.sin(v)*g.cos(p)*aa,g.cos(v)*g.cos(p)*aa,g.sin(p)*aa)end
function b_(_,I)if not C then
C={}C[I]={aB=e(),as=e()}elseif not C[I]then
C[I]={aB=e(),as=e()}end
C[I].as=B(_,C[I].aB)C[I].aB=_
return C[I].as
end
function U(_,al,ao,au)return e(ak(al,_),ak(ao,_),ak(au,_))end
function aR(_,al,ao,au)return V(V(K(al,_.d),K(ao,_.b)),K(au,_.c))end
function N(d,j,aI)return d<j and j or d>aI and aI or d
end
function Y(bj,bd,bq,m,o)local bo=bq*(.025-2.2)+2.2
local aL=m/2; local aM=o/2
local bp=(aL-128*.025)/(aM-128*.025)local aT=g.tan(bo/2); local bg=aT*bp
local P=B(bj,bd)local aC,aw=P.b>0 and aL*(1+P.d/P.b/bg)or 0,P.b>0 and o-aM*(1+P.c/P.b/aT)or 0
return aC,aw
end
function aH(az,ax,bi,bs)aD=11
ap=ah
bv=bi-az
bm=bs-ax
ba=bv/aD
aZ=bm/aD
for h=1,aD do
if ap then
am(az+ba*(h-1),ax+aZ*(h-1),az+ba*h,ax+aZ*h)end
ap=not ap
end
end
n={}ae=100
k=3
T=e(0,2.625,-.5)bu=e(0,3.125,-.25)y={}for h=1,k do
y[h]={v=0,p=0}end
aP=40
M={}E={}function onTick()bn=a(28)==1
X=.12
aj=a(20)L=e(a(1),a(3),a(2))aE,aS,aF=a(4),a(5),a(6)aA,ai,ar=cos(aE),cos(aS),cos(aF)bc,aq,av=sin(aE),sin(aS),sin(aF)ac=e(ai*ar,-aq,ai*av)ay=e(bc*av+aA*aq*ar,aA*ai,-bc*ar+aA*aq*av)aY=aO(ac,ay)aW=K(b_(L,"myvel"),60)bl=K(b_(aW,"myacc"),60)bw=q(aW)bE=q(bl)/9.81
ag=a(19)F=e(a(7),a(8),a(9))if q(F)>0 then
E[ag]={R=F,k=0}end
F=e(a(10),a(11),a(12))if q(F)>0 then
E[ag+1]={R=F,k=0}end
ag=a(21)F=e(a(13),a(14),a(15))bk=e(a(16),a(17),a(18))if q(F)>0 then
M[ag]={R=F,aK=bk,k=0}end
for l,bh in ad(E)do
E[l].k=E[l].k+1
if E[l].k>=aP then
E[l]=aX
end
end
for l,bh in ad(M)do
M[l].k=M[l].k+1
if M[l].k>=aP then
M[l]=aX
end
end
aV=e(a(23),a(24),a(25))Q=ac
O=aR(bb(0,-.6*pi/4,1),ac,ay,aY)W=aO(Q,O)for h=k,2,-1 do
y[h].v=y[h-1].v
y[h].p=y[h-1].p
end
y[1].v=v or 0
y[1].p=p or 0
if aj>=5 and aj<2000 then
x=V(aR(V(bb(y[k].v,y[k].p,aj),bu),ac,ay,aY),L)x=e(x.d,x.b,x.c<0 and 0 or x.c)if#n>0 then
an,S=ah,0
while S<#n and an and S<ae do
S=S+1
an=q(B(n[S],x))>5
end
be=#n>=ae
if an then
if be then
for h=1,ae-1 do
n[h]=n[h+1]end
n[ae]=x
else
n[#n+1]=x
end
end
else
n[1]=x
end
end
v=aU(aQ(-40,40))p=aU(aQ(-40,40))aJ(1,v*4/pi)aJ(2,p*4/pi)end
function onDraw()m,o=j.getWidth(),j.getHeight()for l,u in ad(n)do
t=B(u,L)A=q(t)if A<2000 then
r=U(t,Q,O,W)if r.b>0 then
aC,aw=Y(r,T,X,m,o)s(5-A,A-5,0)if(u.c<.5)then
s(N(w-A/10,0,w),0,N(A/10,0,w),N(w-A/20,0,w))else
s(N(w-A/10,0,w),N(A/10,0,w),0,N(w-A/20,0,w))end
i(aC-1,aw,1,1)end
end
end
s(80,13,1,230)for l,u in ipairs(E)do
t=B(u.R,L)r=U(t,Q,O,W)D,G=Y(r,T,X,m,o)z=u.R.c
z=g.max(g.min(z/500,5),0)am(D-z,G-2,D+z+1,G-2)bt(D-1,G-1,2,2)end
s(55,20,40,180)if q(aV)>0 then
t=B(aV,L)r=U(t,Q,O,W)D,G=Y(r,T,X,m,o)aH(m/2,o,D,G)s(46,0,25,240)i(D-2,G-2,1,5)i(D+2,G-2,1,5)i(D,G,1,1)end
s(0,40,255,230)for l,u in ad(M)do
t=B(u.R,L)r=U(t,Q,O,W)H,J=Y(r,T,X,m,o)z=u.R.c
z=g.max(g.min(z/500,5),0)am(H-z,J-2,H+z+1,J-2)i(H,J-1,1,1)i(H+1,J,1,1)i(H,J+1,1,1)i(H-1,J,1,1)if q(u.aK)>0 then
t=B(u.aK,L)r=U(t,Q,O,W)ab,af=Y(r,T,X,m,o)s(30,90,255,155)aH(H,J,ab,af)s(40,40,110,165)i(ab-2,af-2,1,5)i(ab+2,af-2,1,5)i(ab,af,1,1)end
end
if bn then
s(255,0,0)i(0,0,1,o)i(m-1,0,1,o)end
end
