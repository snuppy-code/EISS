-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3369 (3703 with comment) chars
bj="upd "

C=230
g=255
aA=pairs
az=table
G=false
E=true
aG=screen
an=map.mapToScreen
W=debug.log
p,a,aF,aD,c,bc,bb=math,input,output,property,aG,E,G
_,b_,bg,aU=a.getNumber,aF.setNumber,a.getBool,aF.setBool
S,aL=aD.getNumber,aD.getBool
abs,cos,sin,floor,atan=p.abs,p.cos,p.sin,p.floor,p.atan
pi=p.pi
V=pi*2
c=aG
Z,bi,H,aR,s,ax,be,e=c.drawText,c.drawTextBox,c.drawLine,c.drawRect,c.drawRectF,c.drawCircle,c.drawClear,c.setColor
function bf(at,aw,aT,aN)L=aT-at
D=aN-aw
if abs(L)>=abs(D)then
O=abs(L)else
O=abs(D)end
L=L/O
D=D/O
b=at
d=aw
a=0
while(a<=O)do
s(b,d,1,1)b=b+L
d=d+D
a=a+1
end
end
function u(b,d,q)return{b=b or 0,d=d or 0,q=q or 0}end
function aM(f,A)return u(f.d*A.q-f.q*A.d,f.q*A.b-f.b*A.q,f.b*A.d-f.d*A.b)end
function ad(f)return p.sqrt(f.b*f.b+f.d*f.d+f.q*f.q)end
function aE(f,min,max)return p.max(min,p.min(f,max))end
function au(b)return floor(b+.5)end
aI=aL("Mode")aS=S("R Max Rng")n=S("X FOV")*pi
bd=S("Swep Lim")*V+n
aO=S("Cull Time")aC={}o={}am=E
k,v=7,0
B={}for a=1,100 do
B[a]=G
end
ba={}function onTick()X=u(_(1),_(3),_(2))J=-_(27)*V
P=J+pi
ap=_(30)>0
aK=ap~=aJ and ap
aJ=ap
if aK then
am=not am
end
w=_(31)w=w-1
aQ=(w & 8)==0
aV=(w & 4)==0
aZ=(w & 2)==0
aX=(w & 1)==0
ay=aQ
az.remove(B,1)az.insert(B,ay)j=0
for a=1,6 do
if B[a]then
j=j+1
end
end
if j>=2 then
af=E
else
af=G
end
j=0
for a=1,26 do
if B[a]then
j=j+1
end
end
if j>=2 then
ao=E
else
ao=G
end
j=0
for a=1,100 do
if B[a]then
j=j+1
end
end
if j>=2 then
al=E
else
al=G
end
aH,aB,ar=_(4),_(5),_(6)ai,ah,ac=cos(aH),cos(aB),cos(ar)av,ag,ae=sin(aH),sin(aB),sin(ar)aP=u(ah*ac,-ag,ah*ae)aq=u(av*ae+ai*ag*ac,ai*ah,-av*ac+ai*ag*ae)bh=aM(aP,aq)x=_(19)t=u(_(7),_(8),_(9))if ad(t)>0 then
W(bj..x)o[x]={y=t,z=0}end
t=u(_(10),_(11),_(12))if ad(t)>0 then
W(bj..(x+1))o[x+1]={y=t,z=0}end
x=_(21)t=u(_(13),_(14),_(15))if ad(t)>0 then
aC[x]={y=t,z=0}end
for l,aW in aA(o)do
o[l].z=o[l].z+1
W(l.." is "..o[l].z)if o[l].z>=aO then
o[l]=nil
W("tgt "..l.." culled in TSD")end
end
as=_(29)==1
if as then
I=_(26)else
I=0
end
if I<.01 and I>-.01 then
v=v-v/5
else
v=aE((v+I/160),-.1,.1)end
if k>=50 then v=0 end
k=aE(k+(I/55*k/2.4)+v*k/2.4,.1,50)r=-atan(aq.b,aq.d)+pi
Q,ab=X.b,X.d
end
function onDraw()M,aj=c.getWidth(),c.getHeight()if M>32 then
if am then
c.setMapColorOcean(0,0,0)c.setMapColorShallows(2,2,2)c.setMapColorLand(7,7,7)c.setMapColorGrass(8,10,8)c.setMapColorSand(6,6,4)c.setMapColorSnow(25,25,26)c.drawMap(Q,ab,k)end
i,h=an(Q,ab,k,M,aj,X.b,X.d)F=k/M
ak=k/50
m=(aS/1000)/F
for a=0,2 do
U=5+10*a
e(g,g,g,7-ak*3)ax(i,h,U/F)e(g,g,g,11-ak*2)Z(i+U/F-(5*(#tostring(U))),h,U)end
e(g,g,g,4-ak*2)for a=1,8 do
H(i,h,i+sin(a*V/8)*120/F,h+cos(a*V/8)*120/F)end
e(80,g,0,38)H(i,h,i+sin(J+r-n)*m,h+cos(J+r-n)*m)H(i,h,i+sin(J+r+n)*m,h+cos(J+r+n)*m)H(i,h,i+sin(P+r-n)*m,h+cos(P+r-n)*m)H(i,h,i+sin(P+r+n)*m,h+cos(P+r+n)*m)if aI then
else
e(0,g,0,8)ax(i,h,m)end
for l,K in ipairs(o)do
Y,aa=an(Q,ab,k,M,aj,K.y.b,K.y.d)Y,aa=au(Y),au(aa)if aY==l then
e(90,2,5)s(Y-2,aa-3,5,1)e(99,20,3)else
e(80,13,1)end
aR(Y-1,aa-1,2,2)end
e(0,40,g)for l,K in aA(aC)do
local R,N=an(Q,ab,k,M,aj,K.y.b,K.y.d)s(R,N-1,1,1)s(R+1,N,1,1)s(R,N+1,1,1)s(R-1,N,1,1)end
if as then
e(1,1,1,200)s(13,2,12,5)e(85,160,35)Z(13,2,"SOI")end
else
T=""
if af then
e(g,0,0)T="MSSLE"
elseif ao then
e(239,38,0)T="TRACK"
elseif al then
e(g,135,0)T="WARN"
end
if af or ao or al then
s(0,0,32,32)e(C,C,C)Z(4,12,T)end
if ay then
e(C,C,C)Z(6,2,"PING")end
end
end
