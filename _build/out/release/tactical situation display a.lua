
O=230
k=255
aS=nil
aw=pairs
aO=table
T=false
M=true
aH=screen
W=map.mapToScreen
m,a,aD,aG,h,bd,be=math,input,output,property,aH,M,T
_,bf,bj,bo=a.getNumber,aD.setNumber,a.getBool,aD.setBool
bn,bk=aG.getNumber,aG.getBool
abs,cos,sin,floor,atan=m.abs,m.cos,m.sin,m.floor,m.atan
pi=m.pi
L=pi*2
h=aH
ac,bh,p,b_,n,aR,bp,g=h.drawText,h.drawTextBox,h.drawLine,h.drawRect,h.drawRectF,h.drawCircle,h.drawClear,h.setColor
function bi(K,N,as,aq)Q=as-K
V=aq-N
if abs(Q)>=abs(V)then
aj=abs(Q)else
aj=abs(V)end
Q=Q/aj
V=V/aj
b=K
e=N
a=0
while(a<=aj)do
n(b,e,1,1)b=b+Q
e=e+V
a=a+1
end
end
function w(b,e,q)return{b=b or 0,e=e or 0,q=q or 0}end
function aY(f,t)return w(f.e*t.q-f.q*t.e,f.q*t.b-f.b*t.q,f.b*t.e-f.e*t.b)end
function X(f)return m.sqrt(f.b*f.b+f.e*f.e+f.q*f.q)end
function bl(f,t)return m.sqrt((f.b-t.b)^2+(f.e-t.e)^2+(f.q-t.q)^2)end
function aK(f,min,max)return m.max(min,m.min(f,max))end
function bm(b)return floor(b+.5)end
function aP(K,N,as,aq)av=-.9*l+50.09
aA=M
bb=as-K
bc=aq-N
aJ=bb/av
aM=bc/av
for a=1,av do
if aA then
p(K+aJ*(a-1),N+aM*(a-1),K+aJ*a,N+aM*a)end
aA=not aA
end
end
ba=13333
o=.03*pi
ab=.09*L+o
aQ=10
F={}A={}am=M
l,H=7,0
P={}for a=1,100 do
P[a]=T
end
function onTick()Z=w(_(1),_(3),_(2))Y=-_(27)*L
ae=-_(20)*L
ai=-_(32)*L+pi
az=_(30)>0
aU=az~=aV and az
aV=az
if aU then
am=not am
end
aF=_(31)==1
aO.remove(P,1)aO.insert(P,aF)s=0
for a=1,6 do
if P[a]then
s=s+1
end
end
if s>=2 then
aB=M
else
aB=T
end
s=0
for a=1,26 do
if P[a]then
s=s+1
end
end
if s>=2 then
ap=M
else
ap=T
end
s=0
for a=1,100 do
if P[a]then
s=s+1
end
end
if s>=2 then
ar=M
else
ar=T
end
ak=w(_(23),_(24),_(25))aN,aT,aI=_(4),_(5),_(6)al,an,ax=cos(aN),cos(aT),cos(aI)aE,ao,at=sin(aN),sin(aT),sin(aI)aW=w(an*ax,-ao,an*at)au=w(aE*at+al*ao*ax,al*an,-aE*ax+al*ao*at)bg=aY(aW,au)af=_(19)B=w(_(7),_(8),_(9))if X(B)>0 then
A[af]={z=B,x=0}end
B=w(_(10),_(11),_(12))if X(B)>0 then
A[af+1]={z=B,x=0}end
af=_(21)B=w(_(13),_(14),_(15))aX=w(_(16),_(17),_(18))if X(B)>0 then
F[af]={z=B,aC=aX,x=0}end
for r,aZ in aw(A)do
A[r].x=A[r].x+1
if A[r].x>=aQ then
A[r]=aS
end
end
for r,aZ in aw(F)do
F[r].x=F[r].x+1
if F[r].x>=aQ then
F[r]=aS
end
end
aL=_(29)==1
if aL then
S=_(26)else
S=0
end
if S<.01 and S>-.01 then
H=H-H/5
else
H=aK((H+S/160),-.1,.1)end
if l>=50 then H=0 end
l=aK(l+(S/55*l/2.4)+H*l/2.4,.1,50)j=-atan(au.b,au.e)+pi
I,J=Z.b,Z.e
end
function onDraw()E,U=h.getWidth(),h.getHeight()if E>32 then
if am then
h.setMapColorOcean(0,0,0)h.setMapColorShallows(2,2,2)h.setMapColorLand(7,7,7)h.setMapColorGrass(8,10,8)h.setMapColorSand(6,6,4)h.setMapColorSnow(25,25,26)h.drawMap(I,J,l)end
d,c=W(I,J,l,E,U,Z.b,Z.e)R=l/E
ay=l/50
i=(ba/1000)/R
for a=0,2 do
ah=5+10*a
g(k,k,k,7-ay*3)aR(d,c,ah/R)g(k,k,k,11-ay*2)ac(d+ah/R-(5*(#tostring(ah))),c,ah)end
g(k,k,k,4-ay*2)for a=1,8 do
p(d,c,d+sin(a*L/8)*120/R,c+cos(a*L/8)*120/R)end
g(80,k,0,38)p(d,c,d+sin(Y+j-o)*i,c+cos(Y+j-o)*i)p(d,c,d+sin(Y+j+o)*i,c+cos(Y+j+o)*i)p(d,c,d+sin(ae+j-o)*i,c+cos(ae+j-o)*i)p(d,c,d+sin(ae+j+o)*i,c+cos(ae+j+o)*i)p(d,c,d+sin(ai+j-o)*i,c+cos(ai+j-o)*i)p(d,c,d+sin(ai+j+o)*i,c+cos(ai+j+o)*i)g(0,k,0,8)aR(d,c,i)p(d,c,d+sin(-ab+j)*i,c+cos(-ab+j)*i)p(d,c,d+sin(ab+j)*i,c+cos(ab+j)*i)for r,u in ipairs(A)do
y,C=W(I,J,l,E,U,u.z.b,u.z.e)g(80,13,1)v=u.z.q
v=m.max(m.min(v/500,5),0)p(y-v,C-2,y+v+1,C-2)b_(y-1,C-1,2,2)end
if X(ak)>0 then
y,C=W(I,J,l,E,U,ak.b,ak.e)g(55,20,40,45)aP(d,c,y,C)g(46,0,25)n(y-2,C-2,1,5)n(y+2,C-2,1,5)n(y,C,1,1)end
g(0,40,k)for r,u in aw(F)do
D,G=W(I,J,l,E,U,u.z.b,u.z.e)v=u.z.q
v=m.max(m.min(v/500,5),0)p(D-v,G-2,D+v+1,G-2)n(D,G-1,1,1)n(D+1,G,1,1)n(D,G+1,1,1)n(D-1,G,1,1)if X(u.aC)>0 then
ag,aa=W(I,J,l,E,U,u.aC.b,u.aC.e)g(30,90,k,30)aP(D,G,ag,aa)g(40,40,110,30)n(ag-2,aa-2,1,5)n(ag+2,aa-2,1,5)n(ag,aa,1,1)end
end
if aL then
g(1,1,1,200)n(13,2,12,5)g(85,160,35)ac(13,2,"SOI")end
else
ad=""
if aB then
g(k,0,0)ad="MSSLE"
elseif ap then
g(239,38,0)ad="TRACK"
elseif ar then
g(k,135,0)ad="WARN"
end
if aB or ap or ar then
n(0,0,32,32)g(O,O,O)ac(4,12,ad)end
if aF then
g(O,O,O)ac(6,2,"PING")end
end
end
