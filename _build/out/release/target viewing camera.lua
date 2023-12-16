-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2841 (3146 with comment) chars

Q=property
ao=output
ah=input
u=screen
aa=u.setColor
g=ah.getNumber
F=ao.setNumber
ba=ah.getBool
aU=ao.setBool
aX=Q.getNumber
aQ=Q.getBool
aZ=Q.getText
b=math
pi=b.pi
G=pi*2
sin=b.sin
cos=b.cos
tan=b.tan
asin=b.asin
acos=b.acos
atan=b.atan
function f(t,B,aP,az)return{a=t
or 0,c=B
or 0,d=aP
or 0,i=az
or 0}end
function y(_,e)return f(_.a+e.a,_.c+e.c,_.d+e.d)end
function aR(_,e)return f(_.a*e.a,_.c*e.c,_.d*e.d)end
function l(_,x)return f(_.a*x,_.c*x,_.d*x)end
function aq(_)return l(_,-1)end
function J(_,e)return y(_,aq(e))end
function s(_)return b.sqrt(_.a*_.a+_.c*_.c+_.d*_.d)end
function aG(_,x)return l(_,1/x)end
function bc(_)return aG(_,s(_))end
function P(_,e)return _.a*e.a+_.c*e.c+_.d*e.d
end
function aM(_,e)return f(_.c*e.d-_.d*e.c,_.d*e.a-_.a*e.d,_.a*e.c-_.c*e.a)end
function aT(w,H,v)local v=v
or 1
return f(b.sin(w)*b.cos(H)*v,b.cos(w)*b.cos(H)*v,b.sin(H)*v)end
function aH(_,r)if not n then
n={}n[r]={E=f(),O=f()}elseif not n[r]then
n[r]={E=f(),O=f()}end
n[r].O=J(_,n[r].E)n[r].E=_
return n[r].O
end
function aI(_,U,R,N)return f(P(U,_),P(R,_),P(N,_))end
function bb(_,U,R,N)return y(y(l(U,_.a),l(R,_.c)),l(N,_.d))end
function aL(_)return s(_),b.atan(_.a,_.c),b.asin(_.d/s(_))end
function M(an)local b={}for j=1,3 do
b[j]={}for o=1,3 do
b[j][o]=an and an[j*3-3+o]or 0
end
end
return b
end
function z(aA,p)local b={}for j=1,3 do
b[j]={}for o=1,3 do
b[j][o]=0
for Z=1,3 do
b[j][o]=b[j][o]+aA[j][Z]*p[Z][o]end
end
end
return b
end
function D(k,i)local a={}a.a=i.a*k[1][1]+i.c*k[2][1]+i.d*k[3][1]a.c=i.a*k[1][2]+i.c*k[2][2]+i.d*k[3][2]a.d=i.a*k[1][3]+i.c*k[2][3]+i.d*k[3][3]return a end
function ab(t,min,max)return b.max(min,b.min(t,max))end
function aB(t,B,p)return t*(1-p)+B*p end
ay=f(0,1.5,-1)p=4
aY,b_=0,0
aW,L,q,aS=.5,.88,0,0
function onTick()am,Y,af=g(4),g(5),g(6)V,A,S=cos(am),cos(Y),cos(af)ac,I,K=sin(am),sin(Y),sin(af)ad=f(A*S,-I,A*K)ai=f(ac*K+V*I*S,V*A,-ac*S+V*I*K)ar=aM(ad,ai)as=aq(ai)T=l(f(g(10),g(12),g(11)),G/60)ag=aH(T,"angular_acc")aj=l(T,p)av=y(aj,l(ag,.5*p^2))h=s(ag)>.001 and av or(s(T)>.001 and aj or f(0,0,0))al=M({1,0,0,0,cos(h.a),-sin(h.a),0,sin(h.a),cos(h.a)})ap=M({cos(h.c),0,sin(h.c),0,1,0,-sin(h.c),0,cos(h.c)})ak=M({cos(h.d),-sin(h.d),0,sin(h.d),cos(h.d),0,0,0,1})aC=z(z(ak,ap),al)be=z(z(al,ap),ak)W=aC
aK=D(W,ad)aN=D(W,ar)at=D(W,as)ax=f(g(1),g(3),g(2))aO=f(g(13),g(14),g(15))X=J(aO,ax)aE=J(aI(X,aK,aN,at),ay)aV,aw,au=aL(aE)ae=g(16)==2
bd=g(17)>0
aF=g(20)>0
if ae then
C=g(18)else
C=0
end
if aF then
L=ab(L+C*.004,.3,1)m=(atan(aB(tan(.0125),tan(1.1),L))-.0125)/(1.1-.0125)else
aJ=b.min(g(19),99)aD=s(X)q=ab(q+C*.001,-.1,.3)m=(.99/(1+.4*2.7^(-.014*aD)))if(q+m)>1 then
q=1-m
elseif(q+m)<0 then
q=-m
end
m=m+q-aJ/4000
end
F(1,-aw/G)F(2,au/G*2.942+.7355)F(3,m)end
function onDraw()i,w=u.getWidth(),u.getHeight()if ae then
aa(1,1,1,200)u.drawRectF(2,w-6,12,5)aa(85,160,35)u.drawText(2,w-6,"SOI")end
end
