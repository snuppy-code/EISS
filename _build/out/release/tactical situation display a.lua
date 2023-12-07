
N=230
k=255
aL=nil
ak=pairs
aH=table
X=false
L=true
aG=screen
W=map.mapToScreen
m,a,aF,aS,h,bd,bp=math,input,output,property,aG,L,X
_,bi,be,bo=a.getNumber,aF.setNumber,a.getBool,aF.setBool
bg,bh=aS.getNumber,aS.getBool
abs,cos,sin,floor,atan=m.abs,m.cos,m.sin,m.floor,m.atan
pi=m.pi
K=pi*2
h=aG
Y,bk,q,aX,o,aN,bf,g=h.drawText,h.drawTextBox,h.drawLine,h.drawRect,h.drawRectF,h.drawCircle,h.drawClear,h.setColor
function bm(I,P,aC,aB)T=aC-I
R=aB-P
if abs(T)>=abs(R)then
ai=abs(T)else
ai=abs(R)end
T=T/ai
R=R/ai
b=I
e=P
a=0
while(a<=ai)do
o(b,e,1,1)b=b+T
e=e+R
a=a+1
end
end
function w(b,e,p)return{b=b or 0,e=e or 0,p=p or 0}end
function ba(f,t)return w(f.e*t.p-f.p*t.e,f.p*t.b-f.b*t.p,f.b*t.e-f.e*t.b)end
function Q(f)return m.sqrt(f.b*f.b+f.e*f.e+f.p*f.p)end
function bj(f,t)return m.sqrt((f.b-t.b)^2+(f.e-t.e)^2+(f.p-t.p)^2)end
function aQ(f,min,max)return m.max(min,m.min(f,max))end
function bn(b)return floor(b+.5)end
function aR(I,P,aC,aB)av=-.9*l+50.09
al=L
bb=aC-I
b_=aB-P
aT=bb/av
aE=b_/av
for a=1,av do
if al then
q(I+aT*(a-1),P+aE*(a-1),I+aT*a,P+aE*a)end
al=not al
end
end
aU=13333
n=.03*pi
ah=.09*K+n
aD=10
G={}A={}am=L
l,F=7,0
J={}for a=1,100 do
J[a]=X
end
function onTick()aj=w(_(1),_(3),_(2))ab=-_(27)*K
ae=-_(20)*K
ag=-_(32)*K+pi
an=_(30)>0
aV=an~=bc and an
bc=an
if aV then
am=not am
end
aP=_(31)==1
aH.remove(J,1)aH.insert(J,aP)r=0
for a=1,6 do
if J[a]then
r=r+1
end
end
if r>=2 then
ao=L
else
ao=X
end
r=0
for a=1,26 do
if J[a]then
r=r+1
end
end
if r>=2 then
au=L
else
au=X
end
r=0
for a=1,100 do
if J[a]then
r=r+1
end
end
if r>=2 then
ay=L
else
ay=X
end
at=w(_(23),_(24),_(25))aK,aJ,aO=_(4),_(5),_(6)az,aq,aA=cos(aK),cos(aJ),cos(aO)aI,as,aw=sin(aK),sin(aJ),sin(aO)aY=w(aq*aA,-as,aq*aw)ar=w(aI*aw+az*as*aA,az*aq,-aI*aA+az*as*aw)bl=ba(aY,ar)ad=_(19)z=w(_(7),_(8),_(9))if Q(z)>0 then
A[ad]={y=z,x=0}end
z=w(_(10),_(11),_(12))if Q(z)>0 then
A[ad+1]={y=z,x=0}end
ad=_(21)z=w(_(13),_(14),_(15))aW=w(_(16),_(17),_(18))if Q(z)>0 then
G[ad]={y=z,ap=aW,x=0}end
for s,aZ in ak(A)do
A[s].x=A[s].x+1
if A[s].x>=aD then
A[s]=aL
end
end
for s,aZ in ak(G)do
G[s].x=G[s].x+1
if G[s].x>=aD then
G[s]=aL
end
end
aM=_(29)==1
if aM then
V=_(26)else
V=0
end
if V<.01 and V>-.01 then
F=F-F/5
else
F=aQ((F+V/160),-.1,.1)end
if l>=50 then F=0 end
l=aQ(l+(V/55*l/2.4)+F*l/2.4,.1,50)j=-atan(ar.b,ar.e)+pi
O,M=aj.b,aj.e
end
function onDraw()E,S=h.getWidth(),h.getHeight()if E>32 then
if am then
h.setMapColorOcean(0,0,0)h.setMapColorShallows(2,2,2)h.setMapColorLand(7,7,7)h.setMapColorGrass(8,10,8)h.setMapColorSand(6,6,4)h.setMapColorSnow(25,25,26)h.drawMap(O,M,l)end
c,d=W(O,M,l,E,S,aj.b,aj.e)U=l/E
ax=l/50
i=(aU/1000)/U
for a=0,2 do
ac=5+10*a
g(k,k,k,7-ax*3)aN(c,d,ac/U)g(k,k,k,11-ax*2)Y(c+ac/U-(5*(#tostring(ac))),d,ac)end
g(k,k,k,4-ax*2)for a=1,8 do
q(c,d,c+sin(a*K/8)*120/U,d+cos(a*K/8)*120/U)end
g(80,k,0,38)q(c,d,c+sin(ab+j-n)*i,d+cos(ab+j-n)*i)q(c,d,c+sin(ab+j+n)*i,d+cos(ab+j+n)*i)q(c,d,c+sin(ae+j-n)*i,d+cos(ae+j-n)*i)q(c,d,c+sin(ae+j+n)*i,d+cos(ae+j+n)*i)q(c,d,c+sin(ag+j-n)*i,d+cos(ag+j-n)*i)q(c,d,c+sin(ag+j+n)*i,d+cos(ag+j+n)*i)g(0,k,0,8)aN(c,d,i)q(c,d,c+sin(-ah+j)*i,d+cos(-ah+j)*i)q(c,d,c+sin(ah+j)*i,d+cos(ah+j)*i)for s,u in ipairs(A)do
C,B=W(O,M,l,E,S,u.y.b,u.y.e)g(80,13,1)v=u.y.p
v=m.max(m.min(v/500,5),0)q(C-v,B-2,C+v+1,B-2)aX(C-1,B-1,2,2)end
if Q(at)>0 then
C,B=W(O,M,l,E,S,at.b,at.e)g(55,20,40,70)aR(c,d,C,B)g(46,0,25)o(C-2,B-2,1,5)o(C+2,B-2,1,5)o(C,B,1,1)end
g(0,40,k)for s,u in ak(G)do
H,D=W(O,M,l,E,S,u.y.b,u.y.e)v=u.y.p
v=m.max(m.min(v/500,5),0)q(H-v,D-2,H+v+1,D-2)o(H,D-1,1,1)o(H+1,D,1,1)o(H,D+1,1,1)o(H-1,D,1,1)if Q(u.ap)>0 then
Z,af=W(O,M,l,E,S,u.ap.b,u.ap.e)g(30,90,k,30)aR(H,D,Z,af)g(40,40,110,30)o(Z-2,af-2,1,5)o(Z+2,af-2,1,5)o(Z,af,1,1)end
end
if aM then
g(1,1,1,200)o(13,2,12,5)g(85,160,35)Y(13,2,"SOI")end
else
aa=""
if ao then
g(k,0,0)aa="MSSLE"
elseif au then
g(239,38,0)aa="TRACK"
elseif ay then
g(k,135,0)aa="WARN"
end
if ao or au or ay then
o(0,0,32,32)g(N,N,N)Y(4,12,aa)end
if aP then
g(N,N,N)Y(6,2,"PING")end
end
end
