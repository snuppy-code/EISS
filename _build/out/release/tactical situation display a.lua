-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3300 (3634 with comment) chars
bj="upd "

y=230
g=255
aD=pairs
ax=table
E=false
K=true
aC=screen
ag=map.mapToScreen
S=debug.log
o,a,as,at,c,aZ,aX=math,input,output,property,aC,K,E
b,bc,aU,bi=a.getNumber,as.setNumber,a.getBool,as.setBool
Z,aN=at.getNumber,at.getBool
abs,cos,sin,floor,atan=o.abs,o.cos,o.sin,o.floor,o.atan
pi=o.pi
T=pi*2
c=aC
N,aY,J,aM,q,ay,bg,e=c.drawText,c.drawTextBox,c.drawLine,c.drawRect,c.drawRectF,c.drawCircle,c.drawClear,c.setColor
function bf(av,aG,aJ,aH)z=aJ-av
I=aH-aG
if abs(z)>=abs(I)then
P=abs(z)else
P=abs(I)end
z=z/P
I=I/P
_=av
d=aG
a=0
while(a<=P)do
q(_,d,1,1)_=_+z
d=d+I
a=a+1
end
end
function x(_,d,r)return{_=_ or 0,d=d or 0,r=r or 0}end
function aO(f,v)return x(f.d*v.r-f.r*v.d,f.r*v._-f._*v.r,f._*v.d-f.d*v._)end
function az(f)return o.sqrt(f._*f._+f.d*f.d+f.r*f.r)end
function aF(f,min,max)return o.max(min,o.min(f,max))end
function aq(_)return floor(_+.5)end
aT=aN("Mode")aQ=Z("R Max Rng")p=Z("X FOV")*pi
ba=Z("Swep Lim")*T+p
aK=Z("Cull Time")aL={}n={}al=K
k,t=7,0
u={}for a=1,100 do
u[a]=E
end
bd={}function onTick()W=x(b(1),b(3),b(2))D=-b(27)*T
R=D+pi
ai=b(30)>0
aP=ai~=aR and ai
aR=ai
if aP then
al=not al
end
w=b(31)w=w-1
aI=(w & 8)==0
aV=(w & 4)==0
bh=(w & 2)==0
bb=(w & 1)==0
aE=aI
ax.remove(u,1)ax.insert(u,aE)j=0
for a=1,6 do
if u[a]then
j=j+1
end
end
if j>=2 then
ah=K
else
ah=E
end
j=0
for a=1,26 do
if u[a]then
j=j+1
end
end
if j>=2 then
ac=K
else
ac=E
end
j=0
for a=1,100 do
if u[a]then
j=j+1
end
end
if j>=2 then
aj=K
else
aj=E
end
au,aB,ar=b(4),b(5),b(6)ak,am,ao=cos(au),cos(aB),cos(ar)aw,af,ap=sin(au),sin(aB),sin(ar)aS=x(am*ao,-af,am*ap)ab=x(aw*ap+ak*af*ao,ak*am,-aw*ao+ak*af*ap)aW=aO(aS,ab)O=b(19)H=x(b(7),b(8),b(9))if az(H)>0 then
S(bj..O)n[O]={ad=H,G=0}end
H=x(b(10),b(11),b(12))if az(H)>0 then
S(bj..(O+1))n[O+1]={ad=H,G=0}end
for l,be in aD(n)do
n[l].G=n[l].G+1
S(l.." is "..n[l].G)if n[l].G>=aK then
n[l]=nil
S("tgt "..l.." culled in TSD")end
end
aA=b(29)==1
if aA then
C=b(26)else
C=0
end
if C<.01 and C>-.01 then
t=t-t/5
else
t=aF((t+C/160),-.1,.1)end
if k>=50 then t=0 end
k=aF(k+(C/55*k/2.4)+t*k/2.4,.1,50)s=-atan(ab._,ab.d)+pi
aa,L=W._,W.d
end
function onDraw()F,an=c.getWidth(),c.getHeight()if F>32 then
if al then
c.setMapColorOcean(0,0,0)c.setMapColorShallows(2,2,2)c.setMapColorLand(7,7,7)c.setMapColorGrass(8,10,8)c.setMapColorSand(6,6,4)c.setMapColorSnow(25,25,26)c.drawMap(aa,L,k)end
h,i=ag(aa,L,k,F,an,W._,W.d)A=k/F
ae=k/50
m=(aQ/1000)/A
for a=0,2 do
X=5+10*a
e(g,g,g,7-ae*3)ay(h,i,X/A)e(g,g,g,11-ae*2)N(h+X/A-(5*(#tostring(X))),i,X)end
e(g,g,g,4-ae*2)for a=1,8 do
J(h,i,h+sin(a*T/8)*120/A,i+cos(a*T/8)*120/A)end
e(80,g,0,38)J(h,i,h+sin(D+s-p)*m,i+cos(D+s-p)*m)J(h,i,h+sin(D+s+p)*m,i+cos(D+s+p)*m)J(h,i,h+sin(R+s-p)*m,i+cos(R+s-p)*m)J(h,i,h+sin(R+s+p)*m,i+cos(R+s+p)*m)if aT then
else
e(0,g,0,8)ay(h,i,m)end
for l,B in ipairs(n)do
Y,M=ag(aa,L,k,F,an,B.ad._,B.ad.d)Y,M=aq(Y),aq(M)if b_==l then
e(90,2,5)q(Y-2,M-3,5,1)e(99,20,3)else
e(80,13,1)end
aM(Y-1,M-1,2,2)end
e(0,40,g)for l,B in aD(aL)do
local U,Q=ag(aa,L,k,F,an,B._,B.d)q(U,Q-1,1,1)q(U+1,Q,1,1)q(U,Q+1,1,1)q(U-1,Q,1,1)end
if aA then
e(1,1,1,200)q(13,2,12,5)e(85,160,35)N(13,2,"SOI")end
else
V=""
if ah then
e(g,0,0)V="MSSLE"
elseif ac then
e(239,38,0)V="TRACK"
elseif aj then
e(g,135,0)V="WARN"
end
if ah or ac or aj then
q(0,0,32,32)e(y,y,y)N(4,12,V)end
if aE then
e(y,y,y)N(6,2,"PING")end
end
end
