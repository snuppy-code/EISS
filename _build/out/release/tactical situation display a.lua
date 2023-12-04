-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3531 (3865 with comment) chars

F=230
h=255
aD=nil
as=pairs
aI=table
P=false
O=true
aH=screen
U=map.mapToScreen
g,d,aA,au,e,aW,aY=math,input,output,property,aH,O,P
_,aX,bc,b_=d.getNumber,aA.setNumber,d.getBool,aA.setBool
ag,aU=au.getNumber,au.getBool
abs,cos,sin,floor,atan=g.abs,g.cos,g.sin,g.floor,g.atan
pi=g.pi
ae=pi*2
e=aH
W,ba,B,aS,r,aw,be,f=e.drawText,e.drawTextBox,e.drawLine,e.drawRect,e.drawRectF,e.drawCircle,e.drawClear,e.setColor
function bf(aG,aC,aK,aN)Q=aK-aG
N=aN-aC
if abs(Q)>=abs(N)then
Y=abs(Q)else
Y=abs(N)end
Q=Q/Y
N=N/Y
a=aG
b=aC
d=0
while(d<=Y)do
r(a,b,1,1)a=a+Q
b=b+N
d=d+1
end
end
function y(a,b,k)return{a=a or 0,b=b or 0,k=k or 0}end
function aT(c,q)return y(c.b*q.k-c.k*q.b,c.k*q.a-c.a*q.k,c.a*q.b-c.b*q.a)end
function ad(c)return g.sqrt(c.a*c.a+c.b*c.b+c.k*c.k)end
function bd(c,q)return g.sqrt((c.a-q.a)^2+(c.b-q.b)^2+(c.k-q.k)^2)end
function az(c,min,max)return g.max(min,g.min(c,max))end
function Z(a)return floor(a+.5)end
aR=aU("Mode")aQ=ag("R Max Rng")u=ag("X FOV")*pi
bb=ag("Swep Lim")*ae+u
aE=50
C={}v={}aq=O
l,D=7,0
J={}for d=1,100 do
J[d]=P
end
aZ={}function onTick()T=y(_(1),_(3),_(2))K=-_(27)*ae
ac=K+pi
ap=_(30)>0
aL=ap~=aM and ap
aM=ap
if aL then
aq=not aq
end
aB=_(31)==1
aI.remove(J,1)aI.insert(J,aB)o=0
for d=1,6 do
if J[d]then
o=o+1
end
end
if o>=2 then
ao=O
else
ao=P
end
o=0
for d=1,26 do
if J[d]then
o=o+1
end
end
if o>=2 then
an=O
else
an=P
end
o=0
for d=1,100 do
if J[d]then
o=o+1
end
end
if o>=2 then
am=O
else
am=P
end
ah=y(_(23),_(24),_(25))ay,ax,aF=_(4),_(5),_(6)af,al,at=cos(ay),cos(ax),cos(aF)aJ,ak,aj=sin(ay),sin(ax),sin(aF)aO=y(al*at,-ak,al*aj)ai=y(aJ*aj+af*ak*at,af*al,-aJ*at+af*ak*aj)aV=aT(aO,ai)V=_(19)x=y(_(7),_(8),_(9))if ad(x)>0 then
v[V]={z=x,A=0}end
x=y(_(10),_(11),_(12))if ad(x)>0 then
v[V+1]={z=x,A=0}end
V=_(21)x=y(_(13),_(14),_(15))if ad(x)>0 then
C[V]={z=x,A=0}end
for m,aP in as(v)do
v[m].A=v[m].A+1
if v[m].A>=aE then
v[m]=aD
end
end
for m,aP in as(C)do
C[m].A=C[m].A+1
if C[m].A>=aE then
C[m]=aD
end
end
av=_(29)==1
if av then
S=_(26)else
S=0
end
if S<.01 and S>-.01 then
D=D-D/5
else
D=az((D+S/160),-.1,.1)end
if l>=50 then D=0 end
l=az(l+(S/55*l/2.4)+D*l/2.4,.1,50)w=-atan(ai.a,ai.b)+pi
M,L=T.a,T.b
end
function onDraw()G,aa=e.getWidth(),e.getHeight()if G>32 then
if aq then
e.setMapColorOcean(0,0,0)e.setMapColorShallows(2,2,2)e.setMapColorLand(7,7,7)e.setMapColorGrass(8,10,8)e.setMapColorSand(6,6,4)e.setMapColorSnow(25,25,26)e.drawMap(M,L,l)end
j,i=U(M,L,l,G,aa,T.a,T.b)R=l/G
ar=l/50
t=(aQ/1000)/R
for d=0,2 do
ab=5+10*d
f(h,h,h,7-ar*3)aw(j,i,ab/R)f(h,h,h,11-ar*2)W(j+ab/R-(5*(#tostring(ab))),i,ab)end
f(h,h,h,4-ar*2)for d=1,8 do
B(j,i,j+sin(d*ae/8)*120/R,i+cos(d*ae/8)*120/R)end
f(80,h,0,38)B(j,i,j+sin(K+w-u)*t,i+cos(K+w-u)*t)B(j,i,j+sin(K+w+u)*t,i+cos(K+w+u)*t)B(j,i,j+sin(ac+w-u)*t,i+cos(ac+w-u)*t)B(j,i,j+sin(ac+w+u)*t,i+cos(ac+w+u)*t)if aR then
else
f(0,h,0,8)aw(j,i,t)end
for m,E in ipairs(v)do
n,p=U(M,L,l,G,aa,E.z.a,E.z.b)n,p=Z(n),Z(p)f(80,13,1)s=E.z.k
s=g.max(g.min(s/500,5),0)B(n-s,p-2,n+s+1,p-2)aS(n-1,p-1,2,2)end
if ad(ah)>0 then
n,p=U(M,L,l,G,aa,ah.a,ah.b)n,p=Z(n),Z(p)f(46,0,25)r(n-2,p-2,1,5)r(n+2,p-2,1,5)r(n,p,1,1)end
f(0,40,h)for m,E in as(C)do
local H,I=U(M,L,l,G,aa,E.z.a,E.z.b)s=E.z.k
s=g.max(g.min(s/500,5),0)B(H-s,I-2,H+s+1,I-2)r(H,I-1,1,1)r(H+1,I,1,1)r(H,I+1,1,1)r(H-1,I,1,1)end
if av then
f(1,1,1,200)r(13,2,12,5)f(85,160,35)W(13,2,"SOI")end
else
X=""
if ao then
f(h,0,0)X="MSSLE"
elseif an then
f(239,38,0)X="TRACK"
elseif am then
f(h,135,0)X="WARN"
end
if ao or an or am then
r(0,0,32,32)f(F,F,F)W(4,12,X)end
if aB then
f(F,F,F)W(6,2,"PING")end
end
end
