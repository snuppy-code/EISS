
M=230
l=255
aK=nil
af=pairs
ay=table
S=false
I=true
aA=screen
O=map.mapToScreen
n,d,aN,aO,e,bg,bb=math,input,output,property,aA,I,S
_,bn,be,bh=d.getNumber,aN.setNumber,d.getBool,aN.setBool
bj,bd=aO.getNumber,aO.getBool
abs,cos,sin,floor,atan=n.abs,n.cos,n.sin,n.floor,n.atan
pi=n.pi
K=pi*2
e=aA
W,bf,k,aS,p,aD,bm,f=e.drawText,e.drawTextBox,e.drawLine,e.drawRect,e.drawRectF,e.drawCircle,e.drawClear,e.setColor
function w(h,j,q)return{h=h or 0,j=j or 0,q=q or 0}end
function aR(g,v)return w(g.j*v.q-g.q*v.j,g.q*v.h-g.h*v.q,g.h*v.j-g.j*v.h)end
function Q(g)return n.sqrt(g.h*g.h+g.j*g.j+g.q*g.q)end
function ba(g,v)return n.sqrt((g.h-v.h)^2+(g.j-v.j)^2+(g.q-v.q)^2)end
function aJ(g,min,max)return n.max(min,n.min(g,max))end
function bk(h)return floor(h+.5)end
function aL(ar,ak,b_,aV)ai=-.9*m+50.09
ag=I
aX=b_-ar
aP=aV-ak
aI=aX/ai
aM=aP/ai
for d=1,ai do
if ag then
k(ar+aI*(d-1),ak+aM*(d-1),ar+aI*d,ak+aM*d)end
ag=not ag
end
end
aW=13333
o=.03*pi
ac=.09*K+o
aF=40
E={}x={}ax=I
m,F=7,0
N={}for d=1,100 do
N[d]=S
end
function onTick()Z=w(_(1),_(3),_(2))X=-_(27)*K
U=-_(20)*K
ad=-_(32)*K+pi
am=_(30)>0
aQ=am~=aZ and am
aZ=am
if aQ then
ax=not ax
end
aH=_(31)==1
ay.remove(N,1)ay.insert(N,aH)s=0
for d=1,6 do
if N[d]then
s=s+1
end
end
if s>=2 then
at=I
else
at=S
end
s=0
for d=1,26 do
if N[d]then
s=s+1
end
end
if s>=2 then
as=I
else
as=S
end
s=0
for d=1,100 do
if N[d]then
s=s+1
end
end
if s>=2 then
al=I
else
al=S
end
ah=w(_(23),_(24),_(25))az,aC,aE=_(4),_(5),_(6)an,aw,ap=cos(az),cos(aC),cos(aE)aB,av,au=sin(az),sin(aC),sin(aE)aY=w(aw*ap,-av,aw*au)aj=w(aB*au+an*av*ap,an*aw,-aB*ap+an*av*au)bi=aR(aY,aj)V=_(19)A=w(_(7),_(8),_(9))if Q(A)>0 then
x[V]={B=A,y=0}end
A=w(_(10),_(11),_(12))if Q(A)>0 then
x[V+1]={B=A,y=0}end
V=_(21)A=w(_(13),_(14),_(15))aU=w(_(16),_(17),_(18))if Q(A)>0 then
E[V]={B=A,ao=aU,y=0}end
for r,aT in af(x)do
x[r].y=x[r].y+1
if x[r].y>=aF then
x[r]=aK
end
end
for r,aT in af(E)do
E[r].y=E[r].y+1
if E[r].y>=aF then
E[r]=aK
end
end
aG=_(29)==1
if aG then
T=_(26)else
T=0
end
if T<.01 and T>-.01 then
F=F-F/5
else
F=aJ((F+T/160),-.1,.1)end
if m>=50 then F=0 end
m=aJ(m+(T/55*m/2.4)+F*m/2.4,.1,50)c=-atan(aj.h,aj.j)+pi
J,L=Z.h,Z.j
end
function onDraw()G,R=e.getWidth(),e.getHeight()if G>32 then
if ax then
e.setMapColorOcean(0,0,0)e.setMapColorShallows(2,2,2)e.setMapColorLand(7,7,7)e.setMapColorGrass(8,10,8)e.setMapColorSand(6,6,4)e.setMapColorSnow(25,25,26)e.bl(3,3,3)e.bc(4,4,4)e.drawMap(J,L,m)end
a,b=O(J,L,m,G,R,Z.h,Z.j)P=m/G
aq=m/50
i=(aW/1000)/P
for d=0,2 do
Y=5+10*d
f(l,l,l,7-aq*3)aD(a,b,Y/P)f(l,l,l,11-aq*2)W(a+Y/P-(5*(#tostring(Y))),b,Y)end
f(l,l,l,4-aq*2)for d=1,8 do
k(a,b,a+sin(d*K/8)*120/P,b+cos(d*K/8)*120/P)end
f(80,l,0,38)k(a,b,a+sin(X+c-o)*i,b+cos(X+c-o)*i)k(a,b,a+sin(X+c+o)*i,b+cos(X+c+o)*i)k(a,b,a+sin(U+c-o)*i,b+cos(U+c-o)*i)k(a,b,a+sin(U+c+o)*i,b+cos(U+c+o)*i)k(a,b,a+sin(ad+c-o)*i,b+cos(ad+c-o)*i)k(a,b,a+sin(ad+c+o)*i,b+cos(ad+c+o)*i)f(0,l,0,8)aD(a,b,i)k(a,b,a+sin(-ac+c)*i,b+cos(-ac+c)*i)k(a,b,a+sin(ac+c)*i,b+cos(ac+c)*i)f(22,22,22)k(a,b,a+sin(-.97+c)*22,b+cos(-.97+c)*22)k(a,b,a+sin(.97+c)*22,b+cos(.97+c)*22)k(a,b,a+sin(c)*9,b+cos(c)*9)for r,u in ipairs(x)do
C,z=O(J,L,m,G,R,u.B.h,u.B.j)t=u.B.q
if t<0 then
f(240,0,0)else
f(80,13,1)t=n.max(n.min(t/500,5),0)k(C-t,z-2,C+t+1,z-2)end
aS(C-1,z-1,2,2)end
if Q(ah)>0 then
C,z=O(J,L,m,G,R,ah.h,ah.j)f(55,20,40,70)aL(a,b,C,z)f(46,0,25)p(C-2,z-2,1,5)p(C+2,z-2,1,5)p(C,z,1,1)end
f(0,40,l)for r,u in af(E)do
H,D=O(J,L,m,G,R,u.B.h,u.B.j)t=u.B.q
t=n.max(n.min(t/500,5),0)k(H-t,D-2,H+t+1,D-2)p(H,D-1,1,1)p(H+1,D,1,1)p(H,D+1,1,1)p(H-1,D,1,1)if Q(u.ao)>0 then
ab,aa=O(J,L,m,G,R,u.ao.h,u.ao.j)f(30,90,l,30)aL(H,D,ab,aa)f(40,40,110,30)p(ab-2,aa-2,1,5)p(ab+2,aa-2,1,5)p(ab,aa,1,1)end
end
if aG then
f(1,1,1,200)p(13,2,12,5)f(85,160,35)W(13,2,"SOI")end
else
ae=""
if at then
f(l,0,0)ae="MSSLE"
elseif as then
f(239,38,0)ae="TRACK"
elseif al then
f(l,135,0)ae="WARN"
end
if at or as or al then
p(0,0,32,32)f(M,M,M)W(4,12,ae)end
if aH then
f(M,M,M)W(6,2,"PING")end
end
end
