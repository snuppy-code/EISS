
t=200
aK=nil
ac=pairs
aY=false
ah=true
at=math
bf=at.random
aO=at.rad
h,g,aJ,aX,k,bL,bN=at,input,output,property,screen,ah,aY
a,aR,bE,bB=g.getNumber,aJ.setNumber,g.getBool,aJ.setBool
bJ,bD=aX.getNumber,aX.getBool
abs,cos,sin,floor,atan=h.abs,h.cos,h.sin,h.floor,h.atan
pi=h.pi
bz=pi*2
bA,bK,aj,bx,i,bM,bI,o=k.drawText,k.drawTextBox,k.drawLine,k.drawRect,k.drawRectF,k.drawCircle,k.drawClear,k.setColor
function e(d,c,b,m)return{d=d or 0,c=c or 0,b=b or 0,m=m or 0}end
function N(_,f)return e(_.d+f.d,_.c+f.c,_.b+f.b)end
function bC(_,f)return e(_.d*f.d,_.c*f.c,_.b*f.b)end
function K(_,Z)return e(_.d*Z,_.c*Z,_.b*Z)end
function bt(_)return K(_,-1)end
function B(_,f)return N(_,bt(f))end
function s(_)return h.sqrt(_.d*_.d+_.c*_.c+_.b*_.b)end
function bi(_,Z)return K(_,1/Z)end
function bG(_)return bi(_,s(_))end
function aA(_,f)return _.d*f.d+_.c*f.c+_.b*f.b
end
function aU(_,f)return e(_.c*f.b-_.b*f.c,_.b*f.d-_.d*f.b,_.d*f.c-_.c*f.d)end
function aW(q,p,S)local S=S or 1
return e(h.sin(q)*h.cos(p)*S,h.cos(q)*h.cos(p)*S,h.sin(p)*S)end
function bc(_,H)if not D then
D={}D[H]={aE=e(),az=e()}elseif not D[H]then
D[H]={aE=e(),az=e()}end
D[H].az=B(_,D[H].aE)D[H].aE=_
return D[H].az
end
function T(_,av,ay,aq)return e(aA(av,_),aA(ay,_),aA(aq,_))end
function aG(_,av,ay,aq)return N(N(K(av,_.d),K(ay,_.c)),K(aq,_.b))end
function O(d,k,aV)return d<k and k or d>aV and aV or d
end
function U(bj,bp,bg,m,A)local bm=bg*(.025-2.2)+2.2
local aN=m/2; local aQ=A/2
local bu=(aN-128*.025)/(aQ-128*.025)local aL=h.tan(bm/2); local bh=aL*bu
local R=B(bj,bp)local ax,ao=R.c>0 and aN*(1+R.d/R.c/bh)or 0,R.c>0 and A-aQ*(1+R.b/R.c/aL)or 0
return ax,ao
end
function aZ(ap,am,bl,br)aB=11
as=ah
bs=bl-ap
bk=br-am
aH=bs/aB
aM=bk/aB
for g=1,aB do
if as then
aj(ap+aH*(g-1),am+aM*(g-1),ap+aH*g,am+aM*g)end
as=not as
end
end
n={}ag=100
j=3
V=e(0,2.625,-.5)bo=e(0,3.125,-.25)y={}for g=1,j do
y[g]={q=0,p=0}end
aT=40
M={}C={}function onTick()by=a(28)==1
ab=.12
aw=a(20)J=e(a(1),a(3),a(2))aP,be,aI=a(4),a(5),a(6)aC,au,aD=cos(aP),cos(be),cos(aI)bd,ak,ar=sin(aP),sin(be),sin(aI)ad=e(au*aD,-ak,au*ar)al=e(bd*ar+aC*ak*aD,aC*au,-bd*aD+aC*ak*ar)aS=aU(ad,al)aF=K(bc(J,"myvel"),60)bw=K(bc(aF,"myacc"),60)bF=s(aF)bH=s(bw)/9.81
ae=a(19)F=e(a(7),a(8),a(9))if s(F)>0 then
C[ae]={W=F,j=0}end
F=e(a(10),a(11),a(12))if s(F)>0 then
C[ae+1]={W=F,j=0}end
ae=a(21)F=e(a(13),a(14),a(15))bn=e(a(16),a(17),a(18))if s(F)>0 then
M[ae]={W=F,ba=bn,j=0}end
for l,bq in ac(C)do
C[l].j=C[l].j+1
if C[l].j>=aT then
C[l]=aK
end
end
for l,bq in ac(M)do
M[l].j=M[l].j+1
if M[l].j>=aT then
M[l]=aK
end
end
bb=e(a(23),a(24),a(25))P=ad
Q=aG(aW(0,-.6*pi/4,1),ad,al,aS)X=aU(P,Q)for g=j,2,-1 do
y[g].q=y[g-1].q
y[g].p=y[g-1].p
end
y[1].q=q or 0
y[1].p=p or 0
if aw>=5 and aw<2000 then
v=N(aG(N(aW(y[j].q,y[j].p,aw),bo),ad,al,aS),J)v=e(v.d,v.c,v.b<0 and 0 or v.b)if#n>0 then
an,aa=ah,0
while aa<#n and an and aa<ag do
aa=aa+1
an=s(B(n[aa],v))>5
end
bv=#n>=ag
if an then
if bv then
for g=1,ag-1 do
n[g]=n[g+1]end
n[ag]=v
else
n[#n+1]=v
end
end
else
n[1]=v
end
end
q=aO(bf(-40,40))p=aO(bf(-40,40))aR(1,q*4/pi)aR(2,p*4/pi)end
function onDraw()m,A=k.getWidth(),k.getHeight()for l,x in ac(n)do
u=B(x,J)w=s(u)if w<2000 then
r=T(u,P,Q,X)if r.c>0 then
ax,ao=U(r,V,ab,m,A)o(5-w,w-5,0)if(x.b<.5)then
o(O(t-w/10,0,t),0,O(w/10,0,t),O(t-w/20,0,t))else
o(O(t-w/10,0,t),O(w/10,0,t),0,O(t-w/20,0,t))end
i(ax-1,ao,1,1)end
end
end
for l,x in ipairs(C)do
Y=x.W
if Y.b<0 then
Y=N(Y,e(0,0,9999))o(240,0,0)b_=aY
else
b_=ah
o(80,13,1,230)end
u=B(Y,J)r=T(u,P,Q,X)E,G=U(r,V,ab,m,A)z=Y.b
if b_ then
z=h.max(h.min(z/500,5),0)aj(E-z,G-2,E+z+1,G-2)end
bx(E-1,G-1,2,2)end
o(55,20,40,180)if s(bb)>0 then
u=B(bb,J)r=T(u,P,Q,X)E,G=U(r,V,ab,m,A)aZ(m/2,A,E,G)o(46,0,25,240)i(E-2,G-2,1,5)i(E+2,G-2,1,5)i(E,G,1,1)end
o(0,40,255,230)for l,x in ac(M)do
u=B(x.W,J)r=T(u,P,Q,X)I,L=U(r,V,ab,m,A)z=x.W.b
z=h.max(h.min(z/500,5),0)aj(I-z,L-2,I+z+1,L-2)i(I,L-1,1,1)i(I+1,L,1,1)i(I,L+1,1,1)i(I-1,L,1,1)if s(x.ba)>0 then
u=B(x.ba,J)r=T(u,P,Q,X)ai,af=U(r,V,ab,m,A)o(30,90,255,155)aZ(I,L,ai,af)o(40,40,110,165)i(ai-2,af-2,1,5)i(ai+2,af-2,1,5)i(ai,af,1,1)end
end
if by then
o(255,0,0)i(7,4,1,88)i(88,4,1,88)end
end
