-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2943 (3277 with comment) chars

t=230
f=255
au=table
F=false
x=true
am=screen
aa=map.mapToScreen
m,_,at,az,a,aN,aU=math,input,output,property,am,x,F
e,aZ,aO,aV=_.getNumber,at.setNumber,_.getBool,at.setBool
ai,aJ=az.getNumber,az.getBool
abs,cos,sin,floor,atan=m.abs,m.cos,m.sin,m.floor,m.atan
pi=m.pi
I=pi*2
a=am
S,aP,z,aM,n,aq,aS,c=a.drawText,a.drawTextBox,a.drawLine,a.drawRect,a.drawRectF,a.drawCircle,a.drawClear,a.setColor
function aW(as,av,aL,aK)B=aL-as
A=aK-av
if abs(B)>=abs(A)then
T=abs(B)else
T=abs(A)end
B=B/T
A=A/T
b=as
d=av
_=0
while(_<=T)do
n(b,d,1,1)b=b+B
d=d+A
_=_+1
end
end
function w(b,d,r)return{b=b or 0,d=d or 0,r=r or 0}end
function aG(p,v)return w(p.d*v.r-p.r*v.d,p.r*v.b-p.b*v.r,p.b*v.d-p.d*v.b)end
function al(p,min,max)return m.max(min,m.min(p,max))end
function ar(b)return floor(b+.5)end
aD=aJ("Mode")aA=ai("R Max Rng")k=ai("X FOV")*pi
aR=ai("Swep Lim")*I+k
aH={}ax={}X=x
i,q=7,0
u={}for _=1,100 do
u[_]=F
end
aX={}function onTick()L=w(e(1),e(3),e(2))D=-e(27)*I
H=D+pi
af=e(30)>0
aF=af~=aC and af
aC=af
if aF then
X=not X
end
s=e(31)s=s-1
aB=(s & 8)==0
ba=(s & 4)==0
aQ=(s & 2)==0
b_=(s & 1)==0
ay=aB
au.remove(u,1)au.insert(u,ay)j=0
for _=1,6 do
if u[_]then
j=j+1
end
end
if j>=2 then
ad=x
else
ad=F
end
j=0
for _=1,26 do
if u[_]then
j=j+1
end
end
if j>=2 then
Y=x
else
Y=F
end
j=0
for _=1,100 do
if u[_]then
j=j+1
end
end
if j>=2 then
ac=x
else
ac=F
end
an,ak,aw=e(4),e(5),e(6)V,ae,ab=cos(an),cos(ak),cos(aw)ao,U,W=sin(an),sin(ak),sin(aw)aE=w(ae*ab,-U,ae*W)ah=w(ao*W+V*U*ab,V*ae,-ao*ab+V*U*W)aT=aG(aE,ah)aI=e(19)ax[aI]=w(e(7),e(8),e(9))ap=e(29)==1
if ap then
y=e(26)else
y=0
end
if y<.01 and y>-.01 then
q=q-q/5
else
q=al((q+y/160),-.1,.1)end
if i>=50 then q=0 end
i=al(i+(y/55*i/2.4)+q*i/2.4,.1,50)o=-atan(ah.b,ah.d)+pi
M,R=L.b,L.d
end
function onDraw()G,ag=a.getWidth(),a.getHeight()if G>32 then
if X then
a.setMapColorOcean(0,0,0)a.setMapColorShallows(2,2,2)a.setMapColorLand(7,7,7)a.setMapColorGrass(8,10,8)a.setMapColorSand(6,6,4)a.setMapColorSnow(25,25,26)a.drawMap(M,R,i)end
g,h=aa(M,R,i,G,ag,L.b,L.d)C=i/G
Z=i/50
l=(aA/1000)/C
for _=0,2 do
O=5+10*_
c(f,f,f,7-Z*3)aq(g,h,O/C)c(f,f,f,11-Z*2)S(g+O/C-(5*(#tostring(O))),h,O)end
c(f,f,f,4-Z*2)for _=1,8 do
z(g,h,g+sin(_*I/8)*120/C,h+cos(_*I/8)*120/C)end
c(80,f,0,38)z(g,h,g+sin(D+o-k)*l,h+cos(D+o-k)*l)z(g,h,g+sin(D+o+k)*l,h+cos(D+o+k)*l)z(g,h,g+sin(H+o-k)*l,h+cos(H+o-k)*l)z(g,h,g+sin(H+o+k)*l,h+cos(H+o+k)*l)if aD then
else
c(0,f,0,8)aq(g,h,l)end
for aj,E in ipairs(ax)do
N,P=aa(M,R,i,G,ag,E.b,E.d)N,P=ar(N),ar(P)if aY==aj then
c(90,2,5)n(N-2,P-3,5,1)c(99,20,3)else
c(80,13,1)end
aM(N-1,P-1,2,2)end
c(0,40,f)for aj,E in pairs(aH)do
local J,K=aa(M,R,i,G,ag,E.b,E.d)n(J,K-1,1,1)n(J+1,K,1,1)n(J,K+1,1,1)n(J-1,K,1,1)end
if ap then
c(1,1,1,200)n(13,2,12,5)c(85,160,35)S(13,2,"SOI")end
else
Q=""
if ad then
c(f,0,0)Q="MSSLE"
elseif Y then
c(239,38,0)Q="TRACK"
elseif ac then
c(f,135,0)Q="WARN"
end
if ad or Y or ac then
n(0,0,32,32)c(t,t,t)S(4,12,Q)end
if ay then
c(t,t,t)S(6,2,"PING")end
end
end
