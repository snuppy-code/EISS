
J=230
l=255
aD=nil
ag=pairs
az=table
R=false
I=true
aJ=screen
P=map.mapToScreen
m,f,aL,aF,d,bf,bn=math,input,output,property,aJ,I,R
_,bh,bk,bm=f.getNumber,aL.setNumber,f.getBool,aL.setBool
bj,bb=aF.getNumber,aF.getBool
abs,cos,sin,floor,atan=m.abs,m.cos,m.sin,m.floor,m.atan
pi=m.pi
L=pi*2
d=aJ
W,bg,k,aV,q,aA,ba,e=d.drawText,d.drawTextBox,d.drawLine,d.drawRect,d.drawRectF,d.drawCircle,d.drawClear,d.setColor
function w(g,j,p)return{g=g or 0,j=j or 0,p=p or 0}end
function aS(h,u)return w(h.j*u.p-h.p*u.j,h.p*u.g-h.g*u.p,h.g*u.j-h.j*u.g)end
function T(h)return m.sqrt(h.g*h.g+h.j*h.j+h.p*h.p)end
function bi(h,u)return m.sqrt((h.g-u.g)^2+(h.j-u.j)^2+(h.p-u.p)^2)end
function aN(h,min,max)return m.max(min,m.min(h,max))end
function bc(g)return floor(g+.5)end
function aM(au,aq,aU,aX)ar=-.9*n+50.09
at=I
aP=aU-au
b_=aX-aq
aO=aP/ar
ay=b_/ar
for f=1,ar do
if at then
k(au+aO*(f-1),aq+ay*(f-1),au+aO*f,aq+ay*f)end
at=not at
end
end
aR=13333
o=.03*pi
X=.09*L+o
aK=40
E={}y={}aj=I
n,F=7,0
K={}for f=1,100 do
K[f]=R
end
function onTick()aa=w(_(1),_(3),_(2))ac=-_(27)*L
ab=-_(20)*L
Y=-_(32)*L+pi
av=_(30)>0
aQ=av~=aZ and av
aZ=av
if aQ then
aj=not aj
end
aG=_(31)==1
az.remove(K,1)az.insert(K,aG)r=0
for f=1,6 do
if K[f]then
r=r+1
end
end
if r>=2 then
an=I
else
an=R
end
r=0
for f=1,26 do
if K[f]then
r=r+1
end
end
if r>=2 then
aw=I
else
aw=R
end
r=0
for f=1,100 do
if K[f]then
r=r+1
end
end
if r>=2 then
am=I
else
am=R
end
ah=w(_(23),_(24),_(25))aE,aH,aC=_(4),_(5),_(6)ap,af,al=cos(aE),cos(aH),cos(aC)aI,ax,ai=sin(aE),sin(aH),sin(aC)aT=w(af*al,-ax,af*ai)ao=w(aI*ai+ap*ax*al,ap*af,-aI*al+ap*ax*ai)bd=aS(aT,ao)ae=_(19)A=w(_(7),_(8),_(9))if T(A)>0 then
y[ae]={B=A,C=0}end
A=w(_(10),_(11),_(12))if T(A)>0 then
y[ae+1]={B=A,C=0}end
ae=_(21)A=w(_(13),_(14),_(15))aW=w(_(16),_(17),_(18))if T(A)>0 then
E[ae]={B=A,ak=aW,C=0}end
for s,aY in ag(y)do
y[s].C=y[s].C+1
if y[s].C>=aK then
y[s]=aD
end
end
for s,aY in ag(E)do
E[s].C=E[s].C+1
if E[s].C>=aK then
E[s]=aD
end
end
aB=_(29)==1
if aB then
O=_(26)else
O=0
end
if O<.01 and O>-.01 then
F=F-F/5
else
F=aN((F+O/160),-.1,.1)end
if n>=50 then F=0 end
n=aN(n+(O/55*n/2.4)+F*n/2.4,.1,50)c=-atan(ao.g,ao.j)+pi
N,M=aa.g,aa.j
end
function onDraw()H,S=d.getWidth(),d.getHeight()if H>32 then
if aj then
d.setMapColorOcean(0,0,0)d.setMapColorShallows(2,2,2)d.setMapColorLand(7,7,7)d.setMapColorGrass(8,10,8)d.setMapColorSand(6,6,4)d.setMapColorSnow(25,25,26)d.bl(3,3,3)d.be(4,4,4)d.drawMap(N,M,n)end
b,a=P(N,M,n,H,S,aa.g,aa.j)Q=n/H
as=n/50
i=(aR/1000)/Q
for f=0,2 do
ad=5+10*f
e(l,l,l,7-as*3)aA(b,a,ad/Q)e(l,l,l,11-as*2)W(b+ad/Q-(5*(#tostring(ad))),a,ad)end
e(l,l,l,4-as*2)for f=1,8 do
k(b,a,b+sin(f*L/8)*120/Q,a+cos(f*L/8)*120/Q)end
e(80,l,0,38)k(b,a,b+sin(ac+c-o)*i,a+cos(ac+c-o)*i)k(b,a,b+sin(ac+c+o)*i,a+cos(ac+c+o)*i)k(b,a,b+sin(ab+c-o)*i,a+cos(ab+c-o)*i)k(b,a,b+sin(ab+c+o)*i,a+cos(ab+c+o)*i)k(b,a,b+sin(Y+c-o)*i,a+cos(Y+c-o)*i)k(b,a,b+sin(Y+c+o)*i,a+cos(Y+c+o)*i)e(0,l,0,8)aA(b,a,i)k(b,a,b+sin(-X+c)*i,a+cos(-X+c)*i)k(b,a,b+sin(X+c)*i,a+cos(X+c)*i)e(22,22,22)k(b,a,b+sin(-.97+c)*22,a+cos(-.97+c)*22)k(b,a,b+sin(.97+c)*22,a+cos(.97+c)*22)k(b,a,b+sin(c)*9,a+cos(c)*9)for s,v in ipairs(y)do
z,x=P(N,M,n,H,S,v.B.g,v.B.j)t=v.B.p
if t<0 then
e(240,0,0)else
e(80,13,1)t=m.max(m.min(t/500,5),0)k(z-t,x-2,z+t+1,x-2)end
aV(z-1,x-1,2,2)end
if T(ah)>0 then
z,x=P(N,M,n,H,S,ah.g,ah.j)e(55,20,40,70)aM(b,a,z,x)e(46,0,25)q(z-2,x-2,1,5)q(z+2,x-2,1,5)q(z,x,1,1)end
e(0,40,l)for s,v in ag(E)do
D,G=P(N,M,n,H,S,v.B.g,v.B.j)t=v.B.p
t=m.max(m.min(t/500,5),0)k(D-t,G-2,D+t+1,G-2)q(D,G-1,1,1)q(D+1,G,1,1)q(D,G+1,1,1)q(D-1,G,1,1)if T(v.ak)>0 then
Z,V=P(N,M,n,H,S,v.ak.g,v.ak.j)e(30,90,l,30)aM(D,G,Z,V)e(40,40,110,30)q(Z-2,V-2,1,5)q(Z+2,V-2,1,5)q(Z,V,1,1)end
end
if aB then
e(1,1,1,200)q(13,2,12,5)e(85,160,35)W(13,2,"SOI")end
else
U=""
if an then
e(l,0,0)U="MSSLE"
elseif aw then
e(239,38,0)U="TRACK"
elseif am then
e(l,135,0)U="WARN"
end
if an or aw or am then
q(0,0,32,32)e(J,J,J)W(4,12,U)end
if aG then
e(J,J,J)W(6,2,"PING")end
end
end
