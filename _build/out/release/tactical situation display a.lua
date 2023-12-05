-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3531 (3898 with comment) chars

F=230
h=255
aB=nil
ah=pairs
ax=table
M=false
K=true
aE=screen
X=map.mapToScreen
g,c,az,ay,e,bf,aZ=math,input,output,property,aE,K,M
_,bd,aX,aW=c.getNumber,az.setNumber,c.getBool,az.setBool
ai,aK=ay.getNumber,ay.getBool
abs,cos,sin,floor,atan=g.abs,g.cos,g.sin,g.floor,g.atan
pi=g.pi
ae=pi*2
e=aE
Y,bb,B,aP,q,aI,b_,f=e.drawText,e.drawTextBox,e.drawLine,e.drawRect,e.drawRectF,e.drawCircle,e.drawClear,e.setColor
function ba(aJ,aw,aR,aQ)O=aR-aJ
R=aQ-aw
if abs(O)>=abs(R)then
V=abs(O)else
V=abs(R)end
O=O/V
R=R/V
a=aJ
b=aw
c=0
while(c<=V)do
q(a,b,1,1)a=a+O
b=b+R
c=c+1
end
end
function z(a,b,k)return{a=a or 0,b=b or 0,k=k or 0}end
function aU(d,r)return z(d.b*r.k-d.k*r.b,d.k*r.a-d.a*r.k,d.a*r.b-d.b*r.a)end
function T(d)return g.sqrt(d.a*d.a+d.b*d.b+d.k*d.k)end
function aV(d,r)return g.sqrt((d.a-r.a)^2+(d.b-r.b)^2+(d.k-r.k)^2)end
function aF(d,min,max)return g.max(min,g.min(d,max))end
function Z(a)return floor(a+.5)end
aT=aK("Mode")aN=ai("R Max Rng")t=ai("X FOV")*pi
bc=ai("Swep Lim")*ae+t
aC=50
C={}y={}ap=K
l,D=7,0
H={}for c=1,100 do
H[c]=M
end
aY={}function onTick()ac=z(_(1),_(3),_(2))S=-_(27)*ae
ad=S+pi
aq=_(30)>0
aM=aq~=aL and aq
aL=aq
if aM then
ap=not ap
end
aD=_(31)==1
ax.remove(H,1)ax.insert(H,aD)n=0
for c=1,6 do
if H[c]then
n=n+1
end
end
if n>=2 then
am=K
else
am=M
end
n=0
for c=1,26 do
if H[c]then
n=n+1
end
end
if n>=2 then
ao=K
else
ao=M
end
n=0
for c=1,100 do
if H[c]then
n=n+1
end
end
if n>=2 then
ag=K
else
ag=M
end
at=z(_(23),_(24),_(25))au,av,aA=_(4),_(5),_(6)ar,an,ak=cos(au),cos(av),cos(aA)aG,al,aj=sin(au),sin(av),sin(aA)aO=z(an*ak,-al,an*aj)as=z(aG*aj+ar*al*ak,ar*an,-aG*ak+ar*al*aj)be=aU(aO,as)W=_(19)v=z(_(7),_(8),_(9))if T(v)>0 then
y[W]={w=v,x=0}end
v=z(_(10),_(11),_(12))if T(v)>0 then
y[W+1]={w=v,x=0}end
W=_(21)v=z(_(13),_(14),_(15))if T(v)>0 then
C[W]={w=v,x=0}end
for m,aS in ah(y)do
y[m].x=y[m].x+1
if y[m].x>=aC then
y[m]=aB
end
end
for m,aS in ah(C)do
C[m].x=C[m].x+1
if C[m].x>=aC then
C[m]=aB
end
end
aH=_(29)==1
if aH then
Q=_(26)else
Q=0
end
if Q<.01 and Q>-.01 then
D=D-D/5
else
D=aF((D+Q/160),-.1,.1)end
if l>=50 then D=0 end
l=aF(l+(Q/55*l/2.4)+D*l/2.4,.1,50)A=-atan(as.a,as.b)+pi
L,P=ac.a,ac.b
end
function onDraw()J,U=e.getWidth(),e.getHeight()if J>32 then
if ap then
e.setMapColorOcean(0,0,0)e.setMapColorShallows(2,2,2)e.setMapColorLand(7,7,7)e.setMapColorGrass(8,10,8)e.setMapColorSand(6,6,4)e.setMapColorSnow(25,25,26)e.drawMap(L,P,l)end
j,i=X(L,P,l,J,U,ac.a,ac.b)N=l/J
af=l/50
u=(aN/1000)/N
for c=0,2 do
ab=5+10*c
f(h,h,h,7-af*3)aI(j,i,ab/N)f(h,h,h,11-af*2)Y(j+ab/N-(5*(#tostring(ab))),i,ab)end
f(h,h,h,4-af*2)for c=1,8 do
B(j,i,j+sin(c*ae/8)*120/N,i+cos(c*ae/8)*120/N)end
f(80,h,0,38)B(j,i,j+sin(S+A-t)*u,i+cos(S+A-t)*u)B(j,i,j+sin(S+A+t)*u,i+cos(S+A+t)*u)B(j,i,j+sin(ad+A-t)*u,i+cos(ad+A-t)*u)B(j,i,j+sin(ad+A+t)*u,i+cos(ad+A+t)*u)if aT then
else
f(0,h,0,8)aI(j,i,u)end
for m,E in ipairs(y)do
p,o=X(L,P,l,J,U,E.w.a,E.w.b)p,o=Z(p),Z(o)f(80,13,1)s=E.w.k
s=g.max(g.min(s/500,5),0)B(p-s,o-2,p+s+1,o-2)aP(p-1,o-1,2,2)end
if T(at)>0 then
p,o=X(L,P,l,J,U,at.a,at.b)p,o=Z(p),Z(o)f(46,0,25)q(p-2,o-2,1,5)q(p+2,o-2,1,5)q(p,o,1,1)end
f(0,40,h)for m,E in ah(C)do
local G,I=X(L,P,l,J,U,E.w.a,E.w.b)s=E.w.k
s=g.max(g.min(s/500,5),0)B(G-s,I-2,G+s+1,I-2)q(G,I-1,1,1)q(G+1,I,1,1)q(G,I+1,1,1)q(G-1,I,1,1)end
if aH then
f(1,1,1,200)q(13,2,12,5)f(85,160,35)Y(13,2,"SOI")end
else
aa=""
if am then
f(h,0,0)aa="MSSLE"
elseif ao then
f(239,38,0)aa="TRACK"
elseif ag then
f(h,135,0)aa="WARN"
end
if am or ao or ag then
q(0,0,32,32)f(F,F,F)Y(4,12,aa)end
if aD then
f(F,F,F)Y(6,2,"PING")end
end
end
