
M=230
k=255
aN=nil
aq=pairs
aJ=table
X=false
P=true
aF=screen
R=map.mapToScreen
l,a,aK,aO,g,bd,bi=math,input,output,property,aF,P,X
_,bk,bf,bj=a.getNumber,aK.setNumber,a.getBool,aK.setBool
bo,bg=aO.getNumber,aO.getBool
abs,cos,sin,floor,atan=l.abs,l.cos,l.sin,l.floor,l.atan
pi=l.pi
L=pi*2
g=aF
aj,bp,q,aY,n,aP,bh,h=g.drawText,g.drawTextBox,g.drawLine,g.drawRect,g.drawRectF,g.drawCircle,g.drawClear,g.setColor
function bn(I,J,au,am)U=au-I
T=am-J
if abs(U)>=abs(T)then
ab=abs(U)else
ab=abs(T)end
U=U/ab
T=T/ab
b=I
e=J
a=0
while(a<=ab)do
n(b,e,1,1)b=b+U
e=e+T
a=a+1
end
end
function v(b,e,p)return{b=b or 0,e=e or 0,p=p or 0}end
function ba(f,u)return v(f.e*u.p-f.p*u.e,f.p*u.b-f.b*u.p,f.b*u.e-f.e*u.b)end
function S(f)return l.sqrt(f.b*f.b+f.e*f.e+f.p*f.p)end
function bm(f,u)return l.sqrt((f.b-u.b)^2+(f.e-u.e)^2+(f.p-u.p)^2)end
function aH(f,min,max)return l.max(min,l.min(f,max))end
function be(b)return floor(b+.5)end
function aD(I,J,au,am)ax=-.9*m+50.09
an=P
aX=au-I
b_=am-J
aE=aX/ax
aQ=b_/ax
for a=1,ax do
if an then
q(I+aE*(a-1),J+aQ*(a-1),I+aE*a,J+aQ*a)end
an=not an
end
end
aW=13333
o=.03*pi
ag=.09*L+o
aL=40
G={}C={}ar=P
m,H=7,0
K={}for a=1,100 do
K[a]=X
end
function onTick()ac=v(_(1),_(3),_(2))Z=-_(27)*L
ad=-_(20)*L
Y=-_(32)*L+pi
aB=_(30)>0
aV=aB~=bb and aB
bb=aB
if aV then
ar=not ar
end
aG=_(31)==1
aJ.remove(K,1)aJ.insert(K,aG)r=0
for a=1,6 do
if K[a]then
r=r+1
end
end
if r>=2 then
ao=P
else
ao=X
end
r=0
for a=1,26 do
if K[a]then
r=r+1
end
end
if r>=2 then
al=P
else
al=X
end
r=0
for a=1,100 do
if K[a]then
r=r+1
end
end
if r>=2 then
aw=P
else
aw=X
end
av=v(_(23),_(24),_(25))aM,aS,aI=_(4),_(5),_(6)aA,ak,aC=cos(aM),cos(aS),cos(aI)aT,ay,ap=sin(aM),sin(aS),sin(aI)bc=v(ak*aC,-ay,ak*ap)az=v(aT*ap+aA*ay*aC,aA*ak,-aT*aC+aA*ay*ap)bl=ba(bc,az)ae=_(19)B=v(_(7),_(8),_(9))if S(B)>0 then
C[ae]={A=B,x=0}end
B=v(_(10),_(11),_(12))if S(B)>0 then
C[ae+1]={A=B,x=0}end
ae=_(21)B=v(_(13),_(14),_(15))aU=v(_(16),_(17),_(18))if S(B)>0 then
G[ae]={A=B,at=aU,x=0}end
for s,aZ in aq(C)do
C[s].x=C[s].x+1
if C[s].x>=aL then
C[s]=aN
end
end
for s,aZ in aq(G)do
G[s].x=G[s].x+1
if G[s].x>=aL then
G[s]=aN
end
end
aR=_(29)==1
if aR then
V=_(26)else
V=0
end
if V<.01 and V>-.01 then
H=H-H/5
else
H=aH((H+V/160),-.1,.1)end
if m>=50 then H=0 end
m=aH(m+(V/55*m/2.4)+H*m/2.4,.1,50)j=-atan(az.b,az.e)+pi
N,O=ac.b,ac.e
end
function onDraw()F,Q=g.getWidth(),g.getHeight()if F>32 then
if ar then
g.setMapColorOcean(0,0,0)g.setMapColorShallows(2,2,2)g.setMapColorLand(7,7,7)g.setMapColorGrass(8,10,8)g.setMapColorSand(6,6,4)g.setMapColorSnow(25,25,26)g.drawMap(N,O,m)end
d,c=R(N,O,m,F,Q,ac.b,ac.e)W=m/F
as=m/50
i=(aW/1000)/W
for a=0,2 do
ai=5+10*a
h(k,k,k,7-as*3)aP(d,c,ai/W)h(k,k,k,11-as*2)aj(d+ai/W-(5*(#tostring(ai))),c,ai)end
h(k,k,k,4-as*2)for a=1,8 do
q(d,c,d+sin(a*L/8)*120/W,c+cos(a*L/8)*120/W)end
h(80,k,0,38)q(d,c,d+sin(Z+j-o)*i,c+cos(Z+j-o)*i)q(d,c,d+sin(Z+j+o)*i,c+cos(Z+j+o)*i)q(d,c,d+sin(ad+j-o)*i,c+cos(ad+j-o)*i)q(d,c,d+sin(ad+j+o)*i,c+cos(ad+j+o)*i)q(d,c,d+sin(Y+j-o)*i,c+cos(Y+j-o)*i)q(d,c,d+sin(Y+j+o)*i,c+cos(Y+j+o)*i)h(0,k,0,8)aP(d,c,i)q(d,c,d+sin(-ag+j)*i,c+cos(-ag+j)*i)q(d,c,d+sin(ag+j)*i,c+cos(ag+j)*i)for s,t in ipairs(C)do
y,z=R(N,O,m,F,Q,t.A.b,t.A.e)h(80,13,1)w=t.A.p
w=l.max(l.min(w/500,5),0)q(y-w,z-2,y+w+1,z-2)aY(y-1,z-1,2,2)end
if S(av)>0 then
y,z=R(N,O,m,F,Q,av.b,av.e)h(55,20,40,70)aD(d,c,y,z)h(46,0,25)n(y-2,z-2,1,5)n(y+2,z-2,1,5)n(y,z,1,1)end
h(0,40,k)for s,t in aq(G)do
E,D=R(N,O,m,F,Q,t.A.b,t.A.e)w=t.A.p
w=l.max(l.min(w/500,5),0)q(E-w,D-2,E+w+1,D-2)n(E,D-1,1,1)n(E+1,D,1,1)n(E,D+1,1,1)n(E-1,D,1,1)if S(t.at)>0 then
af,aa=R(N,O,m,F,Q,t.at.b,t.at.e)h(30,90,k,30)aD(E,D,af,aa)h(40,40,110,30)n(af-2,aa-2,1,5)n(af+2,aa-2,1,5)n(af,aa,1,1)end
end
if aR then
h(1,1,1,200)n(13,2,12,5)h(85,160,35)aj(13,2,"SOI")end
else
ah=""
if ao then
h(k,0,0)ah="MSSLE"
elseif al then
h(239,38,0)ah="TRACK"
elseif aw then
h(k,135,0)ah="WARN"
end
if ao or al or aw then
n(0,0,32,32)h(M,M,M)aj(4,12,ah)end
if aG then
h(M,M,M)aj(6,2,"PING")end
end
end
