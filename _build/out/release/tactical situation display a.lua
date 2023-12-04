-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3351 (3718 with comment) chars

y=230
g=255
aB=nil
ao=pairs
aA=table
K=false
E=true
aI=screen
ac=map.mapToScreen
m,a,av,aw,c,bc,bi=math,input,output,property,aI,E,K
_,b_,bb,bd=a.getNumber,av.setNumber,a.getBool,av.setBool
U,aR=aw.getNumber,aw.getBool
abs,cos,sin,floor,atan=m.abs,m.cos,m.sin,m.floor,m.atan
pi=m.pi
X=pi*2
c=aI
V,aY,F,aT,r,au,aX,e=c.drawText,c.drawTextBox,c.drawLine,c.drawRect,c.drawRectF,c.drawCircle,c.drawClear,c.setColor
function aW(aH,aF,aK,aN)I=aK-aH
L=aN-aF
if abs(I)>=abs(L)then
S=abs(I)else
S=abs(L)end
I=I/S
L=L/S
b=aH
d=aF
a=0
while(a<=S)do
r(b,d,1,1)b=b+I
d=d+L
a=a+1
end
end
function w(b,d,s)return{b=b or 0,d=d or 0,s=s or 0}end
function aS(f,A)return w(f.d*A.s-f.s*A.d,f.s*A.b-f.b*A.s,f.b*A.d-f.d*A.b)end
function aq(f)return m.sqrt(f.b*f.b+f.d*f.d+f.s*f.s)end
function aD(f,min,max)return m.max(min,m.min(f,max))end
function aE(b)return floor(b+.5)end
aU=aR("Mode")aO=U("R Max Rng")n=U("X FOV")*pi
aV=U("Swep Lim")*X+n
aC=U("Cull Time")x={}u={}ap=E
l,v=7,0
z={}for a=1,100 do
z[a]=K
end
be={}function onTick()N=w(_(1),_(3),_(2))J=-_(27)*X
Q=J+pi
ai=_(30)>0
aP=ai~=aM and ai
aM=ai
if aP then
ap=not ap
end
B=_(31)B=B-1
aJ=(B & 8)==0
ba=(B & 4)==0
aZ=(B & 2)==0
bh=(B & 1)==0
at=aJ
aA.remove(z,1)aA.insert(z,at)k=0
for a=1,6 do
if z[a]then
k=k+1
end
end
if k>=2 then
ar=E
else
ar=K
end
k=0
for a=1,26 do
if z[a]then
k=k+1
end
end
if k>=2 then
an=E
else
an=K
end
k=0
for a=1,100 do
if z[a]then
k=k+1
end
end
if k>=2 then
af=E
else
af=K
end
ay,aG,ax=_(4),_(5),_(6)ae,ah,aj=cos(ay),cos(aG),cos(ax)as,ag,ad=sin(ay),sin(aG),sin(ax)aL=w(ah*aj,-ag,ah*ad)ak=w(as*ad+ae*ag*aj,ae*ah,-as*aj+ae*ag*ad)bf=aS(aL,ak)Y=_(19)t=w(_(7),_(8),_(9))if aq(t)>0 then
u[Y]={C=t,p=0}end
t=w(_(10),_(11),_(12))if aq(t)>0 then
u[Y+1]={C=t,p=0}end
Y=_(21)t=w(_(13),_(14),_(15))if aq(t)>0 then
x[Y]={C=t,p=0}end
for j,aQ in ao(u)do
u[j].p=u[j].p+1
if u[j].p>=aC then
u[j]=aB
end
end
for j,aQ in ao(x)do
x[j].p=x[j].p+1
if x[j].p>=aC then
x[j]=aB
end
end
az=_(29)==1
if az then
H=_(26)else
H=0
end
if H<.01 and H>-.01 then
v=v-v/5
else
v=aD((v+H/160),-.1,.1)end
if l>=50 then v=0 end
l=aD(l+(H/55*l/2.4)+v*l/2.4,.1,50)q=-atan(ak.b,ak.d)+pi
O,Z=N.b,N.d
end
function onDraw()G,al=c.getWidth(),c.getHeight()if G>32 then
if ap then
c.setMapColorOcean(0,0,0)c.setMapColorShallows(2,2,2)c.setMapColorLand(7,7,7)c.setMapColorGrass(8,10,8)c.setMapColorSand(6,6,4)c.setMapColorSnow(25,25,26)c.drawMap(O,Z,l)end
i,h=ac(O,Z,l,G,al,N.b,N.d)D=l/G
am=l/50
o=(aO/1000)/D
for a=0,2 do
ab=5+10*a
e(g,g,g,7-am*3)au(i,h,ab/D)e(g,g,g,11-am*2)V(i+ab/D-(5*(#tostring(ab))),h,ab)end
e(g,g,g,4-am*2)for a=1,8 do
F(i,h,i+sin(a*X/8)*120/D,h+cos(a*X/8)*120/D)end
e(80,g,0,38)F(i,h,i+sin(J+q-n)*o,h+cos(J+q-n)*o)F(i,h,i+sin(J+q+n)*o,h+cos(J+q+n)*o)F(i,h,i+sin(Q+q-n)*o,h+cos(Q+q-n)*o)F(i,h,i+sin(Q+q+n)*o,h+cos(Q+q+n)*o)if aU then
else
e(0,g,0,8)au(i,h,o)end
for j,M in ipairs(u)do
P,T=ac(O,Z,l,G,al,M.C.b,M.C.d)P,T=aE(P),aE(T)if bg==j then
e(90,2,5)r(P-2,T-3,5,1)e(99,20,3)else
e(80,13,1)end
aT(P-1,T-1,2,2)end
e(0,40,g)for j,M in ao(x)do
local W,aa=ac(O,Z,l,G,al,M.C.b,M.C.d)r(W,aa-1,1,1)r(W+1,aa,1,1)r(W,aa+1,1,1)r(W-1,aa,1,1)end
if az then
e(1,1,1,200)r(13,2,12,5)e(85,160,35)V(13,2,"SOI")end
else
R=""
if ar then
e(g,0,0)R="MSSLE"
elseif an then
e(239,38,0)R="TRACK"
elseif af then
e(g,135,0)R="WARN"
end
if ar or an or af then
r(0,0,32,32)e(y,y,y)V(4,12,R)end
if at then
e(y,y,y)V(6,2,"PING")end
end
end
