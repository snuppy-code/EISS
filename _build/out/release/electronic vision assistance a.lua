
v=200
aZ=nil
ab=pairs
av=true
az=math
aS=az.random
aV=az.rad
h,g,aO,aR,k,by,bI=az,input,output,property,screen,av,false
a,aY,bJ,bK=g.getNumber,aO.setNumber,g.getBool,aO.setBool
bE,bC=aR.getNumber,aR.getBool
abs,cos,sin,floor,atan=h.abs,h.cos,h.sin,h.floor,h.atan
pi=h.pi
bB=pi*2
bA,bF,ar,bj,j,bH,bx,s=k.drawText,k.drawTextBox,k.drawLine,k.drawRect,k.drawRectF,k.drawCircle,k.drawClear,k.setColor
function e(b,c,d,m)return{b=b or 0,c=c or 0,d=d or 0,m=m or 0}end
function aa(_,f)return e(_.b+f.b,_.c+f.c,_.d+f.d)end
function bz(_,f)return e(_.b*f.b,_.c*f.c,_.d*f.d)end
function J(_,V)return e(_.b*V,_.c*V,_.d*V)end
function br(_)return J(_,-1)end
function E(_,f)return aa(_,br(f))end
function q(_)return h.sqrt(_.b*_.b+_.c*_.c+_.d*_.d)end
function bo(_,V)return J(_,1/V)end
function bw(_)return bo(_,q(_))end
function am(_,f)return _.b*f.b+_.c*f.c+_.d*f.d
end
function aX(_,f)return e(_.c*f.d-_.d*f.c,_.d*f.b-_.b*f.d,_.b*f.c-_.c*f.b)end
function aH(r,n,W)local W=W or 1
return e(h.sin(r)*h.cos(n)*W,h.cos(r)*h.cos(n)*W,h.sin(n)*W)end
function bc(_,K)if not D then
D={}D[K]={an=e(),ao=e()}elseif not D[K]then
D[K]={an=e(),ao=e()}end
D[K].ao=E(_,D[K].an)D[K].an=_
return D[K].ao
end
function S(_,aj,aC,aB)return e(am(aj,_),am(aC,_),am(aB,_))end
function aG(_,aj,aC,aB)return aa(aa(J(aj,_.b),J(aC,_.c)),J(aB,_.d))end
function O(b,k,aE)return b<k and k or b>aE and aE or b
end
function Z(bh,bu,bn,m,o)local bi=bn*(.025-2.2)+2.2
local aK=m/2; local bb=o/2
local bm=(aK-128*.025)/(bb-128*.025)local aI=h.tan(bi/2); local bp=aI*bm
local R=E(bh,bu)local as,at=R.c>0 and aK*(1+R.b/R.c/bp)or 0,R.c>0 and o-bb*(1+R.d/R.c/aI)or 0
return as,at
end
function aW(aw,ay,bt,bv)au=11
ah=av
bg=bt-aw
bl=bv-ay
b_=bg/au
aT=bl/au
for g=1,au do
if ah then
ar(aw+b_*(g-1),ay+aT*(g-1),aw+b_*g,ay+aT*g)end
ah=not ah
end
end
p={}ae=100
i=3
X=e(0,2.625,-.5)bf=e(0,3.125,-.25)A={}for g=1,i do
A[g]={r=0,n=0}end
aQ=10
M={}B={}function onTick()bs=a(28)==1
Y=.12
ax=a(20)I=e(a(1),a(3),a(2))aJ,aM,aU=a(4),a(5),a(6)ap,al,aD=cos(aJ),cos(aM),cos(aU)ba,aq,aA=sin(aJ),sin(aM),sin(aU)af=e(al*aD,-aq,al*aA)ak=e(ba*aA+ap*aq*aD,ap*al,-ba*aD+ap*aq*aA)aF=aX(af,ak)aN=J(bc(I,"myvel"),60)bq=J(bc(aN,"myacc"),60)bG=q(aN)bD=q(bq)/9.81
ad=a(19)G=e(a(7),a(8),a(9))if q(G)>0 then
B[ad]={N=G,i=0}end
G=e(a(10),a(11),a(12))if q(G)>0 then
B[ad+1]={N=G,i=0}end
ad=a(21)G=e(a(13),a(14),a(15))be=e(a(16),a(17),a(18))if q(G)>0 then
M[ad]={N=G,aP=be,i=0}end
for l,bd in ab(B)do
B[l].i=B[l].i+1
if B[l].i>=aQ then
B[l]=aZ
end
end
for l,bd in ab(M)do
M[l].i=M[l].i+1
if M[l].i>=aQ then
M[l]=aZ
end
end
aL=e(a(23),a(24),a(25))P=af
Q=aG(aH(0,-.6*pi/4,1),af,ak,aF)U=aX(P,Q)for g=i,2,-1 do
A[g].r=A[g-1].r
A[g].n=A[g-1].n
end
A[1].r=r or 0
A[1].n=n or 0
if ax>=5 and ax<2000 then
x=aa(aG(aa(aH(A[i].r,A[i].n,ax),bf),af,ak,aF),I)x=e(x.b,x.c,x.d<0 and 0 or x.d)if#p>0 then
ai,T=av,0
while T<#p and ai and T<ae do
T=T+1
ai=q(E(p[T],x))>5
end
bk=#p>=ae
if ai then
if bk then
for g=1,ae-1 do
p[g]=p[g+1]end
p[ae]=x
else
p[#p+1]=x
end
end
else
p[1]=x
end
end
r=aV(aS(-40,40))n=aV(aS(-40,40))aY(1,r*4/pi)aY(2,n*4/pi)end
function onDraw()m,o=k.getWidth(),k.getHeight()for l,u in ab(p)do
t=E(u,I)y=q(t)if y<2000 then
w=S(t,P,Q,U)if w.c>0 then
as,at=Z(w,X,Y,m,o)s(5-y,y-5,0)if(u.d<.5)then
s(O(v-y/10,0,v),0,O(y/10,0,v),O(v-y/20,0,v))else
s(O(v-y/10,0,v),O(y/10,0,v),0,O(v-y/20,0,v))end
j(as-1,at,1,1)end
end
end
s(80,13,1,230)for l,u in ipairs(B)do
t=E(u.N,I)w=S(t,P,Q,U)F,C=Z(w,X,Y,m,o)z=u.N.d
z=h.max(h.min(z/500,5),0)ar(F-z,C-2,F+z+1,C-2)bj(F-1,C-1,2,2)end
s(55,20,40,180)if q(aL)>0 then
t=E(aL,I)w=S(t,P,Q,U)F,C=Z(w,X,Y,m,o)aW(m/2,o,F,C)s(46,0,25,240)j(F-2,C-2,1,5)j(F+2,C-2,1,5)j(F,C,1,1)end
s(0,40,255,230)for l,u in ab(M)do
t=E(u.N,I)w=S(t,P,Q,U)H,L=Z(w,X,Y,m,o)z=u.N.d
z=h.max(h.min(z/500,5),0)ar(H-z,L-2,H+z+1,L-2)j(H,L-1,1,1)j(H+1,L,1,1)j(H,L+1,1,1)j(H-1,L,1,1)if q(u.aP)>0 then
t=E(u.aP,I)w=S(t,P,Q,U)ag,ac=Z(w,X,Y,m,o)s(30,90,255,155)aW(H,L,ag,ac)s(40,40,110,165)j(ag-2,ac-2,1,5)j(ag+2,ac-2,1,5)j(ag,ac,1,1)end
end
if bs then
s(255,0,0)j(0,0,1,o)j(m-1,0,1,o)end
end
