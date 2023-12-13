
I=230
l=255
aN=nil
as=pairs
ay=table
R=false
K=true
aF=screen
Q=map.mapToScreen
m,f,aG,aH,e,bb,bg=math,input,output,property,aF,K,R
_,bd,bj,bc=f.getNumber,aG.setNumber,f.getBool,aG.setBool
bi,bh=aH.getNumber,aH.getBool
abs,cos,sin,floor,atan=m.abs,m.cos,m.sin,m.floor,m.atan
pi=m.pi
M=pi*2
e=aF
Y,bn,k,aT,p,aC,bk,d=e.drawText,e.drawTextBox,e.drawLine,e.drawRect,e.drawRectF,e.drawCircle,e.drawClear,e.setColor
function w(h,j,q)return{h=h or 0,j=j or 0,q=q or 0}end
function aV(g,u)return w(g.j*u.q-g.q*u.j,g.q*u.h-g.h*u.q,g.h*u.j-g.j*u.h)end
function T(g)return m.sqrt(g.h*g.h+g.j*g.j+g.q*g.q)end
function bm(g,u)return m.sqrt((g.h-u.h)^2+(g.j-u.j)^2+(g.q-u.q)^2)end
function aJ(g,min,max)return m.max(min,m.min(g,max))end
function ba(h)return floor(h+.5)end
function aB(ax,ak,aR,aX)ag=-.9*n+50.09
am=K
b_=aR-ax
aQ=aX-ak
aK=b_/ag
aM=aQ/ag
for f=1,ag do
if am then
k(ax+aK*(f-1),ak+aM*(f-1),ax+aK*f,ak+aM*f)end
am=not am
end
end
aY=13333
o=.03*pi
Z=.09*M+o
aL=40
D={}A={}ap=K
n,E=7,0
J={}for f=1,100 do
J[f]=R
end
function onTick()ac=w(_(1),_(3),_(2))V=-_(27)*M
ad=-_(20)*M
W=-_(32)*M+pi
an=_(30)>0
aU=an~=aP and an
aP=an
if aU then
ap=not ap
end
aA=_(31)==1
ay.remove(J,1)ay.insert(J,aA)r=0
for f=1,6 do
if J[f]then
r=r+1
end
end
if r>=2 then
al=K
else
al=R
end
r=0
for f=1,26 do
if J[f]then
r=r+1
end
end
if r>=2 then
at=K
else
at=R
end
r=0
for f=1,100 do
if J[f]then
r=r+1
end
end
if r>=2 then
au=K
else
au=R
end
aw=w(_(23),_(24),_(25))aO,aE,az=_(4),_(5),_(6)ai,aj,ao=cos(aO),cos(aE),cos(az)aI,af,ah=sin(aO),sin(aE),sin(az)aW=w(aj*ao,-af,aj*ah)aq=w(aI*ah+ai*af*ao,ai*aj,-aI*ao+ai*af*ah)bf=aV(aW,aq)aa=_(19)B=w(_(7),_(8),_(9))if T(B)>0 then
A[aa]={C=B,z=0}end
B=w(_(10),_(11),_(12))if T(B)>0 then
A[aa+1]={C=B,z=0}end
aa=_(21)B=w(_(13),_(14),_(15))aS=w(_(16),_(17),_(18))if T(B)>0 then
D[aa]={C=B,av=aS,z=0}end
for s,aZ in as(A)do
A[s].z=A[s].z+1
if A[s].z>=aL then
A[s]=aN
end
end
for s,aZ in as(D)do
D[s].z=D[s].z+1
if D[s].z>=aL then
D[s]=aN
end
end
aD=_(29)==1
if aD then
O=_(26)else
O=0
end
if O<.01 and O>-.01 then
E=E-E/5
else
E=aJ((E+O/160),-.1,.1)end
if n>=50 then E=0 end
n=aJ(n+(O/55*n/2.4)+E*n/2.4,.1,50)c=-atan(aq.h,aq.j)+pi
L,N=ac.h,ac.j
end
function onDraw()G,P=e.getWidth(),e.getHeight()if G>32 then
if ap then
e.setMapColorOcean(0,0,0)e.setMapColorShallows(2,2,2)e.setMapColorLand(7,7,7)e.setMapColorGrass(8,10,8)e.setMapColorSand(6,6,4)e.setMapColorSnow(25,25,26)e.bl(3,3,3)e.be(4,4,4)e.drawMap(L,N,n)end
b,a=Q(L,N,n,G,P,ac.h,ac.j)S=n/G
ar=n/50
i=(aY/1000)/S
for f=0,2 do
X=5+10*f
d(l,l,l,7-ar*3)aC(b,a,X/S)d(l,l,l,11-ar*2)Y(b+X/S-(5*(#tostring(X))),a,X)end
d(l,l,l,4-ar*2)for f=1,8 do
k(b,a,b+sin(f*M/8)*120/S,a+cos(f*M/8)*120/S)end
d(80,l,0,38)k(b,a,b+sin(V+c-o)*i,a+cos(V+c-o)*i)k(b,a,b+sin(V+c+o)*i,a+cos(V+c+o)*i)k(b,a,b+sin(ad+c-o)*i,a+cos(ad+c-o)*i)k(b,a,b+sin(ad+c+o)*i,a+cos(ad+c+o)*i)k(b,a,b+sin(W+c-o)*i,a+cos(W+c-o)*i)k(b,a,b+sin(W+c+o)*i,a+cos(W+c+o)*i)d(0,l,0,8)aC(b,a,i)k(b,a,b+sin(-Z+c)*i,a+cos(-Z+c)*i)k(b,a,b+sin(Z+c)*i,a+cos(Z+c)*i)d(22,22,22)k(b,a,b+sin(-.97+c)*22,a+cos(-.97+c)*22)k(b,a,b+sin(.97+c)*22,a+cos(.97+c)*22)k(b,a,b+sin(c)*9,a+cos(c)*9)for s,t in ipairs(A)do
x,y=Q(L,N,n,G,P,t.C.h,t.C.j)v=t.C.q
if v<0 then
d(240,0,0)else
d(80,13,1)v=m.max(m.min(v/500,5),0)k(x-v,y-2,x+v+1,y-2)end
aT(x-1,y-1,2,2)end
if T(aw)>0 then
x,y=Q(L,N,n,G,P,aw.h,aw.j)d(55,20,40,70)aB(b,a,x,y)d(46,0,25)p(x-2,y-2,1,5)p(x+2,y-2,1,5)p(x,y,1,1)end
d(0,40,l)for s,t in as(D)do
F,H=Q(L,N,n,G,P,t.C.h,t.C.j)v=t.C.q
v=m.max(m.min(v/500,5),0)k(F-v,H-2,F+v+1,H-2)p(F,H-1,1,1)p(F+1,H,1,1)p(F,H+1,1,1)p(F-1,H,1,1)if T(t.av)>0 then
U,ab=Q(L,N,n,G,P,t.av.h,t.av.j)d(30,90,l,30)aB(F,H,U,ab)d(40,40,110,30)p(U-2,ab-2,1,5)p(U+2,ab-2,1,5)p(U,ab,1,1)end
end
if aD then
d(1,1,1,200)p(13,2,12,5)d(85,160,35)Y(13,2,"SOI")end
else
ae=""
if al then
d(l,0,0)ae="MSSLE"
elseif at then
d(239,38,0)ae="TRACK"
elseif au then
d(l,135,0)ae="WARN"
end
if al or at or au then
p(0,0,32,32)d(I,I,I)Y(4,12,ae)end
if aA then
d(I,I,I)Y(6,2,"PING")end
end
end
