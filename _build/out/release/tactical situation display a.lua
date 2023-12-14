
N=230
k=255
aG=nil
ah=pairs
aC=table
P=false
J=true
aN=screen
S=map.mapToScreen
m,f,aD,aK,d,ba,bh=math,input,output,property,aN,J,P
_,bd,bg,bl=f.getNumber,aD.setNumber,f.getBool,aD.setBool
be,bf=aK.getNumber,aK.getBool
abs,cos,sin,floor,atan=m.abs,m.cos,m.sin,m.floor,m.atan
pi=m.pi
L=pi*2
d=aN
ac,bk,l,aT,p,aH,bi,e=d.drawText,d.drawTextBox,d.drawLine,d.drawRect,d.drawRectF,d.drawCircle,d.drawClear,d.setColor
function w(h,j,q)return{h=h or 0,j=j or 0,q=q or 0}end
function aQ(g,u)return w(g.j*u.q-g.q*u.j,g.q*u.h-g.h*u.q,g.h*u.j-g.j*u.h)end
function Q(g)return m.sqrt(g.h*g.h+g.j*g.j+g.q*g.q)end
function bc(g,u)return m.sqrt((g.h-u.h)^2+(g.j-u.j)^2+(g.q-u.q)^2)end
function ay(g,min,max)return m.max(min,m.min(g,max))end
function bj(h)return floor(h+.5)end
function aA(ak,ao,b_,aR)aq=-.9*n+50.09
aw=J
aS=b_-ak
aY=aR-ao
aO=aS/aq
aM=aY/aq
for f=1,aq do
if aw then
l(ak+aO*(f-1),ao+aM*(f-1),ak+aO*f,ao+aM*f)end
aw=not aw
end
end
aW=13333
o=.03*pi
Y=.09*L+o
aL=40
G={}B={}af=J
n,F=7,0
K={}for f=1,100 do
K[f]=P
end
function onTick()ad=w(_(1),_(3),_(2))V=-_(27)*L
aa=-_(20)*L
U=-_(32)*L+pi
ai=_(30)>0
aX=ai~=aV and ai
aV=ai
if aX then
af=not af
end
aF=_(31)==1
aC.remove(K,1)aC.insert(K,aF)r=0
for f=1,6 do
if K[f]then
r=r+1
end
end
if r>=2 then
at=J
else
at=P
end
r=0
for f=1,26 do
if K[f]then
r=r+1
end
end
if r>=2 then
aj=J
else
aj=P
end
r=0
for f=1,100 do
if K[f]then
r=r+1
end
end
if r>=2 then
ax=J
else
ax=P
end
am=w(_(23),_(24),_(25))aI,az,aE=_(4),_(5),_(6)av,ar,au=cos(aI),cos(az),cos(aE)aJ,an,ap=sin(aI),sin(az),sin(aE)aZ=w(ar*au,-an,ar*ap)al=w(aJ*ap+av*an*au,av*ar,-aJ*au+av*an*ap)bm=aQ(aZ,al)W=_(19)z=w(_(7),_(8),_(9))if Q(z)>0 then
B[W]={y=z,C=0}end
z=w(_(10),_(11),_(12))if Q(z)>0 then
B[W+1]={y=z,C=0}end
W=_(21)z=w(_(13),_(14),_(15))aU=w(_(16),_(17),_(18))if Q(z)>0 then
G[W]={y=z,ag=aU,C=0}end
for s,aP in ah(B)do
B[s].C=B[s].C+1
if B[s].C>=aL then
B[s]=aG
end
end
for s,aP in ah(G)do
G[s].C=G[s].C+1
if G[s].C>=aL then
G[s]=aG
end
end
aB=_(29)==1
if aB then
T=_(26)else
T=0
end
if T<.01 and T>-.01 then
F=F-F/5
else
F=ay((F+T/160),-.1,.1)end
if n>=50 then F=0 end
n=ay(n+(T/55*n/2.4)+F*n/2.4,.1,50)c=-atan(al.h,al.j)+pi
I,M=ad.h,ad.j
end
function onDraw()E,R=d.getWidth(),d.getHeight()if E>32 then
if af then
d.setMapColorOcean(0,0,0)d.setMapColorShallows(2,2,2)d.setMapColorLand(7,7,7)d.setMapColorGrass(8,10,8)d.setMapColorSand(6,6,4)d.setMapColorSnow(25,25,26)d.bb(3,3,3)d.bn(4,4,4)d.drawMap(I,M,n)end
a,b=S(I,M,n,E,R,ad.h,ad.j)O=n/E
as=n/50
i=(aW/1000)/O
for f=0,2 do
Z=5+10*f
e(k,k,k,7-as*3)aH(a,b,Z/O)e(k,k,k,11-as*2)ac(a+Z/O-(5*(#tostring(Z))),b,Z)end
e(k,k,k,4-as*2)for f=1,8 do
l(a,b,a+sin(f*L/8)*120/O,b+cos(f*L/8)*120/O)end
e(80,k,0,38)l(a,b,a+sin(V+c-o)*i,b+cos(V+c-o)*i)l(a,b,a+sin(V+c+o)*i,b+cos(V+c+o)*i)l(a,b,a+sin(aa+c-o)*i,b+cos(aa+c-o)*i)l(a,b,a+sin(aa+c+o)*i,b+cos(aa+c+o)*i)l(a,b,a+sin(U+c-o)*i,b+cos(U+c-o)*i)l(a,b,a+sin(U+c+o)*i,b+cos(U+c+o)*i)e(0,k,0,8)aH(a,b,i)l(a,b,a+sin(-Y+c)*i,b+cos(-Y+c)*i)l(a,b,a+sin(Y+c)*i,b+cos(Y+c)*i)e(22,22,22)l(a,b,a+sin(-.97+c)*22,b+cos(-.97+c)*22)l(a,b,a+sin(.97+c)*22,b+cos(.97+c)*22)l(a,b,a+sin(c)*9,b+cos(c)*9)for s,t in ipairs(B)do
x,A=S(I,M,n,E,R,t.y.h,t.y.j)v=t.y.q
if v<0 then
e(240,0,0)else
e(80,13,1)v=m.max(m.min(v/500,5),0)l(x-v,A-2,x+v+1,A-2)end
aT(x-1,A-1,2,2)end
if Q(am)>0 then
x,A=S(I,M,n,E,R,am.h,am.j)e(55,20,40,70)aA(a,b,x,A)e(46,0,25)p(x-2,A-2,1,5)p(x+2,A-2,1,5)p(x,A,1,1)end
e(0,40,k)for s,t in ah(G)do
H,D=S(I,M,n,E,R,t.y.h,t.y.j)v=t.y.q
v=m.max(m.min(v/500,5),0)l(H-v,D-2,H+v+1,D-2)p(H,D-1,1,1)p(H+1,D,1,1)p(H,D+1,1,1)p(H-1,D,1,1)if Q(t.ag)>0 then
X,ae=S(I,M,n,E,R,t.ag.h,t.ag.j)e(30,90,k,30)aA(H,D,X,ae)e(40,40,110,30)p(X-2,ae-2,1,5)p(X+2,ae-2,1,5)p(X,ae,1,1)end
end
if aB then
e(1,1,1,200)p(13,2,12,5)e(85,160,35)ac(13,2,"SOI")end
else
ab=""
if at then
e(k,0,0)ab="MSSLE"
elseif aj then
e(239,38,0)ab="TRACK"
elseif ax then
e(k,135,0)ab="WARN"
end
if at or aj or ax then
p(0,0,32,32)e(N,N,N)ac(4,12,ab)end
if aF then
e(N,N,N)ac(6,2,"PING")end
end
end
