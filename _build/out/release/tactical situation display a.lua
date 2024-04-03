
J=230
l=255
aN=nil
am=pairs
aD=table
Q=false
K=true
aJ=screen
O=map.mapToScreen
m,e,aF,aH,f,bk,bf=math,input,output,property,aJ,K,Q
_,bh,bl,bb=e.getNumber,aF.setNumber,e.getBool,aF.setBool
bj,bc=aH.getNumber,aH.getBool
abs,cos,sin,floor,atan=m.abs,m.cos,m.sin,m.floor,m.atan
pi=m.pi
I=pi*2
f=aJ
Z,ba,k,aW,q,az,bn,d=f.drawText,f.drawTextBox,f.drawLine,f.drawRect,f.drawRectF,f.drawCircle,f.drawClear,f.setColor
function w(h,i,p)return{h=h or 0,i=i or 0,p=p or 0}end
function aT(g,t)return w(g.i*t.p-g.p*t.i,g.p*t.h-g.h*t.p,g.h*t.i-g.i*t.h)end
function T(g)return m.sqrt(g.h*g.h+g.i*g.i+g.p*g.p)end
function be(g,t)return m.sqrt((g.h-t.h)^2+(g.i-t.i)^2+(g.p-t.p)^2)end
function aC(g,min,max)return m.max(min,m.min(g,max))end
function bd(h)return floor(h+.5)end
function aM(at,ar,aP,aQ)aw=-.9*n+50.09
ai=K
b_=aP-at
aU=aQ-ar
aA=b_/aw
aK=aU/aw
for e=1,aw do
if ai then
k(at+aA*(e-1),ar+aK*(e-1),at+aA*e,ar+aK*e)end
ai=not ai
end
end
aV=13333
o=.03*pi
aa=.09*I+o
ay=40
F={}B={}au=K
n,D=7,0
L={}for e=1,100 do
L[e]=Q
end
function onTick()ae=w(_(1),_(3),_(2))W=-_(27)*I
ad=-_(20)*I
X=-_(32)*I+pi
ak=_(30)>0
aR=ak~=aZ and ak
aZ=ak
if aR then
au=not au
end
aG=_(31)==1
aD.remove(L,1)aD.insert(L,aG)r=0
for e=1,6 do
if L[e]then
r=r+1
end
end
if r>=2 then
as=K
else
as=Q
end
r=0
for e=1,26 do
if L[e]then
r=r+1
end
end
if r>=2 then
ax=K
else
ax=Q
end
r=0
for e=1,100 do
if L[e]then
r=r+1
end
end
if r>=2 then
af=K
else
af=Q
end
ap=w(_(23),_(24),_(25))aI,aB,aE=_(4),_(5),_(6)av,ah,aq=cos(aI),cos(aB),cos(aE)aO,ao,an=sin(aI),sin(aB),sin(aE)aY=w(ah*aq,-ao,ah*an)aj=w(aO*an+av*ao*aq,av*ah,-aO*aq+av*ao*an)bg=aT(aY,aj)Y=_(19)y=w(_(7),_(8),_(9))if T(y)>0 then
B[Y]={C=y,x=0}end
y=w(_(10),_(11),_(12))if T(y)>0 then
B[Y+1]={C=y,x=0}end
Y=_(21)y=w(_(13),_(14),_(15))aS=w(_(16),_(17),_(18))if T(y)>0 then
F[Y]={C=y,al=aS,x=0}end
for s,aX in am(B)do
B[s].x=B[s].x+1
if B[s].x>=ay then
B[s]=aN
end
end
for s,aX in am(F)do
F[s].x=F[s].x+1
if F[s].x>=ay then
F[s]=aN
end
end
aL=_(29)==1
if aL then
R=_(26)else
R=0
end
if R<.01 and R>-.01 then
D=D-D/5
else
D=aC((D+R/160),-.1,.1)end
if n>=50 then D=0 end
n=aC(n+(R/55*n/2.4)+D*n/2.4,.1,50)c=-atan(aj.h,aj.i)+pi
M,N=ae.h,ae.i
end
function onDraw()G,P=f.getWidth(),f.getHeight()if G>32 then
if au then
f.setMapColorOcean(0,0,0)f.setMapColorShallows(2,2,2)f.setMapColorLand(7,7,7)f.setMapColorGrass(8,10,8)f.setMapColorSand(6,6,4)f.setMapColorSnow(25,25,26)f.bi(3,3,3)f.bm(4,4,4)f.drawMap(M,N,n)end
a,b=O(M,N,n,G,P,ae.h,ae.i)S=n/G
ag=n/50
j=(aV/1000)/S
for e=0,2 do
V=5+10*e
d(l,l,l,7-ag*3)az(a,b,V/S)d(l,l,l,11-ag*2)Z(a+V/S-(5*(#tostring(V))),b,V)end
d(l,l,l,4-ag*2)for e=1,8 do
k(a,b,a+sin(e*I/8)*120/S,b+cos(e*I/8)*120/S)end
d(80,l,0,38)k(a,b,a+sin(W+c-o)*j,b+cos(W+c-o)*j)k(a,b,a+sin(W+c+o)*j,b+cos(W+c+o)*j)k(a,b,a+sin(ad+c-o)*j,b+cos(ad+c-o)*j)k(a,b,a+sin(ad+c+o)*j,b+cos(ad+c+o)*j)k(a,b,a+sin(X+c-o)*j,b+cos(X+c-o)*j)k(a,b,a+sin(X+c+o)*j,b+cos(X+c+o)*j)d(0,l,0,8)az(a,b,j)k(a,b,a+sin(-aa+c)*j,b+cos(-aa+c)*j)k(a,b,a+sin(aa+c)*j,b+cos(aa+c)*j)d(22,22,22)k(a,b,a+sin(-.97+c)*22,b+cos(-.97+c)*22)k(a,b,a+sin(.97+c)*22,b+cos(.97+c)*22)k(a,b,a+sin(c)*9,b+cos(c)*9)for s,u in ipairs(B)do
z,A=O(M,N,n,G,P,u.C.h,u.C.i)v=u.C.p
if v<0 then
d(240,0,0)else
d(80,13,1)v=m.max(m.min(v/500,5),0)k(z-v,A-2,z+v+1,A-2)end
aW(z-1,A-1,2,2)end
if T(ap)>0 then
z,A=O(M,N,n,G,P,ap.h,ap.i)d(55,20,40,70)aM(a,b,z,A)d(46,0,25)q(z-2,A-2,1,5)q(z+2,A-2,1,5)q(z,A,1,1)end
d(0,40,l)for s,u in am(F)do
H,E=O(M,N,n,G,P,u.C.h,u.C.i)v=u.C.p
v=m.max(m.min(v/500,5),0)k(H-v,E-2,H+v+1,E-2)q(H,E-1,1,1)q(H+1,E,1,1)q(H,E+1,1,1)q(H-1,E,1,1)if T(u.al)>0 then
U,ac=O(M,N,n,G,P,u.al.h,u.al.i)d(30,90,l,30)aM(H,E,U,ac)d(40,40,110,30)q(U-2,ac-2,1,5)q(U+2,ac-2,1,5)q(U,ac,1,1)end
end
if aL then
d(1,1,1,200)q(13,2,12,5)d(85,160,35)Z(13,2,"SOI")end
else
ab=""
if as then
d(l,0,0)ab="MSSLE"
elseif ax then
d(239,38,0)ab="TRACK"
elseif af then
d(l,135,0)ab="WARN"
end
if as or ax or af then
q(0,0,32,32)d(J,J,J)Z(4,12,ab)end
if aG then
d(J,J,J)Z(6,2,"PING")end
end
end
