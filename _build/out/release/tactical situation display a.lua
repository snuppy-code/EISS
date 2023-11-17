-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2868 (3202 with comment) chars

ak=screen
F=map.mapToScreen
h,o,ag,aj,c,aJ,aY=math,input,output,property,ak,true,false
l,aV,aZ,aW=o.getNumber,ag.setNumber,o.getBool,ag.setBool
R,aI=aj.getNumber,aj.getBool
abs,cos,sin,floor,atan=h.abs,h.cos,h.sin,h.floor,h.atan
pi=h.pi
as=pi*2
c=ak
aU,aX,aQ,aK,ay,t,aG,aN,aS,p=c.drawText,c.drawTextBox,c.drawTriangle,c.drawTriangleF,c.drawRect,c.drawRectF,c.drawCircle,c.drawCircleF,c.drawClear,c.setColor
function q(ao,au,aF,aE)w=aF-ao
C=aE-au
if abs(w)>=abs(C)then
G=abs(w)else
G=abs(C)end
w=w/G
C=C/G
a=ao
b=au
o=0
while(o<=G)do
t(a,b,1,1)a=a+w
b=b+C
o=o+1
end
end
function k(a,b,f)return{a=a or 0,b=b or 0,f=f or 0}end
function P(_,d)return k(_.a+d.a,_.b+d.b,_.f+d.f)end
function aL(_,d)return k(_.a*d.a,_.b*d.b,_.f*d.f)end
function y(_,A)return k(_.a*A,_.b*A,_.f*A)end
function aB(_)return y(_,-1)end
function ba(_,d)return P(_,aB(d))end
function aA(_)return h.sqrt(_.a*_.a+_.b*_.b+_.f*_.f)end
function az(_,A)return y(_,1/A)end
function aM(_)return az(_,aA(_))end
function Z(_,d)return _.a*d.a+_.b*d.b+_.f*d.f
end
function aD(_,d)return k(_.b*d.f-_.f*d.b,_.f*d.a-_.a*d.f,_.a*d.b-_.b*d.a)end
function aO(ap,S,B)local B=B or 1
return k(h.sin(ap)*h.cos(S)*B,h.cos(ap)*h.cos(S)*B,h.sin(S)*B)end
function aT(_,Q,Y,aa)return k(Z(Q,_),Z(Y,_),Z(aa,_))end
function aP(_,Q,Y,aa)return P(P(y(Q,_.a),y(Y,_.b)),y(aa,_.f))end
function ae(_,min,max)return h.max(min,h.min(_,max))end
function am(a)return floor(a+.5)end
aw=aI("Mode")ax=R("R Max Rng")n=R("X FOV")*pi
s=R("Swep Lim")*as+n
at={[1]={O=k()}}av={}m,r=7,0
function onTick()u=k(l(1),l(2),l(3))x=-l(27)*as
J=x+pi
at[1].O=k(l(23),l(24),l(25))ah,aq,an=l(4),l(5),l(6)ac,X,T=cos(ah),cos(aq),cos(an)al,W,U=sin(ah),sin(aq),sin(an)aH=k(X*T,-W,X*U)V=k(al*U+ac*W*T,ac*X,-al*T+ac*W*U)b_=aD(aH,V)K=l(26)if K<.01 and K>-.01 then
r=r-r/5
else
r=ae((r+K/160),-.1,.1)end
if m>=50 then r=0 end
m=ae(m+(K/55*m/2.4)+r*m/2.4,.1,50)j=-atan(V.a,V.b)+pi
D,z=u.a,u.b
end
function onDraw()L,M=c.getWidth(),c.getHeight()c.setMapColorOcean(0,0,0)c.setMapColorShallows(2,2,2)c.setMapColorLand(7,7,7)c.setMapColorGrass(8,10,8)c.setMapColorSand(6,6,4)c.setMapColorSnow(25,25,26)c.drawMap(D,z,m)i,g=F(D,z,m,L,M,u.a,u.b)bb,aC=F(D,z+ax,m,L,M,u.a,u.b)e=h.abs(aC-g)p(80,255,0,38)q(i,g,i+sin(x+j-n)*e,g+cos(x+j-n)*e)q(i,g,i+sin(x+j+n)*e,g+cos(x+j+n)*e)q(i,g,i+sin(J+j-n)*e,g+cos(J+j-n)*e)q(i,g,i+sin(J+j+n)*e,g+cos(J+j+n)*e)if aw then
p(0,180,0,23)q(i,g,i+sin(-s+j)*e,g+cos(-s+j)*e)q(i,g,i+sin(s+j)*e,g+cos(s+j)*e)do
ab=-j-s+pi/2
af=(-j+s+pi/2-ab)/18
for o=1,18 do
ar=ab+af*o
ad=ab+af*(o-1)q(i+cos(ar)*e,g+sin(ar)*e,i+cos(ad)*e,g+sin(ad)*e)end
end
else
p(0,255,0,8)aG(i,g,e)end
for ai,v in ipairs(at)do
I,H=F(D,z,m,L,M,v.O.a,v.O.b)I,H=am(I),am(H)if aR==ai then
p(90,2,5)t(I-2,H-3,5,1)p(99,20,3)else
p(80,13,1)end
ay(I-1,H-1,2,2)end
p(0,40,255)for ai,v in pairs(av)do
local N,E=F(D,z,m,L,M,v.a,v.b)t(N,E-1,1,1)t(N+1,E,1,1)t(N,E+1,1,1)t(N-1,E,1,1)end
end
