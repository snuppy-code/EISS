-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2841 (3175 with comment) chars

O=property
aj=output
X=input
v=screen
ag=v.setColor
g=X.getNumber
M=aj.setNumber
aX=X.getBool
be=aj.setBool
aU=O.getNumber
aW=O.getBool
aR=O.getText
a=math
pi=a.pi
Q=pi*2
sin=a.sin
cos=a.cos
tan=a.tan
asin=a.asin
acos=a.acos
atan=a.atan
function f(x,N,aE,aA)return{b=x
or 0,c=N
or 0,d=aE
or 0,i=aA
or 0}end
function z(_,e)return f(_.b+e.b,_.c+e.c,_.d+e.d)end
function b_(_,e)return f(_.b*e.b,_.c*e.c,_.d*e.d)end
function l(_,u)return f(_.b*u,_.c*u,_.d*u)end
function an(_)return l(_,-1)end
function U(_,e)return z(_,an(e))end
function s(_)return a.sqrt(_.b*_.b+_.c*_.c+_.d*_.d)end
function az(_,u)return l(_,1/u)end
function ba(_)return az(_,s(_))end
function G(_,e)return _.b*e.b+_.c*e.c+_.d*e.d
end
function aC(_,e)return f(_.c*e.d-_.d*e.c,_.d*e.b-_.b*e.d,_.b*e.c-_.c*e.b)end
function aV(w,W,t)local t=t
or 1
return f(a.sin(w)*a.cos(W)*t,a.cos(w)*a.cos(W)*t,a.sin(W)*t)end
function ax(_,q)if not n then
n={}n[q]={S=f(),J=f()}elseif not n[q]then
n[q]={S=f(),J=f()}end
n[q].J=U(_,n[q].S)n[q].S=_
return n[q].J
end
function aF(_,V,E,K)return f(G(V,_),G(E,_),G(K,_))end
function aQ(_,V,E,K)return z(z(l(V,_.b),l(E,_.c)),l(K,_.d))end
function au(_)return s(_),a.atan(_.b,_.c),a.asin(_.d/s(_))end
function P(ad)local a={}for k=1,3 do
a[k]={}for p=1,3 do
a[k][p]=ad and ad[k*3-3+p]or 0
end
end
return a
end
function y(ar,o)local a={}for k=1,3 do
a[k]={}for p=1,3 do
a[k][p]=0
for al=1,3 do
a[k][p]=a[k][p]+ar[k][al]*o[al][p]end
end
end
return a
end
function L(j,i)local b={}b.b=i.b*j[1][1]+i.c*j[2][1]+i.d*j[3][1]b.c=i.b*j[1][2]+i.c*j[2][2]+i.d*j[3][2]b.d=i.b*j[1][3]+i.c*j[2][3]+i.d*j[3][3]return b end
function ac(x,min,max)return a.max(min,a.min(x,max))end
function ay(x,N,o)return x*(1-o)+N*o end
aN=f(0,1.5,-1)o=4
aZ,bb=0,0
aT,A,r,aS=.5,.88,0,0
function onTick()Y,ah,am=g(4),g(5),g(6)D,R,F=cos(Y),cos(ah),cos(am)ab,C,B=sin(Y),sin(ah),sin(am)af=f(R*F,-C,R*B)Z=f(ab*B+D*C*F,D*R,-ab*F+D*C*B)aw=aC(af,Z)aB=an(Z)I=l(f(g(10),g(12),g(11)),Q/60)ae=ax(I,"angular_acc")aa=l(I,o)aJ=z(aa,l(ae,.5*o^2))h=s(ae)>.001 and aJ or(s(I)>.001 and aa or f(0,0,0))aq=P({1,0,0,0,cos(h.b),-sin(h.b),0,sin(h.b),cos(h.b)})ao=P({cos(h.c),0,sin(h.c),0,1,0,-sin(h.c),0,cos(h.c)})ap=P({cos(h.d),-sin(h.d),0,sin(h.d),cos(h.d),0,0,0,1})aI=y(y(ap,ao),aq)bc=y(y(aq,ao),ap)T=aI
aG=L(T,af)at=L(T,aw)aK=L(T,aB)aM=f(g(1),g(3),g(2))aO=f(g(13),g(14),g(15))ai=U(aO,aM)aP=U(aF(ai,aG,at,aK),aN)aY,av,aH=au(aP)ak=g(16)==2
bd=g(17)>0
aD=g(20)>0
if ak then
H=g(18)else
H=0
end
if aD then
A=ac(A+H*.004,.3,1)m=(atan(ay(tan(.0125),tan(1.1),A))-.0125)/(1.1-.0125)else
aL=a.min(g(19),99)as=s(ai)r=ac(r+H*.001,-.1,.3)m=(.99/(1+.4*2.7^(-.014*as)))if(r+m)>1 then
r=1-m
elseif(r+m)<0 then
r=-m
end
m=m+r-aL/4000
end
M(1,-av/Q)M(2,aH/Q*2.942+.7355)M(3,m)end
function onDraw()i,w=v.getWidth(),v.getHeight()if ak then
ag(1,1,1,200)v.drawRectF(2,w-6,12,5)ag(85,160,35)v.drawText(2,w-6,"SOI")end
end
