-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2751 (3085 with comment) chars

aj=screen
L=map.mapToScreen
f,l,ah,an,d,aV,aP=math,input,output,property,aj,true,false
n,aL,aR,aZ=l.getNumber,ah.setNumber,l.getBool,ah.setBool
X,az=an.getNumber,an.getBool
abs,cos,sin,floor,atan=f.abs,f.cos,f.sin,f.floor,f.atan
pi=f.pi
ak=pi*2
d=aj
ba,aI,aM,aW,at,q,av,b_,aY,o=d.drawText,d.drawTextBox,d.drawTriangle,d.drawTriangleF,d.drawRect,d.drawRectF,d.drawCircle,d.drawCircleF,d.drawClear,d.setColor
function y(af,aq,as,aA)u=as-af
A=aA-aq
if abs(u)>=abs(A)then
F=abs(u)else
F=abs(A)end
u=u/F
A=A/F
a=af
b=aq
l=0
while(l<=F)do
q(a,b,1,1)a=a+u
b=b+A
l=l+1
end
end
function m(a,b,e)return{a=a or 0,b=b or 0,e=e or 0}end
function Y(_,c)return m(_.a+c.a,_.b+c.b,_.e+c.e)end
function aU(_,c)return m(_.a*c.a,_.b*c.b,_.e*c.e)end
function v(_,z)return m(_.a*z,_.b*z,_.e*z)end
function aC(_)return v(_,-1)end
function aK(_,c)return Y(_,aC(c))end
function ay(_)return f.sqrt(_.a*_.a+_.b*_.b+_.e*_.e)end
function aF(_,z)return v(_,1/z)end
function aT(_)return aF(_,ay(_))end
function Z(_,c)return _.a*c.a+_.b*c.b+_.e*c.e
end
function aE(_,c)return m(_.b*c.e-_.e*c.b,_.e*c.a-_.a*c.e,_.a*c.b-_.b*c.a)end
function aO(al,aa,C)local C=C or 1
return m(f.sin(al)*f.cos(aa)*C,f.cos(al)*f.cos(aa)*C,f.sin(aa)*C)end
function aS(_,Q,S,N)return m(Z(Q,_),Z(S,_),Z(N,_))end
function aJ(_,Q,S,N)return Y(Y(v(Q,_.a),v(S,_.b)),v(N,_.e))end
function ag(_,min,max)return f.max(min,f.min(_,max))end
function ab(a)return floor(a+.5)end
au=az("Mode")ax=X("R Max Rng")w=X("X FOV")*pi
s=X("Swep Lim")*ak+w
aw={}aD={}j,p=.5,0
function onTick()r=m(n(21),n(23),n(22))M=-n(20)*ak
ad,ac,am=n(24),n(25),n(26)T,P,U=cos(ad),cos(ac),cos(am)ai,W,R=sin(ad),sin(ac),sin(am)aH=m(P*U,-W,P*R)V=m(ai*R+T*W*U,T*P,-ai*U+T*W*R)aQ=aE(aH,V)D=n(32)if D<.01 and D>-.01 then
p=p-p/5
else
p=ag((p+D/160),-.1,.1)end
if j>=50 then p=0 end
j=ag(j+(D/55*j/2.4)+p*j/2.4,.1,50)k=-atan(V.a,V.b)+pi
t,B=r.a,r.b
end
function onDraw()K,J=d.getWidth(),d.getHeight()d.setMapColorOcean(0,0,0)d.setMapColorShallows(2,2,2)d.setMapColorLand(7,7,7)d.setMapColorGrass(8,10,8)d.setMapColorSand(6,6,4)d.setMapColorSnow(25,25,26)d.drawMap(t,B,j)i,h=L(t,B,j,K,J,r.a,r.b)aN,aB=L(t,B+ax,j,K,J,r.a,r.b)g=f.abs(aB-h)o(80,255,0,38)y(i,h,i+sin(M+k-w)*g,h+cos(M+k-w)*g)y(i,h,i+sin(M+k+w)*g,h+cos(M+k+w)*g)if au then
o(0,180,0,23)y(i,h,i+sin(-s+k)*g,h+cos(-s+k)*g)y(i,h,i+sin(s+k)*g,h+cos(s+k)*g)do
O=-k-s+pi/2
ar=(-k+s+pi/2-O)/18
for l=1,18 do
ao=O+ar*l
ap=O+ar*(l-1)y(i+cos(ao)*g,h+sin(ao)*g,i+cos(ap)*g,h+sin(ap)*g)end
end
else
o(0,255,0,8)av(i,h,g)end
for ae,x in ipairs(aw)do
H,I=L(t,B,j,K,J,x.aG.a,x.aG.b)H,I=ab(H),ab(I)if aX==ae then
o(90,2,5)q(H-2,I-3,5,1)o(99,20,3)else
o(80,13,1)end
at(H-1,I-1,2,2)end
o(0,40,255)for ae,x in pairs(aD)do
local E,G=L(t,B,j,K,J,x.a,x.b)q(E,G-1,1,1)q(E+1,G,1,1)q(E,G+1,1,1)q(E-1,G,1,1)end
end
