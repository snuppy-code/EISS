-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2868 (3202 with comment) chars

aq=screen
F=map.mapToScreen
h,o,af,at,c,aT,aM=math,input,output,property,aq,true,false
k,aX,aU,aV=o.getNumber,af.setNumber,o.getBool,af.setBool
R,av=at.getNumber,at.getBool
abs,cos,sin,floor,atan=h.abs,h.cos,h.sin,h.floor,h.atan
pi=h.pi
ai=pi*2
c=aq
aW,b_,aO,aS,az,s,aC,aJ,aK,p=c.drawText,c.drawTextBox,c.drawTriangle,c.drawTriangleF,c.drawRect,c.drawRectF,c.drawCircle,c.drawCircleF,c.drawClear,c.setColor
function r(ar,ap,aE,aA)D=aE-ar
C=aA-ap
if abs(D)>=abs(C)then
L=abs(D)else
L=abs(C)end
D=D/L
C=C/L
a=ar
b=ap
o=0
while(o<=L)do
s(a,b,1,1)a=a+D
b=b+C
o=o+1
end
end
function l(a,b,f)return{a=a or 0,b=b or 0,f=f or 0}end
function X(_,d)return l(_.a+d.a,_.b+d.b,_.f+d.f)end
function aN(_,d)return l(_.a*d.a,_.b*d.b,_.f*d.f)end
function z(_,B)return l(_.a*B,_.b*B,_.f*B)end
function aH(_)return z(_,-1)end
function aP(_,d)return X(_,aH(d))end
function aB(_)return h.sqrt(_.a*_.a+_.b*_.b+_.f*_.f)end
function aF(_,B)return z(_,1/B)end
function aY(_)return aF(_,aB(_))end
function aa(_,d)return _.a*d.a+_.b*d.b+_.f*d.f
end
function ax(_,d)return l(_.b*d.f-_.f*d.b,_.f*d.a-_.a*d.f,_.a*d.b-_.b*d.a)end
function bb(aj,V,w)local w=w or 1
return l(h.sin(aj)*h.cos(V)*w,h.cos(aj)*h.cos(V)*w,h.sin(V)*w)end
function ba(_,S,P,O)return l(aa(S,_),aa(P,_),aa(O,_))end
function aR(_,S,P,O)return X(X(z(S,_.a),z(P,_.b)),z(O,_.f))end
function al(_,min,max)return h.max(min,h.min(_,max))end
function an(a)return floor(a+.5)end
aw=av("Mode")ay=R("R Max Rng")n=R("X FOV")*pi
u=R("Swep Lim")*ai+n
ak={[1]={T=l()}}aD={}m,q=7,0
function onTick()t=l(k(1),k(2),k(3))A=-k(27)*ai
E=A+pi
ak[1].T=l(k(23),k(24),k(25))as,ad,ao=k(4),k(5),k(6)ac,Y,Q=cos(as),cos(ad),cos(ao)am,Z,U=sin(as),sin(ad),sin(ao)aI=l(Y*Q,-Z,Y*U)W=l(am*U+ac*Z*Q,ac*Y,-am*Q+ac*Z*U)aZ=ax(aI,W)H=k(26)if H<.01 and H>-.01 then
q=q-q/5
else
q=al((q+H/160),-.1,.1)end
if m>=50 then q=0 end
m=al(m+(H/55*m/2.4)+q*m/2.4,.1,50)j=-atan(W.a,W.b)+pi
v,x=t.a,t.b
end
function onDraw()I,K=c.getWidth(),c.getHeight()c.setMapColorOcean(0,0,0)c.setMapColorShallows(2,2,2)c.setMapColorLand(7,7,7)c.setMapColorGrass(8,10,8)c.setMapColorSand(6,6,4)c.setMapColorSnow(25,25,26)c.drawMap(v,x,m)i,g=F(v,x,m,I,K,t.a,t.b)aL,aG=F(v,x+ay,m,I,K,t.a,t.b)e=h.abs(aG-g)p(80,255,0,38)r(i,g,i+sin(A+j-n)*e,g+cos(A+j-n)*e)r(i,g,i+sin(A+j+n)*e,g+cos(A+j+n)*e)r(i,g,i+sin(E+j-n)*e,g+cos(E+j-n)*e)r(i,g,i+sin(E+j+n)*e,g+cos(E+j+n)*e)if aw then
p(0,180,0,23)r(i,g,i+sin(-u+j)*e,g+cos(-u+j)*e)r(i,g,i+sin(u+j)*e,g+cos(u+j)*e)do
ab=-j-u+pi/2
ae=(-j+u+pi/2-ab)/18
for o=1,18 do
ah=ab+ae*o
ag=ab+ae*(o-1)r(i+cos(ah)*e,g+sin(ah)*e,i+cos(ag)*e,g+sin(ag)*e)end
end
else
p(0,255,0,8)aC(i,g,e)end
for au,y in ipairs(ak)do
M,J=F(v,x,m,I,K,y.T.a,y.T.b)M,J=an(M),an(J)if aQ==au then
p(90,2,5)s(M-2,J-3,5,1)p(99,20,3)else
p(80,13,1)end
az(M-1,J-1,2,2)end
p(0,40,255)for au,y in pairs(aD)do
local N,G=F(v,x,m,I,K,y.a,y.b)s(N,G-1,1,1)s(N+1,G,1,1)s(N,G+1,1,1)s(N-1,G,1,1)end
end
