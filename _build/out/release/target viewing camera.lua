-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2841 (3175 with comment) chars

R=property
ak=output
ap=input
v=screen
X=v.setColor
f=ap.getNumber
E=ak.setNumber
aR=ap.getBool
aW=ak.setBool
aY=R.getNumber
aV=R.getBool
b_=R.getText
a=math
pi=a.pi
B=pi*2
sin=a.sin
cos=a.cos
tan=a.tan
asin=a.asin
acos=a.acos
atan=a.atan
function g(t,C,aL,aF)return{b=t
or 0,d=C
or 0,c=aL
or 0,i=aF
or 0}end
function y(_,e)return g(_.b+e.b,_.d+e.d,_.c+e.c)end
function ba(_,e)return g(_.b*e.b,_.d*e.d,_.c*e.c)end
function l(_,x)return g(_.b*x,_.d*x,_.c*x)end
function ah(_)return l(_,-1)end
function M(_,e)return y(_,ah(e))end
function s(_)return a.sqrt(_.b*_.b+_.d*_.d+_.c*_.c)end
function ar(_,x)return l(_,1/x)end
function aQ(_)return ar(_,s(_))end
function D(_,e)return _.b*e.b+_.d*e.d+_.c*e.c
end
function aD(_,e)return g(_.d*e.c-_.c*e.d,_.c*e.b-_.b*e.c,_.b*e.d-_.d*e.b)end
function aX(w,V,u)local u=u
or 1
return g(a.sin(w)*a.cos(V)*u,a.cos(w)*a.cos(V)*u,a.sin(V)*u)end
function aK(_,p)if not m then
m={}m[p]={G=g(),F=g()}elseif not m[p]then
m[p]={G=g(),F=g()}end
m[p].F=M(_,m[p].G)m[p].G=_
return m[p].F
end
function az(_,Q,A,H)return g(D(Q,_),D(A,_),D(H,_))end
function bb(_,Q,A,H)return y(y(l(Q,_.b),l(A,_.d)),l(H,_.c))end
function ax(_)return s(_),a.atan(_.b,_.d),a.asin(_.c/s(_))end
function J(ac)local a={}for k=1,3 do
a[k]={}for r=1,3 do
a[k][r]=ac and ac[k*3-3+r]or 0
end
end
return a
end
function z(aN,q)local a={}for k=1,3 do
a[k]={}for r=1,3 do
a[k][r]=0
for ao=1,3 do
a[k][r]=a[k][r]+aN[k][ao]*q[ao][r]end
end
end
return a
end
function P(j,i)local b={}b.b=i.b*j[1][1]+i.d*j[2][1]+i.c*j[3][1]b.d=i.b*j[1][2]+i.d*j[2][2]+i.c*j[3][2]b.c=i.b*j[1][3]+i.d*j[2][3]+i.c*j[3][3]return b end
function ae(t,min,max)return a.max(min,a.min(t,max))end
function aP(t,C,q)return t*(1-q)+C*q end
as=g(0,1.5,-1)q=4
be,aU=0,0
bd,L,o,bc=.5,.88,0,0
function onTick()ad,Y,Z=f(4),f(5),f(6)U,W,T=cos(ad),cos(Y),cos(Z)aq,K,O=sin(ad),sin(Y),sin(Z)ab=g(W*T,-K,W*O)ag=g(aq*O+U*K*T,U*W,-aq*T+U*K*O)au=aD(ab,ag)av=ah(ag)S=l(g(f(10),f(12),f(11)),B/60)an=aK(S,"angular_acc")am=l(S,q)at=y(am,l(an,.5*q^2))h=s(an)>.001 and at or(s(S)>.001 and am or g(0,0,0))aj=J({1,0,0,0,cos(h.b),-sin(h.b),0,sin(h.b),cos(h.b)})ai=J({cos(h.d),0,sin(h.d),0,1,0,-sin(h.d),0,cos(h.d)})aa=J({cos(h.c),-sin(h.c),0,sin(h.c),cos(h.c),0,0,0,1})aA=z(z(aa,ai),aj)aZ=z(z(aj,ai),aa)I=aA
aw=P(I,ab)aM=P(I,au)aO=P(I,av)aG=g(f(1),f(3),f(2))aH=g(f(13),f(14),f(15))al=M(aH,aG)aJ=M(az(al,aw,aM,aO),as)aS,aE,aI=ax(aJ)af=f(16)==2
aT=f(17)>0
aB=f(20)>0
if af then
N=f(18)else
N=0
end
if aB then
L=ae(L+N*.004,.3,1)n=(atan(aP(tan(.0125),tan(1.1),L))-.0125)/(1.1-.0125)else
ay=a.min(f(19),99)aC=s(al)o=ae(o+N*.001,-.1,.3)n=(.99/(1+.4*2.7^(-.014*aC)))if(o+n)>1 then
o=1-n
elseif(o+n)<0 then
o=-n
end
n=n+o-ay/4000
end
E(1,-aE/B)E(2,aI/B*2.942+.7355)E(3,n)end
function onDraw()i,w=v.getWidth(),v.getHeight()if af then
X(1,1,1,200)v.drawRectF(2,w-6,12,5)X(85,160,35)v.drawText(2,w-6,"SOI")end
end
