
I=230
k=255
aM=nil
ak=pairs
aK=table
R=false
K=true
aP=screen
S=map.mapToScreen
l,a,aS,aF,f,bj,be=math,input,output,property,aP,K,R
_,bq,bf,bl=a.getNumber,aS.setNumber,a.getBool,aS.setBool
bh,bo=aF.getNumber,aF.getBool
abs,cos,sin,floor,atan=l.abs,l.cos,l.sin,l.floor,l.atan
pi=l.pi
O=pi*2
f=aP
Z,bd,p,bb,n,aO,bg,h=f.drawText,f.drawTextBox,f.drawLine,f.drawRect,f.drawRectF,f.drawCircle,f.drawClear,f.setColor
function bk(N,L,ao,aC)T=ao-N
X=aC-L
if abs(T)>=abs(X)then
ag=abs(T)else
ag=abs(X)end
T=T/ag
X=X/ag
b=N
e=L
a=0
while(a<=ag)do
n(b,e,1,1)b=b+T
e=e+X
a=a+1
end
end
function w(b,e,q)return{b=b or 0,e=e or 0,q=q or 0}end
function bc(g,u)return w(g.e*u.q-g.q*u.e,g.q*u.b-g.b*u.q,g.b*u.e-g.e*u.b)end
function V(g)return l.sqrt(g.b*g.b+g.e*g.e+g.q*g.q)end
function bn(g,u)return l.sqrt((g.b-u.b)^2+(g.e-u.e)^2+(g.q-u.q)^2)end
function aH(g,min,max)return l.max(min,l.min(g,max))end
function bp(b)return floor(b+.5)end
function aD(N,L,ao,aC)ap=-.9*m+50.09
az=K
aZ=ao-N
aW=aC-L
aL=aZ/ap
aQ=aW/ap
for a=1,ap do
if az then
p(N+aL*(a-1),L+aQ*(a-1),N+aL*a,L+aQ*a)end
az=not az
end
end
aV=13333
o=.03*pi
af=.09*O+o
aI=10
F={}B={}ar=K
m,D=7,0
M={}for a=1,100 do
M[a]=R
end
function onTick()aa=w(_(1),_(3),_(2))ai=-_(27)*O
ad=-_(20)*O
aj=-_(32)*O+pi
aq=_(30)>0
b_=aq~=aU and aq
aU=aq
if b_ then
ar=not ar
end
aN=_(31)==1
aK.remove(M,1)aK.insert(M,aN)r=0
for a=1,6 do
if M[a]then
r=r+1
end
end
if r>=2 then
as=K
else
as=R
end
r=0
for a=1,26 do
if M[a]then
r=r+1
end
end
if r>=2 then
am=K
else
am=R
end
r=0
for a=1,100 do
if M[a]then
r=r+1
end
end
if r>=2 then
ay=K
else
ay=R
end
an=w(_(23),_(24),_(25))aE,aJ,aR=_(4),_(5),_(6)al,aB,at=cos(aE),cos(aJ),cos(aR)aG,aw,aA=sin(aE),sin(aJ),sin(aR)aY=w(aB*at,-aw,aB*aA)av=w(aG*aA+al*aw*at,al*aB,-aG*at+al*aw*aA)bm=bc(aY,av)ac=_(19)C=w(_(7),_(8),_(9))if V(C)>0 then
B[ac]={A=C,y=0}end
C=w(_(10),_(11),_(12))if V(C)>0 then
B[ac+1]={A=C,y=0}end
ac=_(21)C=w(_(13),_(14),_(15))ba=w(_(16),_(17),_(18))if V(C)>0 then
F[ac]={A=C,ax=ba,y=0}end
for s,aX in ak(B)do
B[s].y=B[s].y+1
if B[s].y>=aI then
B[s]=aM
end
end
for s,aX in ak(F)do
F[s].y=F[s].y+1
if F[s].y>=aI then
F[s]=aM
end
end
aT=_(29)==1
if aT then
W=_(26)else
W=0
end
if W<.01 and W>-.01 then
D=D-D/5
else
D=aH((D+W/160),-.1,.1)end
if m>=50 then D=0 end
m=aH(m+(W/55*m/2.4)+D*m/2.4,.1,50)j=-atan(av.b,av.e)+pi
P,J=aa.b,aa.e
end
function onDraw()E,Q=f.getWidth(),f.getHeight()if E>32 then
if ar then
f.setMapColorOcean(0,0,0)f.setMapColorShallows(2,2,2)f.setMapColorLand(7,7,7)f.setMapColorGrass(8,10,8)f.setMapColorSand(6,6,4)f.setMapColorSnow(25,25,26)f.br(3,3,3)f.bi(4,4,4)f.drawMap(P,J,m)end
d,c=S(P,J,m,E,Q,aa.b,aa.e)U=m/E
au=m/50
i=(aV/1000)/U
for a=0,2 do
Y=5+10*a
h(k,k,k,7-au*3)aO(d,c,Y/U)h(k,k,k,11-au*2)Z(d+Y/U-(5*(#tostring(Y))),c,Y)end
h(k,k,k,4-au*2)for a=1,8 do
p(d,c,d+sin(a*O/8)*120/U,c+cos(a*O/8)*120/U)end
h(80,k,0,38)p(d,c,d+sin(ai+j-o)*i,c+cos(ai+j-o)*i)p(d,c,d+sin(ai+j+o)*i,c+cos(ai+j+o)*i)p(d,c,d+sin(ad+j-o)*i,c+cos(ad+j-o)*i)p(d,c,d+sin(ad+j+o)*i,c+cos(ad+j+o)*i)p(d,c,d+sin(aj+j-o)*i,c+cos(aj+j-o)*i)p(d,c,d+sin(aj+j+o)*i,c+cos(aj+j+o)*i)h(0,k,0,8)aO(d,c,i)p(d,c,d+sin(-af+j)*i,c+cos(-af+j)*i)p(d,c,d+sin(af+j)*i,c+cos(af+j)*i)for s,t in ipairs(B)do
z,x=S(P,J,m,E,Q,t.A.b,t.A.e)h(80,13,1)v=t.A.q
v=l.max(l.min(v/500,5),0)p(z-v,x-2,z+v+1,x-2)bb(z-1,x-1,2,2)end
if V(an)>0 then
z,x=S(P,J,m,E,Q,an.b,an.e)h(55,20,40,70)aD(d,c,z,x)h(46,0,25)n(z-2,x-2,1,5)n(z+2,x-2,1,5)n(z,x,1,1)end
h(0,40,k)for s,t in ak(F)do
H,G=S(P,J,m,E,Q,t.A.b,t.A.e)v=t.A.q
v=l.max(l.min(v/500,5),0)p(H-v,G-2,H+v+1,G-2)n(H,G-1,1,1)n(H+1,G,1,1)n(H,G+1,1,1)n(H-1,G,1,1)if V(t.ax)>0 then
ab,ah=S(P,J,m,E,Q,t.ax.b,t.ax.e)h(30,90,k,30)aD(H,G,ab,ah)h(40,40,110,30)n(ab-2,ah-2,1,5)n(ab+2,ah-2,1,5)n(ab,ah,1,1)end
end
if aT then
h(1,1,1,200)n(13,2,12,5)h(85,160,35)Z(13,2,"SOI")end
else
ae=""
if as then
h(k,0,0)ae="MSSLE"
elseif am then
h(239,38,0)ae="TRACK"
elseif ay then
h(k,135,0)ae="WARN"
end
if as or am or ay then
n(0,0,32,32)h(I,I,I)Z(4,12,ae)end
if aN then
h(I,I,I)Z(6,2,"PING")end
end
end
