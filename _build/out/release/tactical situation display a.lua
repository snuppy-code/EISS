
N=230
l=255
aO=nil
at=pairs
aJ=table
P=false
L=true
aC=screen
O=map.mapToScreen
m,e,az,aB,d,ba,bj=math,input,output,property,aC,L,P
_,bk,bb,bc=e.getNumber,az.setNumber,e.getBool,az.setBool
bi,bm=aB.getNumber,aB.getBool
abs,cos,sin,floor,atan=m.abs,m.cos,m.sin,m.floor,m.atan
pi=m.pi
I=pi*2
d=aC
Y,bg,k,aT,p,aI,bd,f=d.drawText,d.drawTextBox,d.drawLine,d.drawRect,d.drawRectF,d.drawCircle,d.drawClear,d.setColor
function w(g,j,q)return{g=g or 0,j=j or 0,q=q or 0}end
function aQ(h,u)return w(h.j*u.q-h.q*u.j,h.q*u.g-h.g*u.q,h.g*u.j-h.j*u.g)end
function R(h)return m.sqrt(h.g*h.g+h.j*h.j+h.q*h.q)end
function bf(h,u)return m.sqrt((h.g-u.g)^2+(h.j-u.j)^2+(h.q-u.q)^2)end
function ay(h,min,max)return m.max(min,m.min(h,max))end
function bn(g)return floor(g+.5)end
function aD(as,ah,aP,aS)ax=-.9*n+50.09
aq=L
aZ=aP-as
aX=aS-ah
aN=aZ/ax
aE=aX/ax
for e=1,ax do
if aq then
k(as+aN*(e-1),ah+aE*(e-1),as+aN*e,ah+aE*e)end
aq=not aq
end
end
aU=13333
o=.03*pi
ac=.09*I+o
aK=40
G={}y={}am=L
n,D=7,0
J={}for e=1,100 do
J[e]=P
end
function onTick()U=w(_(1),_(3),_(2))ad=-_(27)*I
V=-_(20)*I
aa=-_(32)*I+pi
ak=_(30)>0
aR=ak~=aW and ak
aW=ak
if aR then
am=not am
end
aM=_(31)==1
aJ.remove(J,1)aJ.insert(J,aM)r=0
for e=1,6 do
if J[e]then
r=r+1
end
end
if r>=2 then
ap=L
else
ap=P
end
r=0
for e=1,26 do
if J[e]then
r=r+1
end
end
if r>=2 then
an=L
else
an=P
end
r=0
for e=1,100 do
if J[e]then
r=r+1
end
end
if r>=2 then
aw=L
else
aw=P
end
ai=w(_(23),_(24),_(25))aL,aH,aF=_(4),_(5),_(6)al,aj,ar=cos(aL),cos(aH),cos(aF)aA,ao,ag=sin(aL),sin(aH),sin(aF)aY=w(aj*ar,-ao,aj*ag)af=w(aA*ag+al*ao*ar,al*aj,-aA*ar+al*ao*ag)be=aQ(aY,af)W=_(19)z=w(_(7),_(8),_(9))if R(z)>0 then
y[W]={x=z,A=0}end
z=w(_(10),_(11),_(12))if R(z)>0 then
y[W+1]={x=z,A=0}end
W=_(21)z=w(_(13),_(14),_(15))aV=w(_(16),_(17),_(18))if R(z)>0 then
G[W]={x=z,au=aV,A=0}end
for s,b_ in at(y)do
y[s].A=y[s].A+1
if y[s].A>=aK then
y[s]=aO
end
end
for s,b_ in at(G)do
G[s].A=G[s].A+1
if G[s].A>=aK then
G[s]=aO
end
end
aG=_(29)==1
if aG then
Q=_(26)else
Q=0
end
if Q<.01 and Q>-.01 then
D=D-D/5
else
D=ay((D+Q/160),-.1,.1)end
if n>=50 then D=0 end
n=ay(n+(Q/55*n/2.4)+D*n/2.4,.1,50)c=-atan(af.g,af.j)+pi
K,M=U.g,U.j
end
function onDraw()E,T=d.getWidth(),d.getHeight()if E>32 then
if am then
d.setMapColorOcean(0,0,0)d.setMapColorShallows(2,2,2)d.setMapColorLand(7,7,7)d.setMapColorGrass(8,10,8)d.setMapColorSand(6,6,4)d.setMapColorSnow(25,25,26)d.bl(3,3,3)d.bh(4,4,4)d.drawMap(K,M,n)end
a,b=O(K,M,n,E,T,U.g,U.j)S=n/E
av=n/50
i=(aU/1000)/S
for e=0,2 do
X=5+10*e
f(l,l,l,7-av*3)aI(a,b,X/S)f(l,l,l,11-av*2)Y(a+X/S-(5*(#tostring(X))),b,X)end
f(l,l,l,4-av*2)for e=1,8 do
k(a,b,a+sin(e*I/8)*120/S,b+cos(e*I/8)*120/S)end
f(80,l,0,38)k(a,b,a+sin(ad+c-o)*i,b+cos(ad+c-o)*i)k(a,b,a+sin(ad+c+o)*i,b+cos(ad+c+o)*i)k(a,b,a+sin(V+c-o)*i,b+cos(V+c-o)*i)k(a,b,a+sin(V+c+o)*i,b+cos(V+c+o)*i)k(a,b,a+sin(aa+c-o)*i,b+cos(aa+c-o)*i)k(a,b,a+sin(aa+c+o)*i,b+cos(aa+c+o)*i)f(0,l,0,8)aI(a,b,i)k(a,b,a+sin(-ac+c)*i,b+cos(-ac+c)*i)k(a,b,a+sin(ac+c)*i,b+cos(ac+c)*i)f(22,22,22)k(a,b,a+sin(-.97+c)*22,b+cos(-.97+c)*22)k(a,b,a+sin(.97+c)*22,b+cos(.97+c)*22)k(a,b,a+sin(c)*9,b+cos(c)*9)for s,v in ipairs(y)do
B,C=O(K,M,n,E,T,v.x.g,v.x.j)t=v.x.q
if t<0 then
f(240,0,0)else
f(80,13,1)t=m.max(m.min(t/500,5),0)k(B-t,C-2,B+t+1,C-2)end
aT(B-1,C-1,2,2)end
if R(ai)>0 then
B,C=O(K,M,n,E,T,ai.g,ai.j)f(55,20,40,70)aD(a,b,B,C)f(46,0,25)p(B-2,C-2,1,5)p(B+2,C-2,1,5)p(B,C,1,1)end
f(0,40,l)for s,v in at(G)do
F,H=O(K,M,n,E,T,v.x.g,v.x.j)t=v.x.q
t=m.max(m.min(t/500,5),0)k(F-t,H-2,F+t+1,H-2)p(F,H-1,1,1)p(F+1,H,1,1)p(F,H+1,1,1)p(F-1,H,1,1)if R(v.au)>0 then
ae,Z=O(K,M,n,E,T,v.au.g,v.au.j)f(30,90,l,30)aD(F,H,ae,Z)f(40,40,110,30)p(ae-2,Z-2,1,5)p(ae+2,Z-2,1,5)p(ae,Z,1,1)end
end
if aG then
f(1,1,1,200)p(13,2,12,5)f(85,160,35)Y(13,2,"SOI")end
else
ab=""
if ap then
f(l,0,0)ab="MSSLE"
elseif an then
f(239,38,0)ab="TRACK"
elseif aw then
f(l,135,0)ab="WARN"
end
if ap or an or aw then
p(0,0,32,32)f(N,N,N)Y(4,12,ab)end
if aM then
f(N,N,N)Y(6,2,"PING")end
end
end
