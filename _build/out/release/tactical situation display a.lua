-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3409 (3776 with comment) chars

C=230
g=255
aD=nil
ao=pairs
ay=table
J=false
M=true
aI=screen
al=map.mapToScreen
m,a,aH,aC,c,be,ba=math,input,output,property,aI,M,J
_,aZ,bd,aY=a.getNumber,aH.setNumber,a.getBool,aH.setBool
Q,aK=aC.getNumber,aC.getBool
abs,cos,sin,floor,atan=m.abs,m.cos,m.sin,m.floor,m.atan
pi=m.pi
Z=pi*2
c=aI
S,bf,z,aP,u,aA,aX,e=c.drawText,c.drawTextBox,c.drawLine,c.drawRect,c.drawRectF,c.drawCircle,c.drawClear,c.setColor
function bc(aE,az,aR,aL)H=aR-aE
O=aL-az
if abs(H)>=abs(O)then
aa=abs(H)else
aa=abs(O)end
H=H/aa
O=O/aa
b=aE
d=az
a=0
while(a<=aa)do
u(b,d,1,1)b=b+H
d=d+O
a=a+1
end
end
function v(b,d,n)return{b=b or 0,d=d or 0,n=n or 0}end
function aT(f,B)return v(f.d*B.n-f.n*B.d,f.n*B.b-f.b*B.n,f.b*B.d-f.d*B.b)end
function af(f)return m.sqrt(f.b*f.b+f.d*f.d+f.n*f.n)end
function aJ(f,min,max)return m.max(min,m.min(f,max))end
function aw(b)return floor(b+.5)end
aS=aK("Mode")aV=Q("R Max Rng")o=Q("X FOV")*pi
bj=Q("Swep Lim")*Z+o
av=Q("Cull Time")w={}s={}ag=M
l,x=7,0
F={}for a=1,100 do
F[a]=J
end
bb={}function onTick()R=v(_(1),_(3),_(2))I=-_(27)*Z
P=I+pi
ak=_(30)>0
aU=ak~=aO and ak
aO=ak
if aU then
ag=not ag
end
G=_(31)G=G-1
aN=(G & 8)==0
b_=(G & 4)==0
bg=(G & 2)==0
bi=(G & 1)==0
aF=aN
ay.remove(F,1)ay.insert(F,aF)k=0
for a=1,6 do
if F[a]then
k=k+1
end
end
if k>=2 then
am=M
else
am=J
end
k=0
for a=1,26 do
if F[a]then
k=k+1
end
end
if k>=2 then
as=M
else
as=J
end
k=0
for a=1,100 do
if F[a]then
k=k+1
end
end
if k>=2 then
aq=M
else
aq=J
end
ax,au,at=_(4),_(5),_(6)ah,ae,an=cos(ax),cos(au),cos(at)aG,ar,ai=sin(ax),sin(au),sin(at)aQ=v(ae*an,-ar,ae*ai)ap=v(aG*ai+ah*ar*an,ah*ae,-aG*an+ah*ar*ai)aW=aT(aQ,ap)ab=_(19)q=v(_(7),_(8),_(9))if af(q)>0 then
s[ab]={y=q,r=0}end
q=v(_(10),_(11),_(12))if af(q)>0 then
s[ab+1]={y=q,r=0}end
ab=_(21)q=v(_(13),_(14),_(15))if af(q)>0 then
w[ab]={y=q,r=0}end
for j,aM in ao(s)do
s[j].r=s[j].r+1
if s[j].r>=av then
s[j]=aD
end
end
for j,aM in ao(w)do
w[j].r=w[j].r+1
if w[j].r>=av then
w[j]=aD
end
end
aB=_(29)==1
if aB then
K=_(26)else
K=0
end
if K<.01 and K>-.01 then
x=x-x/5
else
x=aJ((x+K/160),-.1,.1)end
if l>=50 then x=0 end
l=aJ(l+(K/55*l/2.4)+x*l/2.4,.1,50)t=-atan(ap.b,ap.d)+pi
T,U=R.b,R.d
end
function onDraw()N,aj=c.getWidth(),c.getHeight()if N>32 then
if ag then
c.setMapColorOcean(0,0,0)c.setMapColorShallows(2,2,2)c.setMapColorLand(7,7,7)c.setMapColorGrass(8,10,8)c.setMapColorSand(6,6,4)c.setMapColorSnow(25,25,26)c.drawMap(T,U,l)end
h,i=al(T,U,l,N,aj,R.b,R.d)L=l/N
ad=l/50
p=(aV/1000)/L
for a=0,2 do
V=5+10*a
e(g,g,g,7-ad*3)aA(h,i,V/L)e(g,g,g,11-ad*2)S(h+V/L-(5*(#tostring(V))),i,V)end
e(g,g,g,4-ad*2)for a=1,8 do
z(h,i,h+sin(a*Z/8)*120/L,i+cos(a*Z/8)*120/L)end
e(80,g,0,38)z(h,i,h+sin(I+t-o)*p,i+cos(I+t-o)*p)z(h,i,h+sin(I+t+o)*p,i+cos(I+t+o)*p)z(h,i,h+sin(P+t-o)*p,i+cos(P+t-o)*p)z(h,i,h+sin(P+t+o)*p,i+cos(P+t+o)*p)if aS then
else
e(0,g,0,8)aA(h,i,p)end
for j,A in ipairs(s)do
E,D=al(T,U,l,N,aj,A.y.b,A.y.d)E,D=aw(E),aw(D)if bh==j then
e(90,2,5)u(E-2,D-3,5,1)e(99,20,3)else
e(80,13,1)end
Y=A.y.n
Y=m.max(m.min(Y/500,4),0)z(E-Y,D-2,E+Y+1,D-2)aP(E-1,D-1,2,2)end
e(0,40,g)for j,A in ao(w)do
local W,X=al(T,U,l,N,aj,A.y.b,A.y.d)u(W,X-1,1,1)u(W+1,X,1,1)u(W,X+1,1,1)u(W-1,X,1,1)end
if aB then
e(1,1,1,200)u(13,2,12,5)e(85,160,35)S(13,2,"SOI")end
else
ac=""
if am then
e(g,0,0)ac="MSSLE"
elseif as then
e(239,38,0)ac="TRACK"
elseif aq then
e(g,135,0)ac="WARN"
end
if am or as or aq then
u(0,0,32,32)e(C,C,C)S(4,12,ac)end
if aF then
e(C,C,C)S(6,2,"PING")end
end
end
