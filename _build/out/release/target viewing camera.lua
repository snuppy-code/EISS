-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2888 (3222 with comment) chars

E=property
ah=output
ai=input
u=screen
an=u.setColor
f=ai.getNumber
K=ah.setNumber
ba=ai.getBool
b_=ah.setBool
U=E.getNumber
aR=E.getBool
aT=E.getText
b=math
pi=b.pi
R=pi*2
sin=b.sin
cos=b.cos
tan=b.tan
asin=b.asin
acos=b.acos
atan=b.atan
function g(t,B,aJ,av)return{a=t
or 0,c=B
or 0,d=aJ
or 0,i=av
or 0}end
function z(_,e)return g(_.a+e.a,_.c+e.c,_.d+e.d)end
function bb(_,e)return g(_.a*e.a,_.c*e.c,_.d*e.d)end
function l(_,w)return g(_.a*w,_.c*w,_.d*w)end
function ar(_)return l(_,-1)end
function S(_,e)return z(_,ar(e))end
function s(_)return b.sqrt(_.a*_.a+_.c*_.c+_.d*_.d)end
function aP(_,w)return l(_,1/w)end
function bd(_)return aP(_,s(_))end
function N(_,e)return _.a*e.a+_.c*e.c+_.d*e.d
end
function aH(_,e)return g(_.c*e.d-_.d*e.c,_.d*e.a-_.a*e.d,_.a*e.c-_.c*e.a)end
function aY(v,H,x)local x=x
or 1
return g(b.sin(v)*b.cos(H)*x,b.cos(v)*b.cos(H)*x,b.sin(H)*x)end
function aC(_,o)if not m then
m={}m[o]={D=g(),M=g()}elseif not m[o]then
m[o]={D=g(),M=g()}end
m[o].M=S(_,m[o].D)m[o].D=_
return m[o].M
end
function au(_,F,A,Q)return g(N(F,_),N(A,_),N(Q,_))end
function aS(_,F,A,Q)return z(z(l(F,_.a),l(A,_.c)),l(Q,_.d))end
function aw(_)return s(_),b.atan(_.a,_.c),b.asin(_.d/s(_))end
function O(ae)local b={}for k=1,3 do
b[k]={}for r=1,3 do
b[k][r]=ae and ae[k*3-3+r]or 0
end
end
return b
end
function y(as,q)local b={}for k=1,3 do
b[k]={}for r=1,3 do
b[k][r]=0
for al=1,3 do
b[k][r]=b[k][r]+as[k][al]*q[al][r]end
end
end
return b
end
function X(j,i)local a={}a.a=i.a*j[1][1]+i.c*j[2][1]+i.d*j[3][1]a.c=i.a*j[1][2]+i.c*j[2][2]+i.d*j[3][2]a.d=i.a*j[1][3]+i.c*j[2][3]+i.d*j[3][3]return a end
function am(t,min,max)return b.max(min,b.min(t,max))end
function ax(t,B,q)return t*(1-q)+B*q end
aB=g(U("CAM X offset"),U("CAM Y offset"),U("CAM Z offset"))q=4
aX,aZ=0,0
aU,G,p,aW=.5,.88,0,0
function onTick()ac,ab,aj=f(4),f(5),f(6)P,W,J=cos(ac),cos(ab),cos(aj)Y,L,C=sin(ac),sin(ab),sin(aj)ag=g(W*J,-L,W*C)aq=g(Y*C+P*L*J,P*W,-Y*J+P*L*C)aE=aH(ag,aq)aA=ar(aq)I=l(g(f(10),f(12),f(11)),R/60)Z=aC(I,"angular_acc")ad=l(I,q)aK=z(ad,l(Z,.5*q^2))h=s(Z)>.001 and aK or(s(I)>.001 and ad or g(0,0,0))af=O({1,0,0,0,cos(h.a),-sin(h.a),0,sin(h.a),cos(h.a)})ao=O({cos(h.c),0,sin(h.c),0,1,0,-sin(h.c),0,cos(h.c)})aa=O({cos(h.d),-sin(h.d),0,sin(h.d),cos(h.d),0,0,0,1})aI=y(y(aa,ao),af)be=y(y(af,ao),aa)T=aI
aD=X(T,ag)aF=X(T,aE)aM=X(T,aA)ay=g(f(1),f(3),f(2))aL=g(f(13),f(14),f(15))ap=S(aL,ay)aO=S(au(ap,aD,aF,aM),aB)aV,aN,aQ=aw(aO)ak=f(16)==2
bc=f(17)>0
at=f(20)>0
if ak then
V=f(18)else
V=0
end
if at then
G=am(G+V*.004,.3,1)n=(atan(ax(tan(.0125),tan(1.1),G))-.0125)/(1.1-.0125)else
aG=b.min(f(19),99)az=s(ap)p=am(p+V*.001,-.1,.3)n=(.99/(1+.4*2.7^(-.014*az)))if(p+n)>1 then
p=1-n
elseif(p+n)<0 then
p=-n
end
n=n+p-aG/4000
end
K(1,-aN/R)K(2,aQ/R*2.942+.7355)K(3,n)end
function onDraw()i,v=u.getWidth(),u.getHeight()if ak then
an(1,1,1,200)u.drawRectF(2,v-6,12,5)an(85,160,35)u.drawText(2,v-6,"SOI")end
end
