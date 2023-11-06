-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2751 (3085 with comment) chars

ao=screen
M=map.mapToScreen
f,l,ar,aq,c,aJ,aR=math,input,output,property,ao,true,false
n,aV,aT,b_=l.getNumber,ar.setNumber,l.getBool,ar.setBool
Q,aE=aq.getNumber,aq.getBool
abs,cos,sin,floor,atan=f.abs,f.cos,f.sin,f.floor,f.atan
pi=f.pi
aj=pi*2
c=ao
aP,aZ,aI,aU,az,q,aD,aO,aN,p=c.drawText,c.drawTextBox,c.drawTriangle,c.drawTriangleF,c.drawRect,c.drawRectF,c.drawCircle,c.drawCircleF,c.drawClear,c.setColor
function z(am,ai,as,av)A=as-am
u=av-ai
if abs(A)>=abs(u)then
G=abs(A)else
G=abs(u)end
A=A/G
u=u/G
a=am
b=ai
l=0
while(l<=G)do
q(a,b,1,1)a=a+A
b=b+u
l=l+1
end
end
function m(a,b,e)return{a=a or 0,b=b or 0,e=e or 0}end
function W(_,d)return m(_.a+d.a,_.b+d.b,_.e+d.e)end
function aQ(_,d)return m(_.a*d.a,_.b*d.b,_.e*d.e)end
function y(_,B)return m(_.a*B,_.b*B,_.e*B)end
function aH(_)return y(_,-1)end
function aW(_,d)return W(_,aH(d))end
function at(_)return f.sqrt(_.a*_.a+_.b*_.b+_.e*_.e)end
function au(_,B)return y(_,1/B)end
function aL(_)return au(_,at(_))end
function O(_,d)return _.a*d.a+_.b*d.b+_.e*d.e
end
function ay(_,d)return m(_.b*d.e-_.e*d.b,_.e*d.a-_.a*d.e,_.a*d.b-_.b*d.a)end
function ba(af,X,v)local v=v or 1
return m(f.sin(af)*f.cos(X)*v,f.cos(af)*f.cos(X)*v,f.sin(X)*v)end
function aS(_,Y,Z,T)return m(O(Y,_),O(Z,_),O(T,_))end
function aK(_,Y,Z,T)return W(W(y(Y,_.a),y(Z,_.b)),y(T,_.e))end
function ap(_,min,max)return f.max(min,f.min(_,max))end
function al(a)return floor(a+.5)end
aF=aE("Mode")aw=Q("R Max Rng")x=Q("X FOV")*pi
r=Q("Swep Lim")*aj+x
aG={}aC={}j,o=.5,0
function onTick()s=m(n(21),n(23),n(22))K=-n(20)*aj
ae,ab,ah=n(24),n(25),n(26)S,R,aa=cos(ae),cos(ab),cos(ah)ag,N,P=sin(ae),sin(ab),sin(ah)ax=m(R*aa,-N,R*P)V=m(ag*P+S*N*aa,S*R,-ag*aa+S*N*P)aY=ay(ax,V)F=n(32)if F<.01 and F>-.01 then
o=o-o/5
else
o=ap((o+F/160),-.1,.1)end
if j>=50 then o=0 end
j=ap(j+(F/55*j/2.4)+o*j/2.4,.1,50)k=-atan(V.a,V.b)+pi
C,t=s.a,s.b
end
function onDraw()I,H=c.getWidth(),c.getHeight()c.setMapColorOcean(0,0,0)c.setMapColorShallows(2,2,2)c.setMapColorLand(7,7,7)c.setMapColorGrass(8,10,8)c.setMapColorSand(6,6,4)c.setMapColorSnow(25,25,26)c.drawMap(C,t,j)i,h=M(C,t,j,I,H,s.a,s.b)aM,aA=M(C,t+aw,j,I,H,s.a,s.b)g=f.abs(aA-h)p(80,255,0,38)z(i,h,i+sin(K+k-x)*g,h+cos(K+k-x)*g)z(i,h,i+sin(K+k+x)*g,h+cos(K+k+x)*g)if aF then
p(0,180,0,23)z(i,h,i+sin(-r+k)*g,h+cos(-r+k)*g)z(i,h,i+sin(r+k)*g,h+cos(r+k)*g)do
U=-k-r+pi/2
ak=(-k+r+pi/2-U)/18
for l=1,18 do
ad=U+ak*l
ac=U+ak*(l-1)z(i+cos(ad)*g,h+sin(ad)*g,i+cos(ac)*g,h+sin(ac)*g)end
end
else
p(0,255,0,8)aD(i,h,g)end
for an,w in ipairs(aG)do
J,E=M(C,t,j,I,H,w.aB.a,w.aB.b)J,E=al(J),al(E)if aX==an then
p(90,2,5)q(J-2,E-3,5,1)p(99,20,3)else
p(80,13,1)end
az(J-1,E-1,2,2)end
p(0,40,255)for an,w in pairs(aC)do
local L,D=M(C,t,j,I,H,w.a,w.b)q(L,D-1,1,1)q(L+1,D,1,1)q(L,D+1,1,1)q(L-1,D,1,1)end
end
