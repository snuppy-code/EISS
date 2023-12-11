
s=200
aJ=nil
af=pairs
aU=false
ah=true
am=math
aM=am.random
aK=am.rad
g,h,ba,aS,i,bI,bA=am,input,output,property,screen,ah,aU
a,aO,bG,bL=h.getNumber,ba.setNumber,h.getBool,ba.setBool
bF,bM=aS.getNumber,aS.getBool
abs,cos,sin,floor,atan=g.abs,g.cos,g.sin,g.floor,g.atan
pi=g.pi
bJ=pi*2
bB,bH,av,bj,k,bD,bE,q=i.drawText,i.drawTextBox,i.drawLine,i.drawRect,i.drawRectF,i.drawCircle,i.drawClear,i.setColor
function d(e,c,b,m)return{e=e or 0,c=c or 0,b=b or 0,m=m or 0}end
function O(_,f)return d(_.e+f.e,_.c+f.c,_.b+f.b)end
function bN(_,f)return d(_.e*f.e,_.c*f.c,_.b*f.b)end
function L(_,S)return d(_.e*S,_.c*S,_.b*S)end
function bl(_)return L(_,-1)end
function G(_,f)return O(_,bl(f))end
function v(_)return g.sqrt(_.e*_.e+_.c*_.c+_.b*_.b)end
function bs(_,S)return L(_,1/S)end
function bC(_)return bs(_,v(_))end
function ao(_,f)return _.e*f.e+_.c*f.c+_.b*f.b
end
function be(_,f)return d(_.c*f.b-_.b*f.c,_.b*f.e-_.e*f.b,_.e*f.c-_.c*f.e)end
function aH(t,o,U)local U=U or 1
return d(g.sin(t)*g.cos(o)*U,g.cos(t)*g.cos(o)*U,g.sin(o)*U)end
function aP(_,H)if not F then
F={}F[H]={at=d(),as=d()}elseif not F[H]then
F[H]={at=d(),as=d()}end
F[H].as=G(_,F[H].at)F[H].at=_
return F[H].as
end
function W(_,aA,aE,aj)return d(ao(aA,_),ao(aE,_),ao(aj,_))end
function aL(_,aA,aE,aj)return O(O(L(aA,_.e),L(aE,_.c)),L(aj,_.b))end
function R(e,i,aG)return e<i and i or e>aG and aG or e
end
function aa(by,bn,bx,m,n)local bp=bx*(.025-2.2)+2.2
local aF=m/2; local aY=n/2
local bi=(aF-128*.025)/(aY-128*.025)local bc=g.tan(bp/2); local bt=bc*bi
local Q=G(by,bn)local al,ap=Q.c>0 and aF*(1+Q.e/Q.c/bt)or 0,Q.c>0 and n-aY*(1+Q.b/Q.c/bc)or 0
return al,ap
end
function b_(aw,az,bk,bw)ay=11
ak=ah
bu=bk-aw
bq=bw-az
aN=bu/ay
aX=bq/ay
for h=1,ay do
if ak then
av(aw+aN*(h-1),az+aX*(h-1),aw+aN*h,az+aX*h)end
ak=not ak
end
end
p={}ai=100
j=3
Y=d(0,2.625,-.5)br=d(0,3.125,-.25)A={}for h=1,j do
A[h]={t=0,o=0}end
bf=40
J={}B={}function onTick()bh=a(28)==1
V=.12
aC=a(20)I=d(a(1),a(3),a(2))aQ,aZ,aR=a(4),a(5),a(6)aq,aB,ax=cos(aQ),cos(aZ),cos(aR)aI,aD,au=sin(aQ),sin(aZ),sin(aR)ae=d(aB*ax,-aD,aB*au)ar=d(aI*au+aq*aD*ax,aq*aB,-aI*ax+aq*aD*au)aV=be(ae,ar)aW=L(aP(I,"myvel"),60)bg=L(aP(aW,"myacc"),60)bz=v(aW)bK=v(bg)/9.81
ad=a(19)E=d(a(7),a(8),a(9))if v(E)>0 then
B[ad]={X=E,j=0}end
E=d(a(10),a(11),a(12))if v(E)>0 then
B[ad+1]={X=E,j=0}end
ad=a(21)E=d(a(13),a(14),a(15))bv=d(a(16),a(17),a(18))if v(E)>0 then
J[ad]={X=E,bb=bv,j=0}end
for l,bm in af(B)do
B[l].j=B[l].j+1
if B[l].j>=bf then
B[l]=aJ
end
end
for l,bm in af(J)do
J[l].j=J[l].j+1
if J[l].j>=bf then
J[l]=aJ
end
end
aT=d(a(23),a(24),a(25))P=ae
N=aL(aH(0,-.6*pi/4,1),ae,ar,aV)ab=be(P,N)for h=j,2,-1 do
A[h].t=A[h-1].t
A[h].o=A[h-1].o
end
A[1].t=t or 0
A[1].o=o or 0
if aC>=5 and aC<2000 then
y=O(aL(O(aH(A[j].t,A[j].o,aC),br),ae,ar,aV),I)y=d(y.e,y.c,y.b<0 and 0 or y.b)if#p>0 then
an,T=ah,0
while T<#p and an and T<ai do
T=T+1
an=v(G(p[T],y))>5
end
bo=#p>=ai
if an then
if bo then
for h=1,ai-1 do
p[h]=p[h+1]end
p[ai]=y
else
p[#p+1]=y
end
end
else
p[1]=y
end
end
t=aK(aM(-40,40))o=aK(aM(-40,40))aO(1,t*4/pi)aO(2,o*4/pi)end
function onDraw()m,n=i.getWidth(),i.getHeight()for l,z in af(p)do
u=G(z,I)x=v(u)if x<2000 then
r=W(u,P,N,ab)if r.c>0 then
al,ap=aa(r,Y,V,m,n)q(5-x,x-5,0)if(z.b<.5)then
q(R(s-x/10,0,s),0,R(x/10,0,s),R(s-x/20,0,s))else
q(R(s-x/10,0,s),R(x/10,0,s),0,R(s-x/20,0,s))end
k(al-1,ap,1,1)end
end
end
for l,z in ipairs(B)do
Z=z.X
if Z.b<0 then
Z=O(Z,d(0,0,9999))q(240,0,0)bd=aU
else
bd=ah
q(80,13,1,230)end
u=G(Z,I)r=W(u,P,N,ab)C,D=aa(r,Y,V,m,n)w=Z.b
if bd then
w=g.max(g.min(w/500,5),0)av(C-w,D-2,C+w+1,D-2)end
bj(C-1,D-1,2,2)end
q(55,20,40,180)if v(aT)>0 then
u=G(aT,I)r=W(u,P,N,ab)C,D=aa(r,Y,V,m,n)b_(m/2,n,C,D)q(46,0,25,240)k(C-2,D-2,1,5)k(C+2,D-2,1,5)k(C,D,1,1)end
q(0,40,255,230)for l,z in af(J)do
u=G(z.X,I)r=W(u,P,N,ab)K,M=aa(r,Y,V,m,n)w=z.X.b
w=g.max(g.min(w/500,5),0)av(K-w,M-2,K+w+1,M-2)k(K,M-1,1,1)k(K+1,M,1,1)k(K,M+1,1,1)k(K-1,M,1,1)if v(z.bb)>0 then
u=G(z.bb,I)r=W(u,P,N,ab)ag,ac=aa(r,Y,V,m,n)q(30,90,255,155)b_(K,M,ag,ac)q(40,40,110,165)k(ag-2,ac-2,1,5)k(ag+2,ac-2,1,5)k(ag,ac,1,1)end
end
if bh then
q(255,0,0)k(0,0,1,n)k(m-1,0,1,n)end
end
