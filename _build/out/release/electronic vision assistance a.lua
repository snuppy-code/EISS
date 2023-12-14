
r=200
aU=nil
ai=pairs
aO=false
ag=true
ao=math
aK=ao.random
aY=ao.rad
g,h,b_,aH,i,bz,bL=ao,input,output,property,screen,ag,aO
a,ba,bM,bI=h.getNumber,b_.setNumber,h.getBool,b_.setBool
bK,bD=aH.getNumber,aH.getBool
abs,cos,sin,floor,atan=g.abs,g.cos,g.sin,g.floor,g.atan
pi=g.pi
bA=pi*2
bB,bH,ay,bn,j,bJ,bE,p=i.drawText,i.drawTextBox,i.drawLine,i.drawRect,i.drawRectF,i.drawCircle,i.drawClear,i.setColor
function d(c,e,b,m)return{c=c or 0,e=e or 0,b=b or 0,m=m or 0}end
function N(_,f)return d(_.c+f.c,_.e+f.e,_.b+f.b)end
function bG(_,f)return d(_.c*f.c,_.e*f.e,_.b*f.b)end
function K(_,Y)return d(_.c*Y,_.e*Y,_.b*Y)end
function bm(_)return K(_,-1)end
function B(_,f)return N(_,bm(f))end
function s(_)return g.sqrt(_.c*_.c+_.e*_.e+_.b*_.b)end
function bs(_,Y)return K(_,1/Y)end
function bN(_)return bs(_,s(_))end
function as(_,f)return _.c*f.c+_.e*f.e+_.b*f.b
end
function aQ(_,f)return d(_.e*f.b-_.b*f.e,_.b*f.c-_.c*f.b,_.c*f.e-_.e*f.c)end
function bd(q,n,Z)local Z=Z or 1
return d(g.sin(q)*g.cos(n)*Z,g.cos(q)*g.cos(n)*Z,g.sin(n)*Z)end
function aP(_,M)if not G then
G={}G[M]={ak=d(),av=d()}elseif not G[M]then
G[M]={ak=d(),av=d()}end
G[M].av=B(_,G[M].ak)G[M].ak=_
return G[M].av
end
function ab(_,ap,aq,an)return d(as(ap,_),as(aq,_),as(an,_))end
function bb(_,ap,aq,an)return N(N(K(ap,_.c),K(aq,_.e)),K(an,_.b))end
function R(c,i,aF)return c<i and i or c>aF and aF or c
end
function W(bl,bp,bq,m,z)local bh=bq*(.025-2.2)+2.2
local aX=m/2; local aL=z/2
local br=(aX-128*.025)/(aL-128*.025)local aT=g.tan(bh/2); local bu=aT*br
local P=B(bl,bp)local al,ar=P.e>0 and aX*(1+P.c/P.e/bu)or 0,P.e>0 and z-aL*(1+P.b/P.e/aT)or 0
return al,ar
end
function aI(aw,aD,bi,bk)am=11
aC=ag
bw=bi-aw
bt=bk-aD
aG=bw/am
aZ=bt/am
for h=1,am do
if aC then
ay(aw+aG*(h-1),aD+aZ*(h-1),aw+aG*h,aD+aZ*h)end
aC=not aC
end
end
o={}ad=100
k=3
V=d(0,2.625,-.5)by=d(0,3.125,-.25)v={}for h=1,k do
v[h]={q=0,n=0}end
aR=40
I={}D={}function onTick()bx=a(28)==1
aa=.12
aj=a(20)J=d(a(1),a(3),a(2))bc,bf,be=a(4),a(5),a(6)at,aA,aE=cos(bc),cos(bf),cos(be)aS,au,ax=sin(bc),sin(bf),sin(be)ae=d(aA*aE,-au,aA*ax)az=d(aS*ax+at*au*aE,at*aA,-aS*aE+at*au*ax)aJ=aQ(ae,az)aN=K(aP(J,"myvel"),60)bo=K(aP(aN,"myacc"),60)bC=s(aN)bF=s(bo)/9.81
ac=a(19)F=d(a(7),a(8),a(9))if s(F)>0 then
D[ac]={S=F,k=0}end
F=d(a(10),a(11),a(12))if s(F)>0 then
D[ac+1]={S=F,k=0}end
ac=a(21)F=d(a(13),a(14),a(15))bv=d(a(16),a(17),a(18))if s(F)>0 then
I[ac]={S=F,aM=bv,k=0}end
for l,bg in ai(D)do
D[l].k=D[l].k+1
if D[l].k>=aR then
D[l]=aU
end
end
for l,bg in ai(I)do
I[l].k=I[l].k+1
if I[l].k>=aR then
I[l]=aU
end
end
aV=d(a(23),a(24),a(25))O=ae
Q=bb(bd(0,-.6*pi/4,1),ae,az,aJ)U=aQ(O,Q)for h=k,2,-1 do
v[h].q=v[h-1].q
v[h].n=v[h-1].n
end
v[1].q=q or 0
v[1].n=n or 0
if aj>=5 and aj<2000 then
w=N(bb(N(bd(v[k].q,v[k].n,aj),by),ae,az,aJ),J)w=d(w.c,w.e,w.b<0 and 0 or w.b)if#o>0 then
aB,T=ag,0
while T<#o and aB and T<ad do
T=T+1
aB=s(B(o[T],w))>5
end
bj=#o>=ad
if aB then
if bj then
for h=1,ad-1 do
o[h]=o[h+1]end
o[ad]=w
else
o[#o+1]=w
end
end
else
o[1]=w
end
end
q=aY(aK(-40,40))n=aY(aK(-40,40))ba(1,q*4/pi)ba(2,n*4/pi)end
function onDraw()m,z=i.getWidth(),i.getHeight()for l,y in ai(o)do
u=B(y,J)x=s(u)if x<2000 then
t=ab(u,O,Q,U)if t.e>0 then
al,ar=W(t,V,aa,m,z)p(5-x,x-5,0)if(y.b<.5)then
p(R(r-x/10,0,r),0,R(x/10,0,r),R(r-x/20,0,r))else
p(R(r-x/10,0,r),R(x/10,0,r),0,R(r-x/20,0,r))end
j(al-1,ar,1,1)end
end
end
for l,y in ipairs(D)do
X=y.S
if X.b<0 then
X=N(X,d(0,0,9999))p(240,0,0)aW=aO
else
aW=ag
p(80,13,1,230)end
u=B(X,J)t=ab(u,O,Q,U)C,E=W(t,V,aa,m,z)A=X.b
if aW then
A=g.max(g.min(A/500,5),0)ay(C-A,E-2,C+A+1,E-2)end
bn(C-1,E-1,2,2)end
p(55,20,40,180)if s(aV)>0 then
u=B(aV,J)t=ab(u,O,Q,U)C,E=W(t,V,aa,m,z)aI(m/2,z,C,E)p(46,0,25,240)j(C-2,E-2,1,5)j(C+2,E-2,1,5)j(C,E,1,1)end
p(0,40,255,230)for l,y in ai(I)do
u=B(y.S,J)t=ab(u,O,Q,U)H,L=W(t,V,aa,m,z)A=y.S.b
A=g.max(g.min(A/500,5),0)ay(H-A,L-2,H+A+1,L-2)j(H,L-1,1,1)j(H+1,L,1,1)j(H,L+1,1,1)j(H-1,L,1,1)if s(y.aM)>0 then
u=B(y.aM,J)t=ab(u,O,Q,U)af,ah=W(t,V,aa,m,z)p(30,90,255,155)aI(H,L,af,ah)p(40,40,110,165)j(af-2,ah-2,1,5)j(af+2,ah-2,1,5)j(af,ah,1,1)end
end
if bx then
p(255,0,0)j(7,4,1,88)j(88,4,1,88)end
end
