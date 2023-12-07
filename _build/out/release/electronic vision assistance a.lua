
t=200
aO=nil
ab=pairs
az=true
aD=math
b_=aD.random
aZ=aD.rad
h,g,aH,aW,i,bC,bA=aD,input,output,property,screen,az,false
a,aL,bF,bx=g.getNumber,aH.setNumber,g.getBool,aH.setBool
bB,bH=aW.getNumber,aW.getBool
abs,cos,sin,floor,atan=h.abs,h.cos,h.sin,h.floor,h.atan
pi=h.pi
bE=pi*2
bz,bI,at,bq,k,bw,bK,s=i.drawText,i.drawTextBox,i.drawLine,i.drawRect,i.drawRectF,i.drawCircle,i.drawClear,i.setColor
function e(d,c,b,l)return{d=d or 0,c=c or 0,b=b or 0,l=l or 0}end
function U(_,f)return e(_.d+f.d,_.c+f.c,_.b+f.b)end
function bJ(_,f)return e(_.d*f.d,_.c*f.c,_.b*f.b)end
function L(_,T)return e(_.d*T,_.c*T,_.b*T)end
function bv(_)return L(_,-1)end
function F(_,f)return U(_,bv(f))end
function w(_)return h.sqrt(_.d*_.d+_.c*_.c+_.b*_.b)end
function bm(_,T)return L(_,1/T)end
function by(_)return bm(_,w(_))end
function aw(_,f)return _.d*f.d+_.c*f.c+_.b*f.b
end
function aN(_,f)return e(_.c*f.b-_.b*f.c,_.b*f.d-_.d*f.b,_.d*f.c-_.c*f.d)end
function aT(r,p,V)local V=V or 1
return e(h.sin(r)*h.cos(p)*V,h.cos(r)*h.cos(p)*V,h.sin(p)*V)end
function ba(_,K)if not B then
B={}B[K]={as=e(),ak=e()}elseif not B[K]then
B[K]={as=e(),ak=e()}end
B[K].ak=F(_,B[K].as)B[K].as=_
return B[K].ak
end
function X(_,aC,aA,aq)return e(aw(aC,_),aw(aA,_),aw(aq,_))end
function bc(_,aC,aA,aq)return U(U(L(aC,_.d),L(aA,_.c)),L(aq,_.b))end
function R(d,i,aM)return d<i and i or d>aM and aM or d
end
function Y(bi,be,bj,l,o)local bh=bj*(.025-2.2)+2.2
local aG=l/2; local aK=o/2
local bt=(aG-128*.025)/(aK-128*.025)local aV=h.tan(bh/2); local br=aV*bt
local Q=F(bi,be)local ax,aB=Q.c>0 and aG*(1+Q.d/Q.c/br)or 0,Q.c>0 and o-aK*(1+Q.b/Q.c/aV)or 0
return ax,aB
end
function aP(ai,av,bd,bl)an=11
am=az
bf=bd-ai
bo=bl-av
aJ=bf/an
aR=bo/an
for g=1,an do
if am then
at(ai+aJ*(g-1),av+aR*(g-1),ai+aJ*g,av+aR*g)end
am=not am
end
end
n={}ae=100
j=3
aa=e(0,2.625,-.5)bn=e(0,3.125,-.25)x={}for g=1,j do
x[g]={r=0,p=0}end
aU=10
H={}D={}function onTick()bk=a(28)==1
Z=.12
aj=a(20)J=e(a(1),a(3),a(2))aF,aX,aY=a(4),a(5),a(6)ah,al,ay=cos(aF),cos(aX),cos(aY)aE,au,ap=sin(aF),sin(aX),sin(aY)ac=e(al*ay,-au,al*ap)ar=e(aE*ap+ah*au*ay,ah*al,-aE*ay+ah*au*ap)aI=aN(ac,ar)bb=L(ba(J,"myvel"),60)bs=L(ba(bb,"myacc"),60)bD=w(bb)bG=w(bs)/9.81
af=a(19)E=e(a(7),a(8),a(9))if w(E)>0 then
D[af]={N=E,j=0}end
E=e(a(10),a(11),a(12))if w(E)>0 then
D[af+1]={N=E,j=0}end
af=a(21)E=e(a(13),a(14),a(15))bg=e(a(16),a(17),a(18))if w(E)>0 then
H[af]={N=E,aS=bg,j=0}end
for m,bu in ab(D)do
D[m].j=D[m].j+1
if D[m].j>=aU then
D[m]=aO
end
end
for m,bu in ab(H)do
H[m].j=H[m].j+1
if H[m].j>=aU then
H[m]=aO
end
end
aQ=e(a(23),a(24),a(25))P=ac
O=bc(aT(0,-.6*pi/4,1),ac,ar,aI)S=aN(P,O)for g=j,2,-1 do
x[g].r=x[g-1].r
x[g].p=x[g-1].p
end
x[1].r=r or 0
x[1].p=p or 0
if aj>=5 and aj<2000 then
z=U(bc(U(aT(x[j].r,x[j].p,aj),bn),ac,ar,aI),J)z=e(z.d,z.c,z.b<0 and 0 or z.b)if#n>0 then
ao,W=az,0
while W<#n and ao and W<ae do
W=W+1
ao=w(F(n[W],z))>5
end
bp=#n>=ae
if ao then
if bp then
for g=1,ae-1 do
n[g]=n[g+1]end
n[ae]=z
else
n[#n+1]=z
end
end
else
n[1]=z
end
end
r=aZ(b_(-40,40))p=aZ(b_(-40,40))aL(1,r*4/pi)aL(2,p*4/pi)end
function onDraw()l,o=i.getWidth(),i.getHeight()if bk then
s(255,0,0)k(0,0,1,o)k(l-1,0,1,o)end
for m,v in ab(n)do
u=F(v,J)y=w(u)if y<2000 then
q=X(u,P,O,S)if q.c>0 then
ax,aB=Y(q,aa,Z,l,o)s(5-y,y-5,0)if(v.b<.5)then
s(R(t-y/10,0,t),0,R(y/10,0,t),R(t-y/20,0,t))else
s(R(t-y/10,0,t),R(y/10,0,t),0,R(t-y/20,0,t))end
k(ax-1,aB,1,1)end
end
end
s(80,13,1,230)for m,v in ipairs(D)do
u=F(v.N,J)q=X(u,P,O,S)G,C=Y(q,aa,Z,l,o)A=v.N.b
A=h.max(h.min(A/500,5),0)at(G-A,C-2,G+A+1,C-2)bq(G-1,C-1,2,2)end
s(55,20,40,180)if w(aQ)>0 then
u=F(aQ,J)q=X(u,P,O,S)G,C=Y(q,aa,Z,l,o)aP(l/2,o,G,C)s(46,0,25,240)k(G-2,C-2,1,5)k(G+2,C-2,1,5)k(G,C,1,1)end
s(0,40,255,230)for m,v in ab(H)do
u=F(v.N,J)q=X(u,P,O,S)M,I=Y(q,aa,Z,l,o)A=v.N.b
A=h.max(h.min(A/500,5),0)at(M-A,I-2,M+A+1,I-2)k(M,I-1,1,1)k(M+1,I,1,1)k(M,I+1,1,1)k(M-1,I,1,1)if w(v.aS)>0 then
u=F(v.aS,J)q=X(u,P,O,S)ag,ad=Y(q,aa,Z,l,o)s(30,90,255,155)aP(M,I,ag,ad)s(40,40,110,165)k(ag-2,ad-2,1,5)k(ag+2,ad-2,1,5)k(ag,ad,1,1)end
end
end
