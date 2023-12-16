
I=230
k=255
aM=nil
af=pairs
aJ=table
T=false
J=true
aI=screen
S=map.mapToScreen
n,f,aD,aA,d,bb,bi=math,input,output,property,aI,J,T
_,bn,bf,bc=f.getNumber,aD.setNumber,f.getBool,aD.setBool
be,bh=aA.getNumber,aA.getBool
abs,cos,sin,floor,atan=n.abs,n.cos,n.sin,n.floor,n.atan
pi=n.pi
L=pi*2
d=aI
ab,bg,l,aP,p,aL,bj,e=d.drawText,d.drawTextBox,d.drawLine,d.drawRect,d.drawRectF,d.drawCircle,d.drawClear,d.setColor
function w(g,j,q)return{g=g or 0,j=j or 0,q=q or 0}end
function aV(h,t)return w(h.j*t.q-h.q*t.j,h.q*t.g-h.g*t.q,h.g*t.j-h.j*t.g)end
function P(h)return n.sqrt(h.g*h.g+h.j*h.j+h.q*h.q)end
function ba(h,t)return n.sqrt((h.g-t.g)^2+(h.j-t.j)^2+(h.q-t.q)^2)end
function aE(h,min,max)return n.max(min,n.min(h,max))end
function bl(g)return floor(g+.5)end
function aG(ax,aq,aQ,aR)ak=-.9*m+50.09
as=J
aZ=aQ-ax
aX=aR-aq
aN=aZ/ak
aF=aX/ak
for f=1,ak do
if as then
l(ax+aN*(f-1),aq+aF*(f-1),ax+aN*f,aq+aF*f)end
as=not as
end
end
aS=13333
o=.03*pi
U=.09*L+o
aH=40
G={}A={}ap=J
m,D=7,0
N={}for f=1,100 do
N[f]=T
end
function onTick()X=w(_(1),_(3),_(2))Y=-_(27)*L
Z=-_(20)*L
V=-_(32)*L+pi
ao=_(30)>0
b_=ao~=aT and ao
aT=ao
if b_ then
ap=not ap
end
aB=_(31)==1
aJ.remove(N,1)aJ.insert(N,aB)s=0
for f=1,6 do
if N[f]then
s=s+1
end
end
if s>=2 then
au=J
else
au=T
end
s=0
for f=1,26 do
if N[f]then
s=s+1
end
end
if s>=2 then
aw=J
else
aw=T
end
s=0
for f=1,100 do
if N[f]then
s=s+1
end
end
if s>=2 then
aj=J
else
aj=T
end
am=w(_(23),_(24),_(25))aC,ay,az=_(4),_(5),_(6)ah,ar,av=cos(aC),cos(ay),cos(az)aO,ag,ai=sin(aC),sin(ay),sin(az)aW=w(ar*av,-ag,ar*ai)al=w(aO*ai+ah*ag*av,ah*ar,-aO*av+ah*ag*ai)bk=aV(aW,al)ae=_(19)z=w(_(7),_(8),_(9))if P(z)>0 then
A[ae]={C=z,y=0}end
z=w(_(10),_(11),_(12))if P(z)>0 then
A[ae+1]={C=z,y=0}end
ae=_(21)z=w(_(13),_(14),_(15))aY=w(_(16),_(17),_(18))if P(z)>0 then
G[ae]={C=z,at=aY,y=0}end
for r,aU in af(A)do
A[r].y=A[r].y+1
if A[r].y>=aH then
A[r]=aM
end
end
for r,aU in af(G)do
G[r].y=G[r].y+1
if G[r].y>=aH then
G[r]=aM
end
end
aK=_(29)==1
if aK then
R=_(26)else
R=0
end
if R<.01 and R>-.01 then
D=D-D/5
else
D=aE((D+R/160),-.1,.1)end
if m>=50 then D=0 end
m=aE(m+(R/55*m/2.4)+D*m/2.4,.1,50)c=-atan(al.g,al.j)+pi
M,K=X.g,X.j
end
function onDraw()F,Q=d.getWidth(),d.getHeight()if F>32 then
if ap then
d.setMapColorOcean(0,0,0)d.setMapColorShallows(2,2,2)d.setMapColorLand(7,7,7)d.setMapColorGrass(8,10,8)d.setMapColorSand(6,6,4)d.setMapColorSnow(25,25,26)d.bm(3,3,3)d.bd(4,4,4)d.drawMap(M,K,m)end
b,a=S(M,K,m,F,Q,X.g,X.j)O=m/F
an=m/50
i=(aS/1000)/O
for f=0,2 do
ad=5+10*f
e(k,k,k,7-an*3)aL(b,a,ad/O)e(k,k,k,11-an*2)ab(b+ad/O-(5*(#tostring(ad))),a,ad)end
e(k,k,k,4-an*2)for f=1,8 do
l(b,a,b+sin(f*L/8)*120/O,a+cos(f*L/8)*120/O)end
e(80,k,0,38)l(b,a,b+sin(Y+c-o)*i,a+cos(Y+c-o)*i)l(b,a,b+sin(Y+c+o)*i,a+cos(Y+c+o)*i)l(b,a,b+sin(Z+c-o)*i,a+cos(Z+c-o)*i)l(b,a,b+sin(Z+c+o)*i,a+cos(Z+c+o)*i)l(b,a,b+sin(V+c-o)*i,a+cos(V+c-o)*i)l(b,a,b+sin(V+c+o)*i,a+cos(V+c+o)*i)e(0,k,0,8)aL(b,a,i)l(b,a,b+sin(-U+c)*i,a+cos(-U+c)*i)l(b,a,b+sin(U+c)*i,a+cos(U+c)*i)e(22,22,22)l(b,a,b+sin(-.97+c)*22,a+cos(-.97+c)*22)l(b,a,b+sin(.97+c)*22,a+cos(.97+c)*22)l(b,a,b+sin(c)*9,a+cos(c)*9)for r,v in ipairs(A)do
B,x=S(M,K,m,F,Q,v.C.g,v.C.j)u=v.C.q
if u<0 then
e(240,0,0)else
e(80,13,1)u=n.max(n.min(u/500,5),0)l(B-u,x-2,B+u+1,x-2)end
aP(B-1,x-1,2,2)end
if P(am)>0 then
B,x=S(M,K,m,F,Q,am.g,am.j)e(55,20,40,70)aG(b,a,B,x)e(46,0,25)p(B-2,x-2,1,5)p(B+2,x-2,1,5)p(B,x,1,1)end
e(0,40,k)for r,v in af(G)do
H,E=S(M,K,m,F,Q,v.C.g,v.C.j)u=v.C.q
u=n.max(n.min(u/500,5),0)l(H-u,E-2,H+u+1,E-2)p(H,E-1,1,1)p(H+1,E,1,1)p(H,E+1,1,1)p(H-1,E,1,1)if P(v.at)>0 then
ac,aa=S(M,K,m,F,Q,v.at.g,v.at.j)e(30,90,k,30)aG(H,E,ac,aa)e(40,40,110,30)p(ac-2,aa-2,1,5)p(ac+2,aa-2,1,5)p(ac,aa,1,1)end
end
if aK then
e(1,1,1,200)p(13,2,12,5)e(85,160,35)ab(13,2,"SOI")end
else
W=""
if au then
e(k,0,0)W="MSSLE"
elseif aw then
e(239,38,0)W="TRACK"
elseif aj then
e(k,135,0)W="WARN"
end
if au or aw or aj then
p(0,0,32,32)e(I,I,I)ab(4,12,W)end
if aB then
e(I,I,I)ab(6,2,"PING")end
end
end
