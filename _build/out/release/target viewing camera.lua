-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2841 (3146 with comment) chars

I=property
ag=output
ah=input
x=screen
ak=x.setColor
f=ah.getNumber
N=ag.setNumber
aZ=ah.getBool
aW=ag.setBool
bc=I.getNumber
aR=I.getBool
ba=I.getText
b=math
pi=b.pi
H=pi*2
sin=b.sin
cos=b.cos
tan=b.tan
asin=b.asin
acos=b.acos
atan=b.atan
function g(u,D,aG,ay)return{a=u
or 0,c=D
or 0,d=aG
or 0,i=ay
or 0}end
function z(_,e)return g(_.a+e.a,_.c+e.c,_.d+e.d)end
function bd(_,e)return g(_.a*e.a,_.c*e.c,_.d*e.d)end
function n(_,v)return g(_.a*v,_.c*v,_.d*v)end
function ap(_)return n(_,-1)end
function R(_,e)return z(_,ap(e))end
function s(_)return b.sqrt(_.a*_.a+_.c*_.c+_.d*_.d)end
function aM(_,v)return n(_,1/v)end
function be(_)return aM(_,s(_))end
function U(_,e)return _.a*e.a+_.c*e.c+_.d*e.d
end
function ar(_,e)return g(_.c*e.d-_.d*e.c,_.d*e.a-_.a*e.d,_.a*e.c-_.c*e.a)end
function aT(t,O,w)local w=w
or 1
return g(b.sin(t)*b.cos(O)*w,b.cos(t)*b.cos(O)*w,b.sin(O)*w)end
function at(_,p)if not m then
m={}m[p]={F=g(),C=g()}elseif not m[p]then
m[p]={F=g(),C=g()}end
m[p].C=R(_,m[p].F)m[p].F=_
return m[p].C
end
function au(_,M,T,S)return g(U(M,_),U(T,_),U(S,_))end
function b_(_,M,T,S)return z(z(n(M,_.a),n(T,_.c)),n(S,_.d))end
function av(_)return s(_),b.atan(_.a,_.c),b.asin(_.d/s(_))end
function K(aq)local b={}for j=1,3 do
b[j]={}for r=1,3 do
b[j][r]=aq and aq[j*3-3+r]or 0
end
end
return b
end
function y(aN,o)local b={}for j=1,3 do
b[j]={}for r=1,3 do
b[j][r]=0
for Z=1,3 do
b[j][r]=b[j][r]+aN[j][Z]*o[Z][r]end
end
end
return b
end
function Q(k,i)local a={}a.a=i.a*k[1][1]+i.c*k[2][1]+i.d*k[3][1]a.c=i.a*k[1][2]+i.c*k[2][2]+i.d*k[3][2]a.d=i.a*k[1][3]+i.c*k[2][3]+i.d*k[3][3]return a end
function an(u,min,max)return b.max(min,b.min(u,max))end
function aL(u,D,o)return u*(1-o)+D*o end
as=g(0,1.5,-1)o=4
aX,aU=0,0
aS,W,q,bb=.5,.88,0,0
function onTick()ad,ai,aj=f(4),f(5),f(6)A,G,L=cos(ad),cos(ai),cos(aj)ac,E,B=sin(ad),sin(ai),sin(aj)af=g(G*L,-E,G*B)aa=g(ac*B+A*E*L,A*G,-ac*L+A*E*B)aA=ar(af,aa)aB=ap(aa)V=n(g(f(10),f(12),f(11)),H/60)Y=at(V,"angular_acc")ao=n(V,o)aP=z(ao,n(Y,.5*o^2))h=s(Y)>.001 and aP or(s(V)>.001 and ao or g(0,0,0))ae=K({1,0,0,0,cos(h.a),-sin(h.a),0,sin(h.a),cos(h.a)})al=K({cos(h.c),0,sin(h.c),0,1,0,-sin(h.c),0,cos(h.c)})ab=K({cos(h.d),-sin(h.d),0,sin(h.d),cos(h.d),0,0,0,1})ax=y(y(ab,al),ae)aQ=y(y(ae,al),ab)P=ax
aF=Q(P,af)az=Q(P,aA)aO=Q(P,aB)aI=g(f(1),f(3),f(2))aw=g(f(13),f(14),f(15))am=R(aw,aI)aC=R(au(am,aF,az,aO),as)aV,aH,aE=av(aC)X=f(16)==2
aY=f(17)>0
aJ=f(20)>0
if X then
J=f(18)else
J=0
end
if aJ then
W=an(W+J*.004,.3,1)l=(atan(aL(tan(.0125),tan(1.1),W))-.0125)/(1.1-.0125)else
aK=b.min(f(19),99)aD=s(am)q=an(q+J*.001,-.1,.3)l=(.99/(1+.4*2.7^(-.014*aD)))if(q+l)>1 then
q=1-l
elseif(q+l)<0 then
q=-l
end
l=l+q-aK/4000
end
N(1,-aH/H)N(2,aE/H*2.942+.7355)N(3,l)end
function onDraw()i,t=x.getWidth(),x.getHeight()if X then
ak(1,1,1,200)x.drawRectF(2,t-6,12,5)ak(85,160,35)x.drawText(2,t-6,"SOI")end
end
