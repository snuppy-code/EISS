-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>


M=230
k=255
aI=nil
av=pairs
aL=table
P=false
N=true
aG=screen
O=map.mapToScreen
n,d,aJ,aH,e,bn,bm=math,input,output,property,aG,N,P
_,bk,bd,bg=d.getNumber,aJ.setNumber,d.getBool,aJ.setBool
bh,be=aH.getNumber,aH.getBool
abs,cos,sin,floor,atan=n.abs,n.cos,n.sin,n.floor,n.atan
pi=n.pi
L=pi*2
e=aG
Y,bf,l,b_,q,aC,bj,h=e.drawText,e.drawTextBox,e.drawLine,e.drawRect,e.drawRectF,e.drawCircle,e.drawClear,e.setColor
function v(g,i,p)return{g=g or 0,i=i or 0,p=p or 0}end
function aV(f,u)return v(f.i*u.p-f.p*u.i,f.p*u.g-f.g*u.p,f.g*u.i-f.i*u.g)end
function S(f)return n.sqrt(f.g*f.g+f.i*f.i+f.p*f.p)end
function bb(f,u)return n.sqrt((f.g-u.g)^2+(f.i-u.i)^2+(f.p-u.p)^2)end
function aM(f,min,max)return n.max(min,n.min(f,max))end
function ba(g)return floor(g+.5)end
function aB(ai,aw,aP,aS)af=-.9*m+50.09
ah=N
aY=aP-ai
aT=aS-aw
aA=aY/af
az=aT/af
for d=1,af do
if ah then
l(ai+aA*(d-1),aw+az*(d-1),ai+aA*d,aw+az*d)end
ah=not ah
end
end
aW=13333
o=.03*pi
W=.09*L+o
ay=40
E={}y={}ak=N
m,D=7,0
I={}for d=1,100 do
I[d]=P
end
function onTick()ae=v(_(1),_(3),_(2))ad=-_(27)*L
ac=-_(20)*L
aa=-_(32)*L+pi
al=_(30)>0
aZ=al~=aU and al
aU=al
if aZ then
ak=not ak
end
aF=_(31)==1
aL.remove(I,1)aL.insert(I,aF)s=0
for d=1,6 do
if I[d]then
s=s+1
end
end
if s>=2 then
au=N
else
au=P
end
s=0
for d=1,26 do
if I[d]then
s=s+1
end
end
if s>=2 then
aq=N
else
aq=P
end
s=0
for d=1,100 do
if I[d]then
s=s+1
end
end
if s>=2 then
am=N
else
am=P
end
ag=v(_(23),_(24),_(25))aN,aD,aE=_(4),_(5),_(6)ar,ap,ax=cos(aN),cos(aD),cos(aE)aK,an,aj=sin(aN),sin(aD),sin(aE)aX=v(ap*ax,-an,ap*aj)at=v(aK*aj+ar*an*ax,ar*ap,-aK*ax+ar*an*aj)bi=aV(aX,at)U=_(19)C=v(_(7),_(8),_(9))if S(C)>0 then
y[U]={A=C,B=0}end
C=v(_(10),_(11),_(12))if S(C)>0 then
y[U+1]={A=C,B=0}end
U=_(21)C=v(_(13),_(14),_(15))aR=v(_(16),_(17),_(18))if S(C)>0 then
E[U]={A=C,as=aR,B=0}end
for r,aQ in av(y)do
y[r].B=y[r].B+1
if y[r].B>=ay then
y[r]=aI
end
end
for r,aQ in av(E)do
E[r].B=E[r].B+1
if E[r].B>=ay then
E[r]=aI
end
end
aO=_(29)==1
if aO then
T=_(26)else
T=0
end
if T<.01 and T>-.01 then
D=D-D/5
else
D=aM((D+T/160),-.1,.1)end
if m>=50 then D=0 end
m=aM(m+(T/55*m/2.4)+D*m/2.4,.1,50)c=-atan(at.g,at.i)+pi
J,K=ae.g,ae.i
end
function onDraw()F,R=e.getWidth(),e.getHeight()if F>32 then
if ak then
e.setMapColorOcean(0,0,0)e.setMapColorShallows(2,2,2)e.setMapColorLand(7,7,7)e.setMapColorGrass(8,10,8)e.setMapColorSand(6,6,4)e.setMapColorSnow(25,25,26)e.bc(3,3,3)e.bl(4,4,4)e.drawMap(J,K,m)end
a,b=O(J,K,m,F,R,ae.g,ae.i)Q=m/F
ao=m/50
j=(aW/1000)/Q
for d=0,2 do
ab=5+10*d
h(k,k,k,7-ao*3)aC(a,b,ab/Q)h(k,k,k,11-ao*2)Y(a+ab/Q-(5*(#tostring(ab))),b,ab)end
h(k,k,k,4-ao*2)for d=1,8 do
l(a,b,a+sin(d*L/8)*120/Q,b+cos(d*L/8)*120/Q)end
h(80,k,0,38)l(a,b,a+sin(ad+c-o)*j,b+cos(ad+c-o)*j)l(a,b,a+sin(ad+c+o)*j,b+cos(ad+c+o)*j)l(a,b,a+sin(ac+c-o)*j,b+cos(ac+c-o)*j)l(a,b,a+sin(ac+c+o)*j,b+cos(ac+c+o)*j)l(a,b,a+sin(aa+c-o)*j,b+cos(aa+c-o)*j)l(a,b,a+sin(aa+c+o)*j,b+cos(aa+c+o)*j)h(0,k,0,8)aC(a,b,j)l(a,b,a+sin(-W+c)*j,b+cos(-W+c)*j)l(a,b,a+sin(W+c)*j,b+cos(W+c)*j)h(22,22,22)l(a,b,a+sin(-.97+c)*22,b+cos(-.97+c)*22)l(a,b,a+sin(.97+c)*22,b+cos(.97+c)*22)l(a,b,a+sin(c)*9,b+cos(c)*9)for r,t in ipairs(y)do
z,x=O(J,K,m,F,R,t.A.g,t.A.i)h(80,13,1)w=t.A.p
w=n.max(n.min(w/500,5),0)l(z-w,x-2,z+w+1,x-2)b_(z-1,x-1,2,2)end
if S(ag)>0 then
z,x=O(J,K,m,F,R,ag.g,ag.i)h(55,20,40,70)aB(a,b,z,x)h(46,0,25)q(z-2,x-2,1,5)q(z+2,x-2,1,5)q(z,x,1,1)end
h(0,40,k)for r,t in av(E)do
H,G=O(J,K,m,F,R,t.A.g,t.A.i)w=t.A.p
w=n.max(n.min(w/500,5),0)l(H-w,G-2,H+w+1,G-2)q(H,G-1,1,1)q(H+1,G,1,1)q(H,G+1,1,1)q(H-1,G,1,1)if S(t.as)>0 then
Z,V=O(J,K,m,F,R,t.as.g,t.as.i)h(30,90,k,30)aB(H,G,Z,V)h(40,40,110,30)q(Z-2,V-2,1,5)q(Z+2,V-2,1,5)q(Z,V,1,1)end
end
if aO then
h(1,1,1,200)q(13,2,12,5)h(85,160,35)Y(13,2,"SOI")end
else
X=""
if au then
h(k,0,0)X="MSSLE"
elseif aq then
h(239,38,0)X="TRACK"
elseif am then
h(k,135,0)X="WARN"
end
if au or aq or am then
q(0,0,32,32)h(M,M,M)Y(4,12,X)end
if aF then
h(M,M,M)Y(6,2,"PING")end
end
end
