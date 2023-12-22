
I=230
k=255
aG=nil
au=pairs
aF=table
S=false
K=true
ay=screen
P=map.mapToScreen
n,f,aL,aO,d,bj,bg=math,input,output,property,ay,K,S
_,bm,bh,bk=f.getNumber,aL.setNumber,f.getBool,aL.setBool
bl,ba=aO.getNumber,aO.getBool
abs,cos,sin,floor,atan=n.abs,n.cos,n.sin,n.floor,n.atan
pi=n.pi
N=pi*2
d=ay
X,bf,l,aV,q,aH,bn,e=d.drawText,d.drawTextBox,d.drawLine,d.drawRect,d.drawRectF,d.drawCircle,d.drawClear,d.setColor
function w(g,j,p)return{g=g or 0,j=j or 0,p=p or 0}end
function aX(h,v)return w(h.j*v.p-h.p*v.j,h.p*v.g-h.g*v.p,h.g*v.j-h.j*v.g)end
function Q(h)return n.sqrt(h.g*h.g+h.j*h.j+h.p*h.p)end
function bb(h,v)return n.sqrt((h.g-v.g)^2+(h.j-v.j)^2+(h.p-v.p)^2)end
function az(h,min,max)return n.max(min,n.min(h,max))end
function bd(g)return floor(g+.5)end
function aB(aq,af,aQ,aR)ap=-.9*m+50.09
aw=K
aP=aQ-aq
aU=aR-af
aD=aP/ap
aM=aU/ap
for f=1,ap do
if aw then
l(aq+aD*(f-1),af+aM*(f-1),aq+aD*f,af+aM*f)end
aw=not aw
end
end
aT=13333
o=.03*pi
aa=.09*N+o
aN=40
D={}z={}ao=K
m,G=7,0
M={}for f=1,100 do
M[f]=S
end
function onTick()W=w(_(1),_(3),_(2))Z=-_(27)*N
ad=-_(20)*N
V=-_(32)*N+pi
as=_(30)>0
aW=as~=aS and as
aS=as
if aW then
ao=not ao
end
aJ=_(31)==1
aF.remove(M,1)aF.insert(M,aJ)s=0
for f=1,6 do
if M[f]then
s=s+1
end
end
if s>=2 then
ai=K
else
ai=S
end
s=0
for f=1,26 do
if M[f]then
s=s+1
end
end
if s>=2 then
ah=K
else
ah=S
end
s=0
for f=1,100 do
if M[f]then
s=s+1
end
end
if s>=2 then
an=K
else
an=S
end
at=w(_(23),_(24),_(25))aI,aA,aE=_(4),_(5),_(6)ar,ag,am=cos(aI),cos(aA),cos(aE)aC,ax,al=sin(aI),sin(aA),sin(aE)b_=w(ag*am,-ax,ag*al)aj=w(aC*al+ar*ax*am,ar*ag,-aC*am+ar*ax*al)bi=aX(b_,aj)ae=_(19)x=w(_(7),_(8),_(9))if Q(x)>0 then
z[ae]={C=x,A=0}end
x=w(_(10),_(11),_(12))if Q(x)>0 then
z[ae+1]={C=x,A=0}end
ae=_(21)x=w(_(13),_(14),_(15))aY=w(_(16),_(17),_(18))if Q(x)>0 then
D[ae]={C=x,av=aY,A=0}end
for r,aZ in au(z)do
z[r].A=z[r].A+1
if z[r].A>=aN then
z[r]=aG
end
end
for r,aZ in au(D)do
D[r].A=D[r].A+1
if D[r].A>=aN then
D[r]=aG
end
end
aK=_(29)==1
if aK then
R=_(26)else
R=0
end
if R<.01 and R>-.01 then
G=G-G/5
else
G=az((G+R/160),-.1,.1)end
if m>=50 then G=0 end
m=az(m+(R/55*m/2.4)+G*m/2.4,.1,50)c=-atan(aj.g,aj.j)+pi
L,J=W.g,W.j
end
function onDraw()F,O=d.getWidth(),d.getHeight()if F>32 then
if ao then
d.setMapColorOcean(0,0,0)d.setMapColorShallows(2,2,2)d.setMapColorLand(7,7,7)d.setMapColorGrass(8,10,8)d.setMapColorSand(6,6,4)d.setMapColorSnow(25,25,26)d.bc(3,3,3)d.be(4,4,4)d.drawMap(L,J,m)end
b,a=P(L,J,m,F,O,W.g,W.j)T=m/F
ak=m/50
i=(aT/1000)/T
for f=0,2 do
ab=5+10*f
e(k,k,k,7-ak*3)aH(b,a,ab/T)e(k,k,k,11-ak*2)X(b+ab/T-(5*(#tostring(ab))),a,ab)end
e(k,k,k,4-ak*2)for f=1,8 do
l(b,a,b+sin(f*N/8)*120/T,a+cos(f*N/8)*120/T)end
e(80,k,0,38)l(b,a,b+sin(Z+c-o)*i,a+cos(Z+c-o)*i)l(b,a,b+sin(Z+c+o)*i,a+cos(Z+c+o)*i)l(b,a,b+sin(ad+c-o)*i,a+cos(ad+c-o)*i)l(b,a,b+sin(ad+c+o)*i,a+cos(ad+c+o)*i)l(b,a,b+sin(V+c-o)*i,a+cos(V+c-o)*i)l(b,a,b+sin(V+c+o)*i,a+cos(V+c+o)*i)e(0,k,0,8)aH(b,a,i)l(b,a,b+sin(-aa+c)*i,a+cos(-aa+c)*i)l(b,a,b+sin(aa+c)*i,a+cos(aa+c)*i)e(22,22,22)l(b,a,b+sin(-.97+c)*22,a+cos(-.97+c)*22)l(b,a,b+sin(.97+c)*22,a+cos(.97+c)*22)l(b,a,b+sin(c)*9,a+cos(c)*9)for r,u in ipairs(z)do
B,y=P(L,J,m,F,O,u.C.g,u.C.j)t=u.C.p
if t<0 then
e(240,0,0)else
e(80,13,1)t=n.max(n.min(t/500,5),0)l(B-t,y-2,B+t+1,y-2)end
aV(B-1,y-1,2,2)end
if Q(at)>0 then
B,y=P(L,J,m,F,O,at.g,at.j)e(55,20,40,70)aB(b,a,B,y)e(46,0,25)q(B-2,y-2,1,5)q(B+2,y-2,1,5)q(B,y,1,1)end
e(0,40,k)for r,u in au(D)do
E,H=P(L,J,m,F,O,u.C.g,u.C.j)t=u.C.p
t=n.max(n.min(t/500,5),0)l(E-t,H-2,E+t+1,H-2)q(E,H-1,1,1)q(E+1,H,1,1)q(E,H+1,1,1)q(E-1,H,1,1)if Q(u.av)>0 then
ac,Y=P(L,J,m,F,O,u.av.g,u.av.j)e(30,90,k,30)aB(E,H,ac,Y)e(40,40,110,30)q(ac-2,Y-2,1,5)q(ac+2,Y-2,1,5)q(ac,Y,1,1)end
end
if aK then
e(1,1,1,200)q(13,2,12,5)e(85,160,35)X(13,2,"SOI")end
else
U=""
if ai then
e(k,0,0)U="MSSLE"
elseif ah then
e(239,38,0)U="TRACK"
elseif an then
e(k,135,0)U="WARN"
end
if ai or ah or an then
q(0,0,32,32)e(I,I,I)X(4,12,U)end
if aJ then
e(I,I,I)X(6,2,"PING")end
end
end
