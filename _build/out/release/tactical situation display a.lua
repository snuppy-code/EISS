
J=230
k=255
aF=nil
aA=pairs
aG=table
S=false
L=true
aE=screen
U=map.mapToScreen
l,a,aK,aM,f,bg,bn=math,input,output,property,aE,L,S
_,be,bh,br=a.getNumber,aK.setNumber,a.getBool,aK.setBool
bd,bi=aM.getNumber,aM.getBool
abs,cos,sin,floor,atan=l.abs,l.cos,l.sin,l.floor,l.atan
pi=l.pi
O=pi*2
f=aE
ae,bk,q,aV,n,aL,bl,h=f.drawText,f.drawTextBox,f.drawLine,f.drawRect,f.drawRectF,f.drawCircle,f.drawClear,f.setColor
function bf(M,N,ar,al)V=ar-M
W=al-N
if abs(V)>=abs(W)then
aa=abs(V)else
aa=abs(W)end
V=V/aa
W=W/aa
b=M
e=N
a=0
while(a<=aa)do
n(b,e,1,1)b=b+V
e=e+W
a=a+1
end
end
function v(b,e,p)return{b=b or 0,e=e or 0,p=p or 0}end
function aY(g,u)return v(g.e*u.p-g.p*u.e,g.p*u.b-g.b*u.p,g.b*u.e-g.e*u.b)end
function T(g)return l.sqrt(g.b*g.b+g.e*g.e+g.p*g.p)end
function bj(g,u)return l.sqrt((g.b-u.b)^2+(g.e-u.e)^2+(g.p-u.p)^2)end
function aI(g,min,max)return l.max(min,l.min(g,max))end
function bm(b)return floor(b+.5)end
function aH(M,N,ar,al)ao=-.9*m+50.09
az=L
aX=ar-M
bb=al-N
aJ=aX/ao
aD=bb/ao
for a=1,ao do
if az then
q(M+aJ*(a-1),N+aD*(a-1),M+aJ*a,N+aD*a)end
az=not az
end
end
aU=13333
o=.03*pi
ac=.09*O+o
aT=10
F={}x={}ak=L
m,D=7,0
I={}for a=1,100 do
I[a]=S
end
function onTick()ad=v(_(1),_(3),_(2))Z=-_(27)*O
ab=-_(20)*O
ah=-_(32)*O+pi
aB=_(30)>0
aZ=aB~=ba and aB
ba=aB
if aZ then
ak=not ak
end
aR=_(31)==1
aG.remove(I,1)aG.insert(I,aR)r=0
for a=1,6 do
if I[a]then
r=r+1
end
end
if r>=2 then
aq=L
else
aq=S
end
r=0
for a=1,26 do
if I[a]then
r=r+1
end
end
if r>=2 then
av=L
else
av=S
end
r=0
for a=1,100 do
if I[a]then
r=r+1
end
end
if r>=2 then
ap=L
else
ap=S
end
aw=v(_(23),_(24),_(25))aO,aP,aN=_(4),_(5),_(6)at,au,am=cos(aO),cos(aP),cos(aN)aQ,ax,aC=sin(aO),sin(aP),sin(aN)bc=v(au*am,-ax,au*aC)ay=v(aQ*aC+at*ax*am,at*au,-aQ*am+at*ax*aC)bq=aY(bc,ay)Y=_(19)B=v(_(7),_(8),_(9))if T(B)>0 then
x[Y]={C=B,y=0}end
B=v(_(10),_(11),_(12))if T(B)>0 then
x[Y+1]={C=B,y=0}end
Y=_(21)B=v(_(13),_(14),_(15))aW=v(_(16),_(17),_(18))if T(B)>0 then
F[Y]={C=B,as=aW,y=0}end
for s,b_ in aA(x)do
x[s].y=x[s].y+1
if x[s].y>=aT then
x[s]=aF
end
end
for s,b_ in aA(F)do
F[s].y=F[s].y+1
if F[s].y>=aT then
F[s]=aF
end
end
aS=_(29)==1
if aS then
Q=_(26)else
Q=0
end
if Q<.01 and Q>-.01 then
D=D-D/5
else
D=aI((D+Q/160),-.1,.1)end
if m>=50 then D=0 end
m=aI(m+(Q/55*m/2.4)+D*m/2.4,.1,50)j=-atan(ay.b,ay.e)+pi
K,P=ad.b,ad.e
end
function onDraw()H,R=f.getWidth(),f.getHeight()if H>32 then
if ak then
f.setMapColorOcean(0,0,0)f.setMapColorShallows(2,2,2)f.setMapColorLand(7,7,7)f.setMapColorGrass(8,10,8)f.setMapColorSand(6,6,4)f.setMapColorSnow(25,25,26)f.bp(3,3,3)f.bo(4,4,4)f.drawMap(K,P,m)end
d,c=U(K,P,m,H,R,ad.b,ad.e)X=m/H
an=m/50
i=(aU/1000)/X
for a=0,2 do
ag=5+10*a
h(k,k,k,7-an*3)aL(d,c,ag/X)h(k,k,k,11-an*2)ae(d+ag/X-(5*(#tostring(ag))),c,ag)end
h(k,k,k,4-an*2)for a=1,8 do
q(d,c,d+sin(a*O/8)*120/X,c+cos(a*O/8)*120/X)end
h(80,k,0,38)q(d,c,d+sin(Z+j-o)*i,c+cos(Z+j-o)*i)q(d,c,d+sin(Z+j+o)*i,c+cos(Z+j+o)*i)q(d,c,d+sin(ab+j-o)*i,c+cos(ab+j-o)*i)q(d,c,d+sin(ab+j+o)*i,c+cos(ab+j+o)*i)q(d,c,d+sin(ah+j-o)*i,c+cos(ah+j-o)*i)q(d,c,d+sin(ah+j+o)*i,c+cos(ah+j+o)*i)h(0,k,0,8)aL(d,c,i)q(d,c,d+sin(-ac+j)*i,c+cos(-ac+j)*i)q(d,c,d+sin(ac+j)*i,c+cos(ac+j)*i)for s,t in ipairs(x)do
A,z=U(K,P,m,H,R,t.C.b,t.C.e)h(80,13,1)w=t.C.p
w=l.max(l.min(w/500,5),0)q(A-w,z-2,A+w+1,z-2)aV(A-1,z-1,2,2)end
if T(aw)>0 then
A,z=U(K,P,m,H,R,aw.b,aw.e)h(55,20,40,70)aH(d,c,A,z)h(46,0,25)n(A-2,z-2,1,5)n(A+2,z-2,1,5)n(A,z,1,1)end
h(0,40,k)for s,t in aA(F)do
G,E=U(K,P,m,H,R,t.C.b,t.C.e)w=t.C.p
w=l.max(l.min(w/500,5),0)q(G-w,E-2,G+w+1,E-2)n(G,E-1,1,1)n(G+1,E,1,1)n(G,E+1,1,1)n(G-1,E,1,1)if T(t.as)>0 then
aj,ai=U(K,P,m,H,R,t.as.b,t.as.e)h(30,90,k,30)aH(G,E,aj,ai)h(40,40,110,30)n(aj-2,ai-2,1,5)n(aj+2,ai-2,1,5)n(aj,ai,1,1)end
end
if aS then
h(1,1,1,200)n(13,2,12,5)h(85,160,35)ae(13,2,"SOI")end
else
af=""
if aq then
h(k,0,0)af="MSSLE"
elseif av then
h(239,38,0)af="TRACK"
elseif ap then
h(k,135,0)af="WARN"
end
if aq or av or ap then
n(0,0,32,32)h(J,J,J)ae(4,12,af)end
if aR then
h(J,J,J)ae(6,2,"PING")end
end
end
