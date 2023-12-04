-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3272 (3639 with comment) chars

A=230
g=255
aq=pairs
aG=table
K=false
J=true
at=screen
ai=map.mapToScreen
m,b,aF,ar,c,b_,bg=math,input,output,property,at,J,K
_,aV,bc,aY=b.getNumber,aF.setNumber,b.getBool,aF.setBool
S,aM=ar.getNumber,ar.getBool
abs,cos,sin,floor,atan=m.abs,m.cos,m.sin,m.floor,m.atan
pi=m.pi
W=pi*2
c=at
Z,bd,F,aI,s,aC,ba,e=c.drawText,c.drawTextBox,c.drawLine,c.drawRect,c.drawRectF,c.drawCircle,c.drawClear,c.setColor
function aT(as,aA,aQ,aJ)I=aQ-as
C=aJ-aA
if abs(I)>=abs(C)then
U=abs(I)else
U=abs(C)end
I=I/U
C=C/U
a=as
d=aA
b=0
while(b<=U)do
s(a,d,1,1)a=a+I
d=d+C
b=b+1
end
end
function u(a,d,q)return{a=a or 0,d=d or 0,q=q or 0}end
function aR(f,y)return u(f.d*y.q-f.q*y.d,f.q*y.a-f.a*y.q,f.a*y.d-f.d*y.a)end
function aj(f)return m.sqrt(f.a*f.a+f.d*f.d+f.q*f.q)end
function aB(f,min,max)return m.max(min,m.min(f,max))end
function aw(a)return floor(a+.5)end
aL=aM("Mode")aO=S("R Max Rng")n=S("X FOV")*pi
aX=S("Swep Lim")*W+n
aH=S("Cull Time")ax={}r={}an=J
k,v=7,0
x={}for b=1,100 do
x[b]=K
end
aU={}function onTick()Q=u(_(1),_(3),_(2))D=-_(27)*W
T=D+pi
ap=_(30)>0
aS=ap~=aK and ap
aK=ap
if aS then
an=not an
end
w=_(31)w=w-1
aN=(w & 8)==0
aZ=(w & 4)==0
aW=(w & 2)==0
bf=(w & 1)==0
az=aN
aG.remove(x,1)aG.insert(x,az)j=0
for b=1,6 do
if x[b]then
j=j+1
end
end
if j>=2 then
ag=J
else
ag=K
end
j=0
for b=1,26 do
if x[b]then
j=j+1
end
end
if j>=2 then
ah=J
else
ah=K
end
j=0
for b=1,100 do
if x[b]then
j=j+1
end
end
if j>=2 then
ae=J
else
ae=K
end
aD,aE,av=_(4),_(5),_(6)ao,al,ak=cos(aD),cos(aE),cos(av)ay,ab,ad=sin(aD),sin(aE),sin(av)aP=u(al*ak,-ab,al*ad)am=u(ay*ad+ao*ab*ak,ao*al,-ay*ak+ao*ab*ad)bh=aR(aP,am)V=_(19)p=u(_(7),_(8),_(9))if aj(p)>0 then
r[V]={z=p,E=0}end
p=u(_(10),_(11),_(12))if aj(p)>0 then
r[V+1]={z=p,E=0}end
V=_(21)p=u(_(13),_(14),_(15))if aj(p)>0 then
ax[V]={z=p,E=0}end
for t,bb in aq(r)do
r[t].E=r[t].E+1
if r[t].E>=aH then
r[t]=nil
end
end
au=_(29)==1
if au then
G=_(26)else
G=0
end
if G<.01 and G>-.01 then
v=v-v/5
else
v=aB((v+G/160),-.1,.1)end
if k>=50 then v=0 end
k=aB(k+(G/55*k/2.4)+v*k/2.4,.1,50)o=-atan(am.a,am.d)+pi
R,P=Q.a,Q.d
end
function onDraw()L,ac=c.getWidth(),c.getHeight()if L>32 then
if an then
c.setMapColorOcean(0,0,0)c.setMapColorShallows(2,2,2)c.setMapColorLand(7,7,7)c.setMapColorGrass(8,10,8)c.setMapColorSand(6,6,4)c.setMapColorSnow(25,25,26)c.drawMap(R,P,k)end
h,i=ai(R,P,k,L,ac,Q.a,Q.d)H=k/L
af=k/50
l=(aO/1000)/H
for b=0,2 do
N=5+10*b
e(g,g,g,7-af*3)aC(h,i,N/H)e(g,g,g,11-af*2)Z(h+N/H-(5*(#tostring(N))),i,N)end
e(g,g,g,4-af*2)for b=1,8 do
F(h,i,h+sin(b*W/8)*120/H,i+cos(b*W/8)*120/H)end
e(80,g,0,38)F(h,i,h+sin(D+o-n)*l,i+cos(D+o-n)*l)F(h,i,h+sin(D+o+n)*l,i+cos(D+o+n)*l)F(h,i,h+sin(T+o-n)*l,i+cos(T+o-n)*l)F(h,i,h+sin(T+o+n)*l,i+cos(T+o+n)*l)if aL then
else
e(0,g,0,8)aC(h,i,l)end
for t,B in ipairs(r)do
X,aa=ai(R,P,k,L,ac,B.z.a,B.z.d)X,aa=aw(X),aw(aa)if be==t then
e(90,2,5)s(X-2,aa-3,5,1)e(99,20,3)else
e(80,13,1)end
aI(X-1,aa-1,2,2)end
e(0,40,g)for t,B in aq(ax)do
local O,Y=ai(R,P,k,L,ac,B.z.a,B.z.d)s(O,Y-1,1,1)s(O+1,Y,1,1)s(O,Y+1,1,1)s(O-1,Y,1,1)end
if au then
e(1,1,1,200)s(13,2,12,5)e(85,160,35)Z(13,2,"SOI")end
else
M=""
if ag then
e(g,0,0)M="MSSLE"
elseif ah then
e(239,38,0)M="TRACK"
elseif ae then
e(g,135,0)M="WARN"
end
if ag or ah or ae then
s(0,0,32,32)e(A,A,A)Z(4,12,M)end
if az then
e(A,A,A)Z(6,2,"PING")end
end
end
