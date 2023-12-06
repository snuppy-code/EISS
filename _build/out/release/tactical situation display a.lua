-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3630 (3964 with comment) chars

G=230
k=255
az=nil
al=pairs
ax=table
N=false
Q=true
aG=screen
ae=map.mapToScreen
l,e,aC,av,g,bc,aY=math,input,output,property,aG,Q,N
_,aW,be,bd=e.getNumber,aC.setNumber,e.getBool,aC.setBool
aZ,ba=av.getNumber,av.getBool
abs,cos,sin,floor,atan=l.abs,l.cos,l.sin,l.floor,l.atan
pi=l.pi
H=pi*2
g=aG
T,aX,s,aM,v,aw,bb,j=g.drawText,g.drawTextBox,g.drawLine,g.drawRect,g.drawRectF,g.drawCircle,g.drawClear,g.setColor
function b_(aF,aD,aO,aT)S=aO-aF
R=aT-aD
if abs(S)>=abs(R)then
af=abs(S)else
af=abs(R)end
S=S/af
R=R/af
a=aF
d=aD
e=0
while(e<=af)do
v(a,d,1,1)a=a+S
d=d+R
e=e+1
end
end
function A(a,d,n)return{a=a or 0,d=d or 0,n=n or 0}end
function aR(f,u)return A(f.d*u.n-f.n*u.d,f.n*u.a-f.a*u.n,f.a*u.d-f.d*u.a)end
function ac(f)return l.sqrt(f.a*f.a+f.d*f.d+f.n*f.n)end
function aV(f,u)return l.sqrt((f.a-u.a)^2+(f.d-u.d)^2+(f.n-u.n)^2)end
function aH(f,min,max)return l.max(min,l.min(f,max))end
function U(a)return floor(a+.5)end
aS=13333
m=.03*pi
V=.09*H+m
aK=10
E={}B={}ak=Q
o,D=7,0
K={}for e=1,100 do
K[e]=N
end
function onTick()Y=A(_(1),_(3),_(2))Z=-_(27)*H
X=-_(20)*H
W=-_(32)*H+pi
ah=_(30)>0
aP=ah~=aQ and ah
aQ=ah
if aP then
ak=not ak
end
aI=_(31)==1
ax.remove(K,1)ax.insert(K,aI)r=0
for e=1,6 do
if K[e]then
r=r+1
end
end
if r>=2 then
ar=Q
else
ar=N
end
r=0
for e=1,26 do
if K[e]then
r=r+1
end
end
if r>=2 then
an=Q
else
an=N
end
r=0
for e=1,100 do
if K[e]then
r=r+1
end
end
if r>=2 then
aj=Q
else
aj=N
end
ao=A(_(23),_(24),_(25))aB,ay,aA=_(4),_(5),_(6)at,as,au=cos(aB),cos(ay),cos(aA)aE,am,ap=sin(aB),sin(ay),sin(aA)aN=A(as*au,-am,as*ap)aq=A(aE*ap+at*am*au,at*as,-aE*au+at*am*ap)aU=aR(aN,aq)aa=_(19)z=A(_(7),_(8),_(9))if ac(z)>0 then
B[aa]={y=z,x=0}end
z=A(_(10),_(11),_(12))if ac(z)>0 then
B[aa+1]={y=z,x=0}end
aa=_(21)z=A(_(13),_(14),_(15))if ac(z)>0 then
E[aa]={y=z,x=0}end
for t,aL in al(B)do
B[t].x=B[t].x+1
if B[t].x>=aK then
B[t]=az
end
end
for t,aL in al(E)do
E[t].x=E[t].x+1
if E[t].x>=aK then
E[t]=az
end
end
aJ=_(29)==1
if aJ then
P=_(26)else
P=0
end
if P<.01 and P>-.01 then
D=D-D/5
else
D=aH((D+P/160),-.1,.1)end
if o>=50 then D=0 end
o=aH(o+(P/55*o/2.4)+D*o/2.4,.1,50)i=-atan(aq.a,aq.d)+pi
M,L=Y.a,Y.d
end
function onDraw()F,ag=g.getWidth(),g.getHeight()if F>32 then
if ak then
g.setMapColorOcean(0,0,0)g.setMapColorShallows(2,2,2)g.setMapColorLand(7,7,7)g.setMapColorGrass(8,10,8)g.setMapColorSand(6,6,4)g.setMapColorSnow(25,25,26)g.drawMap(M,L,o)end
b,c=ae(M,L,o,F,ag,Y.a,Y.d)O=o/F
ai=o/50
h=(aS/1000)/O
for e=0,2 do
ab=5+10*e
j(k,k,k,7-ai*3)aw(b,c,ab/O)j(k,k,k,11-ai*2)T(b+ab/O-(5*(#tostring(ab))),c,ab)end
j(k,k,k,4-ai*2)for e=1,8 do
s(b,c,b+sin(e*H/8)*120/O,c+cos(e*H/8)*120/O)end
j(80,k,0,38)s(b,c,b+sin(Z+i-m)*h,c+cos(Z+i-m)*h)s(b,c,b+sin(Z+i+m)*h,c+cos(Z+i+m)*h)s(b,c,b+sin(X+i-m)*h,c+cos(X+i-m)*h)s(b,c,b+sin(X+i+m)*h,c+cos(X+i+m)*h)s(b,c,b+sin(W+i-m)*h,c+cos(W+i-m)*h)s(b,c,b+sin(W+i+m)*h,c+cos(W+i+m)*h)j(0,k,0,8)aw(b,c,h)s(b,c,b+sin(-V+i)*h,c+cos(-V+i)*h)s(b,c,b+sin(V+i)*h,c+cos(V+i)*h)for t,C in ipairs(B)do
p,q=ae(M,L,o,F,ag,C.y.a,C.y.d)p,q=U(p),U(q)j(80,13,1)w=C.y.n
w=l.max(l.min(w/500,5),0)s(p-w,q-2,p+w+1,q-2)aM(p-1,q-1,2,2)end
if ac(ao)>0 then
p,q=ae(M,L,o,F,ag,ao.a,ao.d)p,q=U(p),U(q)j(46,0,25)v(p-2,q-2,1,5)v(p+2,q-2,1,5)v(p,q,1,1)end
j(0,40,k)for t,C in al(E)do
local J,I=ae(M,L,o,F,ag,C.y.a,C.y.d)w=C.y.n
w=l.max(l.min(w/500,5),0)s(J-w,I-2,J+w+1,I-2)v(J,I-1,1,1)v(J+1,I,1,1)v(J,I+1,1,1)v(J-1,I,1,1)end
if aJ then
j(1,1,1,200)v(13,2,12,5)j(85,160,35)T(13,2,"SOI")end
else
ad=""
if ar then
j(k,0,0)ad="MSSLE"
elseif an then
j(239,38,0)ad="TRACK"
elseif aj then
j(k,135,0)ad="WARN"
end
if ar or an or aj then
v(0,0,32,32)j(G,G,G)T(4,12,ad)end
if aI then
j(G,G,G)T(6,2,"PING")end
end
end
