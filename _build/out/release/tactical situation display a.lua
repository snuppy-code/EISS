-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2751 (3085 with comment) chars

am=screen
I=map.mapToScreen
f,l,ak,af,d,aL,aN=math,input,output,property,am,true,false
n,aJ,aY,aQ=l.getNumber,ak.setNumber,l.getBool,ak.setBool
W,aw=af.getNumber,af.getBool
abs,cos,sin,floor,atan=f.abs,f.cos,f.sin,f.floor,f.atan
pi=f.pi
ar=pi*2
d=am
aK,aO,aV,aM,aH,s,av,aT,aZ,o=d.drawText,d.drawTextBox,d.drawTriangle,d.drawTriangleF,d.drawRect,d.drawRectF,d.drawCircle,d.drawCircleF,d.drawClear,d.setColor
function C(ae,ac,aD,aG)u=aD-ae
A=aG-ac
if abs(u)>=abs(A)then
K=abs(u)else
K=abs(A)end
u=u/K
A=A/K
a=ae
b=ac
l=0
while(l<=K)do
s(a,b,1,1)a=a+u
b=b+A
l=l+1
end
end
function m(a,b,e)return{a=a or 0,b=b or 0,e=e or 0}end
function N(_,c)return m(_.a+c.a,_.b+c.b,_.e+c.e)end
function aS(_,c)return m(_.a*c.a,_.b*c.b,_.e*c.e)end
function x(_,B)return m(_.a*B,_.b*B,_.e*B)end
function aA(_)return x(_,-1)end
function ba(_,c)return N(_,aA(c))end
function az(_)return f.sqrt(_.a*_.a+_.b*_.b+_.e*_.e)end
function au(_,B)return x(_,1/B)end
function aU(_)return au(_,az(_))end
function V(_,c)return _.a*c.a+_.b*c.b+_.e*c.e
end
function aF(_,c)return m(_.b*c.e-_.e*c.b,_.e*c.a-_.a*c.e,_.a*c.b-_.b*c.a)end
function aI(aq,Z,y)local y=y or 1
return m(f.sin(aq)*f.cos(Z)*y,f.cos(aq)*f.cos(Z)*y,f.sin(Z)*y)end
function aR(_,S,X,T)return m(V(S,_),V(X,_),V(T,_))end
function aX(_,S,X,T)return N(N(x(S,_.a),x(X,_.b)),x(T,_.e))end
function al(_,min,max)return f.max(min,f.min(_,max))end
function an(a)return floor(a+.5)end
ay=aw("Mode")ax=W("R Max Rng")w=W("X FOV")*pi
q=W("Swep Lim")*ar+w
at={}aC={}j,p=.5,0
function onTick()r=m(n(21),n(23),n(22))F=-n(20)*ar
ad,ag,ab=n(24),n(25),n(26)aa,O,R=cos(ad),cos(ag),cos(ab)ap,U,Y=sin(ad),sin(ag),sin(ab)aB=m(O*R,-U,O*Y)Q=m(ap*Y+aa*U*R,aa*O,-ap*R+aa*U*Y)b_=aF(aB,Q)L=n(32)if L<.01 and L>-.01 then
p=p-p/5
else
p=al((p+L/160),-.1,.1)end
if j>=50 then p=0 end
j=al(j+(L/55*j/2.4)+p*j/2.4,.1,50)k=-atan(Q.a,Q.b)+pi
t,v=r.a,r.b
end
function onDraw()G,E=d.getWidth(),d.getHeight()d.setMapColorOcean(0,0,0)d.setMapColorShallows(2,2,2)d.setMapColorLand(7,7,7)d.setMapColorGrass(8,10,8)d.setMapColorSand(6,6,4)d.setMapColorSnow(25,25,26)d.drawMap(t,v,j)i,h=I(t,v,j,G,E,r.a,r.b)aW,as=I(t,v+ax,j,G,E,r.a,r.b)g=f.abs(as-h)o(80,255,0,38)C(i,h,i+sin(F+k-w)*g,h+cos(F+k-w)*g)C(i,h,i+sin(F+k+w)*g,h+cos(F+k+w)*g)if ay then
o(0,180,0,23)C(i,h,i+sin(-q+k)*g,h+cos(-q+k)*g)C(i,h,i+sin(q+k)*g,h+cos(q+k)*g)do
P=-k-q+pi/2
aj=(-k+q+pi/2-P)/18
for l=1,18 do
ai=P+aj*l
ao=P+aj*(l-1)C(i+cos(ai)*g,h+sin(ai)*g,i+cos(ao)*g,h+sin(ao)*g)end
end
else
o(0,255,0,8)av(i,h,g)end
for ah,z in ipairs(at)do
M,H=I(t,v,j,G,E,z.aE.a,z.aE.b)M,H=an(M),an(H)if aP==ah then
o(90,2,5)s(M-2,H-3,5,1)o(99,20,3)else
o(80,13,1)end
aH(M-1,H-1,2,2)end
o(0,40,255)for ah,z in pairs(aC)do
local D,J=I(t,v,j,G,E,z.a,z.b)s(D,J-1,1,1)s(D+1,J,1,1)s(D,J+1,1,1)s(D-1,J,1,1)end
end
