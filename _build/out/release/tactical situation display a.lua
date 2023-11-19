-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3173 (3507 with comment) chars

u=255
ax=false
an=true
A=screen
ay=A.setColor
M=map.mapToScreen
i,n,aj,av,c,bb,bf=math,input,output,property,A,an,ax
k,bd,be,aY=n.getNumber,aj.setNumber,n.getBool,aj.setBool
R,aG=av.getNumber,av.getBool
abs,cos,sin,floor,atan=i.abs,i.cos,i.sin,i.floor,i.atan
pi=i.pi
aA=pi*2
c=A
bm,aV,r,bj,b_,aM,s,aq,aT,bh,p=c.drawText,c.drawTextBox,c.drawLine,c.drawTriangle,c.drawTriangleF,c.drawRect,c.drawRectF,c.drawCircle,c.drawCircleF,c.drawClear,c.setColor
function bc(aw,ar,aQ,aI)D=aQ-aw
G=aI-ar
if abs(D)>=abs(G)then
P=abs(D)else
P=abs(G)end
D=D/P
G=G/P
a=aw
b=ar
n=0
while(n<=P)do
s(a,b,1,1)a=a+D
b=b+G
n=n+1
end
end
function m(a,b,g)return{a=a or 0,b=b or 0,g=g or 0}end
function ac(_,d)return m(_.a+d.a,_.b+d.b,_.g+d.g)end
function aX(_,d)return m(_.a*d.a,_.b*d.b,_.g*d.g)end
function y(_,C)return m(_.a*C,_.b*C,_.g*C)end
function aJ(_)return y(_,-1)end
function ba(_,d)return ac(_,aJ(d))end
function aL(_)return i.sqrt(_.a*_.a+_.b*_.b+_.g*_.g)end
function aN(_,C)return y(_,1/C)end
function bk(_)return aN(_,aL(_))end
function Z(_,d)return _.a*d.a+_.b*d.b+_.g*d.g
end
function aS(_,d)return m(_.b*d.g-_.g*d.b,_.g*d.a-_.a*d.g,_.a*d.b-_.b*d.a)end
function aZ(as,ae,z)local z=z or 1
return m(i.sin(as)*i.cos(ae)*z,i.cos(as)*i.cos(ae)*z,i.sin(ae)*z)end
function aW(_,Y,U,ag)return m(Z(Y,_),Z(U,_),Z(ag,_))end
function aU(_,Y,U,ag)return ac(ac(y(Y,_.a),y(U,_.b)),y(ag,_.g))end
function al(_,min,max)return i.max(min,i.min(_,max))end
function ak(a)return floor(a+.5)end
aO=aG("Mode")aP=R("R Max Rng")o=R("X FOV")*pi
v=R("Swep Lim")*aA+o
aC={[1]={V=m()}}aK={}ah,X=ax,an
l,q=7,0
function onTick()t=m(k(1),k(3),k(2))E=-k(27)*aA
I=E+pi
W=k(30)>0
aF=W~=ah and W
ah=W
if aF then
X=not X
end
aC[1].V=m(k(23),k(24),k(25))aD,ai,am=k(4),k(5),k(6)af,S,ad=cos(aD),cos(ai),cos(am)aB,aa,T=sin(aD),sin(ai),sin(am)aR=m(S*ad,-aa,S*T)Q=m(aB*T+af*aa*ad,af*S,-aB*ad+af*aa*T)bg=aS(aR,Q)az=k(29)==1
if az then
B=k(26)else
B=0
end
if B<.01 and B>-.01 then
q=q-q/5
else
q=al((q+B/160),-.1,.1)end
if l>=50 then q=0 end
l=al(l+(B/55*l/2.4)+q*l/2.4,.1,50)j=-atan(Q.a,Q.b)+pi
H,w=t.a,t.b
end
function onDraw()x,O=c.getWidth(),c.getHeight()if X then
c.setMapColorOcean(0,0,0)c.setMapColorShallows(2,2,2)c.setMapColorLand(7,7,7)c.setMapColorGrass(8,10,8)c.setMapColorSand(6,6,4)c.setMapColorSnow(25,25,26)c.drawMap(H,w,l)end
h,e=M(H,w,l,x,O,t.a,t.b)bl,aH=M(H,w+aP,l,x,O,t.a,t.b)f=i.abs(aH-e)aE=l/x
p(u,u,u,6)for n=0,2 do
aq(h,e,(5+10*n)/aE)end
p(80,u,0,38)r(h,e,h+sin(E+j-o)*f,e+cos(E+j-o)*f)r(h,e,h+sin(E+j+o)*f,e+cos(E+j+o)*f)r(h,e,h+sin(I+j-o)*f,e+cos(I+j-o)*f)r(h,e,h+sin(I+j+o)*f,e+cos(I+j+o)*f)if aO then
p(0,180,0,23)r(h,e,h+sin(-v+j)*f,e+cos(-v+j)*f)r(h,e,h+sin(v+j)*f,e+cos(v+j)*f)do
ab=-j-v+pi/2
at=(-j+v+pi/2-ab)/18
for n=1,18 do
ap=ab+at*n
ao=ab+at*(n-1)r(h+cos(ap)*f,e+sin(ap)*f,h+cos(ao)*f,e+sin(ao)*f)end
end
else
p(0,u,0,8)aq(h,e,f)end
for au,F in ipairs(aC)do
N,K=M(H,w,l,x,O,F.V.a,F.V.b)N,K=ak(N),ak(K)if bi==au then
p(90,2,5)s(N-2,K-3,5,1)p(99,20,3)else
p(80,13,1)end
aM(N-1,K-1,2,2)end
p(0,40,u)for au,F in pairs(aK)do
local L,J=M(H,w,l,x,O,F.a,F.b)s(L,J-1,1,1)s(L+1,J,1,1)s(L,J+1,1,1)s(L-1,J,1,1)end
if az then
ay(1,1,1,200)A.drawRectF(13,2,12,5)ay(85,160,35)A.drawText(13,2,"SOI")end
end
