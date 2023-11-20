-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3632 (3966 with comment) chars

m=255
aq=table
v=false
ag=true
C=screen
aA=C.setColor
X=map.mapToScreen
j,k,aL,aG,c,bo,bp=math,input,output,property,C,ag,v
i,bb,bs,br=k.getNumber,aL.setNumber,k.getBool,aL.setBool
ai,ba=aG.getNumber,aG.getBool
abs,cos,sin,floor,atan=j.abs,j.cos,j.sin,j.floor,j.atan
pi=j.pi
N=pi*2
c=C
aT,bc,t,be,bt,aX,s,at,bh,bk,n=c.drawText,c.drawTextBox,c.drawLine,c.drawTriangle,c.drawTriangleF,c.drawRect,c.drawRectF,c.drawCircle,c.drawCircleF,c.drawClear,c.setColor
function bd(aw,aK,aV,aW)G=aV-aw
A=aW-aK
if abs(G)>=abs(A)then
Q=abs(G)else
Q=abs(A)end
G=G/Q
A=A/Q
a=aw
b=aK
k=0
while(k<=Q)do
s(a,b,1,1)a=a+G
b=b+A
k=k+1
end
end
function o(a,b,h)return{a=a or 0,b=b or 0,h=h or 0}end
function ap(_,d)return o(_.a+d.a,_.b+d.b,_.h+d.h)end
function bl(_,d)return o(_.a*d.a,_.b*d.b,_.h*d.h)end
function I(_,E)return o(_.a*E,_.b*E,_.h*E)end
function aY(_)return I(_,-1)end
function bg(_,d)return ap(_,aY(d))end
function aP(_)return j.sqrt(_.a*_.a+_.b*_.b+_.h*_.h)end
function aQ(_,E)return I(_,1/E)end
function bi(_)return aQ(_,aP(_))end
function ac(_,d)return _.a*d.a+_.b*d.b+_.h*d.h
end
function aU(_,d)return o(_.b*d.h-_.h*d.b,_.h*d.a-_.a*d.h,_.a*d.b-_.b*d.a)end
function bf(aF,ak,F)local F=F or 1
return o(j.sin(aF)*j.cos(ak)*F,j.cos(aF)*j.cos(ak)*F,j.sin(ak)*F)end
function bu(_,W,ah,aa)return o(ac(W,_),ac(ah,_),ac(aa,_))end
function bn(_,W,ah,aa)return ap(ap(I(W,_.a),I(ah,_.b)),I(aa,_.h))end
function aB(_,min,max)return j.max(min,j.min(_,max))end
function aE(a)return floor(a+.5)end
aS=ba("Mode")b_=ai("R Max Rng")q=ai("X FOV")*pi
w=ai("Swep Lim")*N+q
ar={[1]={Y=o()}}aZ={}ay,an=v,ag
p,u=7,0
y={}r={v,v,v,v}function onTick()P=o(i(1),i(3),i(2))H=-i(27)*N
O=H+pi
ao=i(30)>0
aR=ao~=ay and ao
ay=ao
if aR then
an=not an
end
x=i(31)x=x-1
y.aO=(x & 8)==0
y.bm=(x & 4)==0
y.bv=(x & 2)==0
y.av=(x & 1)==0
aM=y.aO
aq.remove(r,1)aq.insert(r,aM)if(r[4]and r[3]and r[2])or(r[4]and not r[3]and not r[2]and not r[1])then
aJ=ag
else
aJ=v
end
ar[1].Y=o(i(23),i(24),i(25))aH,as,ax=i(4),i(5),i(6)Z,ae,am=cos(aH),cos(as),cos(ax)aD,ad,aj=sin(aH),sin(as),sin(ax)av=o(ae*am,-ad,ae*aj)V=o(aD*aj+Z*ad*am,Z*ae,-aD*am+Z*ad*aj)bj=aU(av,V)aN=i(29)==1
if aN then
D=i(26)else
D=0
end
if D<.01 and D>-.01 then
u=u-u/5
else
u=aB((u+D/160),-.1,.1)end
if p>=50 then u=0 end
p=aB(p+(D/55*p/2.4)+u*p/2.4,.1,50)l=-atan(V.a,V.b)+pi
R,L=P.a,P.b
end
function onDraw()B,af=c.getWidth(),c.getHeight()if B>32 then
if an then
c.setMapColorOcean(0,0,0)c.setMapColorShallows(2,2,2)c.setMapColorLand(7,7,7)c.setMapColorGrass(8,10,8)c.setMapColorSand(6,6,4)c.setMapColorSnow(25,25,26)c.drawMap(R,L,p)end
f,e=X(R,L,p,B,af,P.a,P.b)z=p/B
al=p/50
g=(b_/1000)/z
for k=0,2 do
M=5+10*k
n(m,m,m,7-al*3)at(f,e,M/z)n(m,m,m,11-al*2)aT(f+M/z-(5*(#tostring(M))),e,M)end
n(m,m,m,4-al*2)for k=1,8 do
t(f,e,f+sin(k*N/8)*120/z,e+cos(k*N/8)*120/z)end
n(80,m,0,38)t(f,e,f+sin(H+l-q)*g,e+cos(H+l-q)*g)t(f,e,f+sin(H+l+q)*g,e+cos(H+l+q)*g)t(f,e,f+sin(O+l-q)*g,e+cos(O+l-q)*g)t(f,e,f+sin(O+l+q)*g,e+cos(O+l+q)*g)if aS then
n(0,180,0,23)t(f,e,f+sin(-w+l)*g,e+cos(-w+l)*g)t(f,e,f+sin(w+l)*g,e+cos(w+l)*g)do
ab=-l-w+pi/2
au=(-l+w+pi/2-ab)/18
for k=1,18 do
aC=ab+au*k
aI=ab+au*(k-1)t(f+cos(aC)*g,e+sin(aC)*g,f+cos(aI)*g,e+sin(aI)*g)end
end
else
n(0,m,0,8)at(f,e,g)end
for az,J in ipairs(ar)do
S,T=X(R,L,p,B,af,J.Y.a,J.Y.b)S,T=aE(S),aE(T)if bq==az then
n(90,2,5)s(S-2,T-3,5,1)n(99,20,3)else
n(80,13,1)end
aX(S-1,T-1,2,2)end
n(0,40,m)for az,J in pairs(aZ)do
local U,K=X(R,L,p,B,af,J.a,J.b)s(U,K-1,1,1)s(U+1,K,1,1)s(U,K+1,1,1)s(U-1,K,1,1)end
if aN then
aA(1,1,1,200)C.drawRectF(13,2,12,5)aA(85,160,35)C.drawText(13,2,"SOI")end
else
if aJ then
n(m,0,0)s(0,0,32,32)elseif aM then
n(160,15,170)s(0,0,32,32)end
end
end
