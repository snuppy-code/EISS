-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2841 (3175 with comment) chars

F=property
af=output
al=input
w=screen
ap=w.setColor
g=al.getNumber
A=af.setNumber
ba=al.getBool
bb=af.setBool
aY=F.getNumber
bd=F.getBool
aR=F.getText
b=math
pi=b.pi
B=pi*2
sin=b.sin
cos=b.cos
tan=b.tan
asin=b.asin
acos=b.acos
atan=b.atan
function f(t,V,aE,aL)return{a=t
or 0,d=V
or 0,c=aE
or 0,i=aL
or 0}end
function z(_,e)return f(_.a+e.a,_.d+e.d,_.c+e.c)end
function aT(_,e)return f(_.a*e.a,_.d*e.d,_.c*e.c)end
function m(_,x)return f(_.a*x,_.d*x,_.c*x)end
function ae(_)return m(_,-1)end
function C(_,e)return z(_,ae(e))end
function s(_)return b.sqrt(_.a*_.a+_.d*_.d+_.c*_.c)end
function aG(_,x)return m(_,1/x)end
function aS(_)return aG(_,s(_))end
function O(_,e)return _.a*e.a+_.d*e.d+_.c*e.c
end
function ay(_,e)return f(_.d*e.c-_.c*e.d,_.c*e.a-_.a*e.c,_.a*e.d-_.d*e.a)end
function aQ(u,W,v)local v=v
or 1
return f(b.sin(u)*b.cos(W)*v,b.cos(u)*b.cos(W)*v,b.sin(W)*v)end
function at(_,o)if not n then
n={}n[o]={D=f(),E=f()}elseif not n[o]then
n[o]={D=f(),E=f()}end
n[o].E=C(_,n[o].D)n[o].D=_
return n[o].E
end
function aw(_,L,T,S)return f(O(L,_),O(T,_),O(S,_))end
function be(_,L,T,S)return z(z(m(L,_.a),m(T,_.d)),m(S,_.c))end
function az(_)return s(_),b.atan(_.a,_.d),b.asin(_.c/s(_))end
function J(ai)local b={}for j=1,3 do
b[j]={}for r=1,3 do
b[j][r]=ai and ai[j*3-3+r]or 0
end
end
return b
end
function y(aP,p)local b={}for j=1,3 do
b[j]={}for r=1,3 do
b[j][r]=0
for Y=1,3 do
b[j][r]=b[j][r]+aP[j][Y]*p[Y][r]end
end
end
return b
end
function I(k,i)local a={}a.a=i.a*k[1][1]+i.d*k[2][1]+i.c*k[3][1]a.d=i.a*k[1][2]+i.d*k[2][2]+i.c*k[3][2]a.c=i.a*k[1][3]+i.d*k[2][3]+i.c*k[3][3]return a end
function ak(t,min,max)return b.max(min,b.min(t,max))end
function aN(t,V,p)return t*(1-p)+V*p end
aI=f(0,1.5,-1)p=4
aX,b_=0,0
aV,K,q,bc=.5,.88,0,0
function onTick()ab,aa,X=g(4),g(5),g(6)N,G,M=cos(ab),cos(aa),cos(X)aq,U,P=sin(ab),sin(aa),sin(X)ag=f(G*M,-U,G*P)ao=f(aq*P+N*U*M,N*G,-aq*M+N*U*P)aA=ay(ag,ao)au=ae(ao)H=m(f(g(10),g(12),g(11)),B/60)ac=at(H,"angular_acc")Z=m(H,p)aM=z(Z,m(ac,.5*p^2))h=s(ac)>.001 and aM or(s(H)>.001 and Z or f(0,0,0))an=J({1,0,0,0,cos(h.a),-sin(h.a),0,sin(h.a),cos(h.a)})ad=J({cos(h.d),0,sin(h.d),0,1,0,-sin(h.d),0,cos(h.d)})ah=J({cos(h.c),-sin(h.c),0,sin(h.c),cos(h.c),0,0,0,1})aO=y(y(ah,ad),an)aZ=y(y(an,ad),ah)Q=aO
aC=I(Q,ag)aK=I(Q,aA)as=I(Q,au)ax=f(g(1),g(3),g(2))aJ=f(g(13),g(14),g(15))aj=C(aJ,ax)aD=C(aw(aj,aC,aK,as),aI)aW,aF,aH=az(aD)am=g(16)==2
aU=g(17)>0
aB=g(20)>0
if am then
R=g(18)else
R=0
end
if aB then
K=ak(K+R*.004,.3,1)l=(atan(aN(tan(.0125),tan(1.1),K))-.0125)/(1.1-.0125)else
av=b.min(g(19),99)ar=s(aj)q=ak(q+R*.001,-.1,.3)l=(.99/(1+.4*2.7^(-.014*ar)))if(q+l)>1 then
q=1-l
elseif(q+l)<0 then
q=-l
end
l=l+q-av/4000
end
A(1,-aF/B)A(2,aH/B*2.942+.7355)A(3,l)end
function onDraw()i,u=w.getWidth(),w.getHeight()if am then
ap(1,1,1,200)w.drawRectF(2,u-6,12,5)ap(85,160,35)w.drawText(2,u-6,"SOI")end
end
