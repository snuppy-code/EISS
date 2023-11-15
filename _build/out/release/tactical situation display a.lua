-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2751 (3085 with comment) chars

al=screen
H=map.mapToScreen
f,m,ab,ae,d,aM,aX=math,input,output,property,al,true,false
n,ba,aN,aL=m.getNumber,ab.setNumber,m.getBool,ab.setBool
Z,aB=ae.getNumber,ae.getBool
abs,cos,sin,floor,atan=f.abs,f.cos,f.sin,f.floor,f.atan
pi=f.pi
ah=pi*2
d=al
aP,aJ,aW,aR,ay,q,aE,aT,aO,o=d.drawText,d.drawTextBox,d.drawTriangle,d.drawTriangleF,d.drawRect,d.drawRectF,d.drawCircle,d.drawCircleF,d.drawClear,d.setColor
function x(ao,ag,av,aH)B=av-ao
t=aH-ag
if abs(B)>=abs(t)then
D=abs(B)else
D=abs(t)end
B=B/D
t=t/D
a=ao
b=ag
m=0
while(m<=D)do
q(a,b,1,1)a=a+B
b=b+t
m=m+1
end
end
function l(a,b,e)return{a=a or 0,b=b or 0,e=e or 0}end
function R(_,c)return l(_.a+c.a,_.b+c.b,_.e+c.e)end
function b_(_,c)return l(_.a*c.a,_.b*c.b,_.e*c.e)end
function z(_,v)return l(_.a*v,_.b*v,_.e*v)end
function au(_)return z(_,-1)end
function aU(_,c)return R(_,au(c))end
function aF(_)return f.sqrt(_.a*_.a+_.b*_.b+_.e*_.e)end
function aG(_,v)return z(_,1/v)end
function aV(_)return aG(_,aF(_))end
function P(_,c)return _.a*c.a+_.b*c.b+_.e*c.e
end
function ax(_,c)return l(_.b*c.e-_.e*c.b,_.e*c.a-_.a*c.e,_.a*c.b-_.b*c.a)end
function aK(an,S,A)local A=A or 1
return l(f.sin(an)*f.cos(S)*A,f.cos(an)*f.cos(S)*A,f.sin(S)*A)end
function aY(_,Y,X,V)return l(P(Y,_),P(X,_),P(V,_))end
function aQ(_,Y,X,V)return R(R(z(Y,_.a),z(X,_.b)),z(V,_.e))end
function af(_,min,max)return f.max(min,f.min(_,max))end
function ad(a)return floor(a+.5)end
aw=aB("Mode")aD=Z("R Max Rng")w=Z("X FOV")*pi
s=Z("Swep Lim")*ah+w
as={}az={}j,p=.5,0
function onTick()r=l(n(21),n(23),n(22))G=-n(20)*ah
ak,ac,am=n(24),n(25),n(26)N,aa,U=cos(ak),cos(ac),cos(am)ap,W,Q=sin(ak),sin(ac),sin(am)at=l(aa*U,-W,aa*Q)T=l(ap*Q+N*W*U,N*aa,-ap*U+N*W*Q)aS=ax(at,T)F=n(32)if F<.01 and F>-.01 then
p=p-p/5
else
p=af((p+F/160),-.1,.1)end
if j>=50 then p=0 end
j=af(j+(F/55*j/2.4)+p*j/2.4,.1,50)k=-atan(T.a,T.b)+pi
u,y=r.a,r.b
end
function onDraw()L,M=d.getWidth(),d.getHeight()d.setMapColorOcean(0,0,0)d.setMapColorShallows(2,2,2)d.setMapColorLand(7,7,7)d.setMapColorGrass(8,10,8)d.setMapColorSand(6,6,4)d.setMapColorSnow(25,25,26)d.drawMap(u,y,j)i,h=H(u,y,j,L,M,r.a,r.b)aZ,aC=H(u,y+aD,j,L,M,r.a,r.b)g=f.abs(aC-h)o(80,255,0,38)x(i,h,i+sin(G+k-w)*g,h+cos(G+k-w)*g)x(i,h,i+sin(G+k+w)*g,h+cos(G+k+w)*g)if aw then
o(0,180,0,23)x(i,h,i+sin(-s+k)*g,h+cos(-s+k)*g)x(i,h,i+sin(s+k)*g,h+cos(s+k)*g)do
O=-k-s+pi/2
aj=(-k+s+pi/2-O)/18
for m=1,18 do
ai=O+aj*m
ar=O+aj*(m-1)x(i+cos(ai)*g,h+sin(ai)*g,i+cos(ar)*g,h+sin(ar)*g)end
end
else
o(0,255,0,8)aE(i,h,g)end
for aq,C in ipairs(as)do
E,K=H(u,y,j,L,M,C.aA.a,C.aA.b)E,K=ad(E),ad(K)if aI==aq then
o(90,2,5)q(E-2,K-3,5,1)o(99,20,3)else
o(80,13,1)end
ay(E-1,K-1,2,2)end
o(0,40,255)for aq,C in pairs(az)do
local I,J=H(u,y,j,L,M,C.a,C.b)q(I,J-1,1,1)q(I+1,J,1,1)q(I,J+1,1,1)q(I-1,J,1,1)end
end
