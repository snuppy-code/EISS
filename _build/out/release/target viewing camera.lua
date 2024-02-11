-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2841 (3146 with comment) chars

Q=property
aa=output
ao=input
u=screen
ac=u.setColor
g=ao.getNumber
W=aa.setNumber
bc=ao.getBool
aR=aa.setBool
aQ=Q.getNumber
aV=Q.getBool
aZ=Q.getText
b=math
pi=b.pi
P=pi*2
sin=b.sin
cos=b.cos
tan=b.tan
asin=b.asin
acos=b.acos
atan=b.atan
function f(t,T,aE,aC)return{a=t
or 0,d=T
or 0,c=aE
or 0,i=aC
or 0}end
function z(_,e)return f(_.a+e.a,_.d+e.d,_.c+e.c)end
function ba(_,e)return f(_.a*e.a,_.d*e.d,_.c*e.c)end
function l(_,v)return f(_.a*v,_.d*v,_.c*v)end
function ab(_)return l(_,-1)end
function I(_,e)return z(_,ab(e))end
function s(_)return b.sqrt(_.a*_.a+_.d*_.d+_.c*_.c)end
function au(_,v)return l(_,1/v)end
function aY(_)return au(_,s(_))end
function J(_,e)return _.a*e.a+_.d*e.d+_.c*e.c
end
function aI(_,e)return f(_.d*e.c-_.c*e.d,_.c*e.a-_.a*e.c,_.a*e.d-_.d*e.a)end
function bb(x,G,w)local w=w
or 1
return f(b.sin(x)*b.cos(G)*w,b.cos(x)*b.cos(G)*w,b.sin(G)*w)end
function aP(_,r)if not m then
m={}m[r]={F=f(),L=f()}elseif not m[r]then
m[r]={F=f(),L=f()}end
m[r].L=I(_,m[r].F)m[r].F=_
return m[r].L
end
function aH(_,K,R,O)return f(J(K,_),J(R,_),J(O,_))end
function aX(_,K,R,O)return z(z(l(K,_.a),l(R,_.d)),l(O,_.c))end
function aA(_)return s(_),b.atan(_.a,_.d),b.asin(_.c/s(_))end
function N(af)local b={}for k=1,3 do
b[k]={}for o=1,3 do
b[k][o]=af and af[k*3-3+o]or 0
end
end
return b
end
function y(aM,q)local b={}for k=1,3 do
b[k]={}for o=1,3 do
b[k][o]=0
for Y=1,3 do
b[k][o]=b[k][o]+aM[k][Y]*q[Y][o]end
end
end
return b
end
function A(j,i)local a={}a.a=i.a*j[1][1]+i.d*j[2][1]+i.c*j[3][1]a.d=i.a*j[1][2]+i.d*j[2][2]+i.c*j[3][2]a.c=i.a*j[1][3]+i.d*j[2][3]+i.c*j[3][3]return a end
function ad(t,min,max)return b.max(min,b.min(t,max))end
function as(t,T,q)return t*(1-q)+T*q end
aF=f(0,1.5,-1)q=4
aS,bd=0,0
aU,H,p,aW=.5,.88,0,0
function onTick()ae,X,ak=g(4),g(5),g(6)U,C,M=cos(ae),cos(X),cos(ak)al,S,B=sin(ae),sin(X),sin(ak)am=f(C*M,-S,C*B)ag=f(al*B+U*S*M,U*C,-al*M+U*S*B)aG=aI(am,ag)aJ=ab(ag)E=l(f(g(10),g(12),g(11)),P/60)ai=aP(E,"angular_acc")Z=l(E,q)av=z(Z,l(ai,.5*q^2))h=s(ai)>.001 and av or(s(E)>.001 and Z or f(0,0,0))an=N({1,0,0,0,cos(h.a),-sin(h.a),0,sin(h.a),cos(h.a)})ap=N({cos(h.d),0,sin(h.d),0,1,0,-sin(h.d),0,cos(h.d)})aq=N({cos(h.c),-sin(h.c),0,sin(h.c),cos(h.c),0,0,0,1})aD=y(y(aq,ap),an)b_=y(y(an,ap),aq)V=aD
aO=A(V,am)aN=A(V,aG)aK=A(V,aJ)az=f(g(1),g(3),g(2))ar=f(g(13),g(14),g(15))ah=I(ar,az)aL=I(aH(ah,aO,aN,aK),aF)be,aB,ax=aA(aL)aj=g(16)==2
aT=g(17)>0
ay=g(20)>0
if aj then
D=g(18)else
D=0
end
if ay then
H=ad(H+D*.004,.3,1)n=(atan(as(tan(.0125),tan(1.1),H))-.0125)/(1.1-.0125)else
at=b.min(g(19),99)aw=s(ah)p=ad(p+D*.001,-.1,.3)n=(.99/(1+.4*2.7^(-.014*aw)))if(p+n)>1 then
p=1-n
elseif(p+n)<0 then
p=-n
end
n=n+p-at/4000
end
W(1,-aB/P)W(2,ax/P*2.942+.7355)W(3,n)end
function onDraw()i,x=u.getWidth(),u.getHeight()if aj then
ac(1,1,1,200)u.drawRectF(2,x-6,12,5)ac(85,160,35)u.drawText(2,x-6,"SOI")end
end
