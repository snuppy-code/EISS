
J=230
k=255
az=nil
ak=pairs
aF=table
R=false
L=true
aB=screen
T=map.mapToScreen
n,f,aD,aL,d,bm,bk=math,input,output,property,aB,L,R
_,bc,bg,bi=f.getNumber,aD.setNumber,f.getBool,aD.setBool
be,bd=aL.getNumber,aL.getBool
abs,cos,sin,floor,atan=n.abs,n.cos,n.sin,n.floor,n.atan
pi=n.pi
N=pi*2
d=aB
Y,bf,l,aY,p,aC,bn,e=d.drawText,d.drawTextBox,d.drawLine,d.drawRect,d.drawRectF,d.drawCircle,d.drawClear,d.setColor
function w(h,j,q)return{h=h or 0,j=j or 0,q=q or 0}end
function aT(g,t)return w(g.j*t.q-g.q*t.j,g.q*t.h-g.h*t.q,g.h*t.j-g.j*t.h)end
function O(g)return n.sqrt(g.h*g.h+g.j*g.j+g.q*g.q)end
function bj(g,t)return n.sqrt((g.h-t.h)^2+(g.j-t.j)^2+(g.q-t.q)^2)end
function aG(g,min,max)return n.max(min,n.min(g,max))end
function bb(h)return floor(h+.5)end
function aM(af,ar,aP,aX)aq=-.9*m+50.09
ag=L
aW=aP-af
aQ=aX-ar
aH=aW/aq
aO=aQ/aq
for f=1,aq do
if ag then
l(af+aH*(f-1),ar+aO*(f-1),af+aH*f,ar+aO*f)end
ag=not ag
end
end
aU=13333
o=.03*pi
ab=.09*N+o
aI=40
G={}B={}av=L
m,E=7,0
K={}for f=1,100 do
K[f]=R
end
function onTick()ae=w(_(1),_(3),_(2))X=-_(27)*N
ad=-_(20)*N
aa=-_(32)*N+pi
an=_(30)>0
aZ=an~=b_ and an
b_=an
if aZ then
av=not av
end
aE=_(31)==1
aF.remove(K,1)aF.insert(K,aE)s=0
for f=1,6 do
if K[f]then
s=s+1
end
end
if s>=2 then
ao=L
else
ao=R
end
s=0
for f=1,26 do
if K[f]then
s=s+1
end
end
if s>=2 then
ax=L
else
ax=R
end
s=0
for f=1,100 do
if K[f]then
s=s+1
end
end
if s>=2 then
al=L
else
al=R
end
ai=w(_(23),_(24),_(25))aN,aK,ay=_(4),_(5),_(6)ah,at,ap=cos(aN),cos(aK),cos(ay)aA,aj,am=sin(aN),sin(aK),sin(ay)aR=w(at*ap,-aj,at*am)as=w(aA*am+ah*aj*ap,ah*at,-aA*ap+ah*aj*am)bh=aT(aR,as)W=_(19)y=w(_(7),_(8),_(9))if O(y)>0 then
B[W]={A=y,z=0}end
y=w(_(10),_(11),_(12))if O(y)>0 then
B[W+1]={A=y,z=0}end
W=_(21)y=w(_(13),_(14),_(15))aS=w(_(16),_(17),_(18))if O(y)>0 then
G[W]={A=y,aw=aS,z=0}end
for r,aV in ak(B)do
B[r].z=B[r].z+1
if B[r].z>=aI then
B[r]=az
end
end
for r,aV in ak(G)do
G[r].z=G[r].z+1
if G[r].z>=aI then
G[r]=az
end
end
aJ=_(29)==1
if aJ then
S=_(26)else
S=0
end
if S<.01 and S>-.01 then
E=E-E/5
else
E=aG((E+S/160),-.1,.1)end
if m>=50 then E=0 end
m=aG(m+(S/55*m/2.4)+E*m/2.4,.1,50)c=-atan(as.h,as.j)+pi
M,I=ae.h,ae.j
end
function onDraw()D,Q=d.getWidth(),d.getHeight()if D>32 then
if av then
d.setMapColorOcean(0,0,0)d.setMapColorShallows(2,2,2)d.setMapColorLand(7,7,7)d.setMapColorGrass(8,10,8)d.setMapColorSand(6,6,4)d.setMapColorSnow(25,25,26)d.bl(3,3,3)d.ba(4,4,4)d.drawMap(M,I,m)end
a,b=T(M,I,m,D,Q,ae.h,ae.j)P=m/D
au=m/50
i=(aU/1000)/P
for f=0,2 do
ac=5+10*f
e(k,k,k,7-au*3)aC(a,b,ac/P)e(k,k,k,11-au*2)Y(a+ac/P-(5*(#tostring(ac))),b,ac)end
e(k,k,k,4-au*2)for f=1,8 do
l(a,b,a+sin(f*N/8)*120/P,b+cos(f*N/8)*120/P)end
e(80,k,0,38)l(a,b,a+sin(X+c-o)*i,b+cos(X+c-o)*i)l(a,b,a+sin(X+c+o)*i,b+cos(X+c+o)*i)l(a,b,a+sin(ad+c-o)*i,b+cos(ad+c-o)*i)l(a,b,a+sin(ad+c+o)*i,b+cos(ad+c+o)*i)l(a,b,a+sin(aa+c-o)*i,b+cos(aa+c-o)*i)l(a,b,a+sin(aa+c+o)*i,b+cos(aa+c+o)*i)e(0,k,0,8)aC(a,b,i)l(a,b,a+sin(-ab+c)*i,b+cos(-ab+c)*i)l(a,b,a+sin(ab+c)*i,b+cos(ab+c)*i)e(22,22,22)l(a,b,a+sin(-.97+c)*22,b+cos(-.97+c)*22)l(a,b,a+sin(.97+c)*22,b+cos(.97+c)*22)l(a,b,a+sin(c)*9,b+cos(c)*9)for r,u in ipairs(B)do
x,C=T(M,I,m,D,Q,u.A.h,u.A.j)v=u.A.q
if v<0 then
e(240,0,0)else
e(80,13,1)v=n.max(n.min(v/500,5),0)l(x-v,C-2,x+v+1,C-2)end
aY(x-1,C-1,2,2)end
if O(ai)>0 then
x,C=T(M,I,m,D,Q,ai.h,ai.j)e(55,20,40,70)aM(a,b,x,C)e(46,0,25)p(x-2,C-2,1,5)p(x+2,C-2,1,5)p(x,C,1,1)end
e(0,40,k)for r,u in ak(G)do
F,H=T(M,I,m,D,Q,u.A.h,u.A.j)v=u.A.q
v=n.max(n.min(v/500,5),0)l(F-v,H-2,F+v+1,H-2)p(F,H-1,1,1)p(F+1,H,1,1)p(F,H+1,1,1)p(F-1,H,1,1)if O(u.aw)>0 then
U,V=T(M,I,m,D,Q,u.aw.h,u.aw.j)e(30,90,k,30)aM(F,H,U,V)e(40,40,110,30)p(U-2,V-2,1,5)p(U+2,V-2,1,5)p(U,V,1,1)end
end
if aJ then
e(1,1,1,200)p(13,2,12,5)e(85,160,35)Y(13,2,"SOI")end
else
Z=""
if ao then
e(k,0,0)Z="MSSLE"
elseif ax then
e(239,38,0)Z="TRACK"
elseif al then
e(k,135,0)Z="WARN"
end
if ao or ax or al then
p(0,0,32,32)e(J,J,J)Y(4,12,Z)end
if aE then
e(J,J,J)Y(6,2,"PING")end
end
end
