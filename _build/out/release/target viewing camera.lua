-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2888 (3255 with comment) chars

A=property
ab=output
Y=input
v=screen
al=v.setColor
f=Y.getNumber
C=ab.setNumber
aT=Y.getBool
aR=ab.setBool
K=A.getNumber
ba=A.getBool
aZ=A.getText
b=math
pi=b.pi
V=pi*2
sin=b.sin
cos=b.cos
tan=b.tan
asin=b.asin
acos=b.acos
atan=b.atan
function g(u,R,ax,aH)return{a=u
or 0,c=R
or 0,d=ax
or 0,i=aH
or 0}end
function z(_,e)return g(_.a+e.a,_.c+e.c,_.d+e.d)end
function aU(_,e)return g(_.a*e.a,_.c*e.c,_.d*e.d)end
function l(_,w)return g(_.a*w,_.c*w,_.d*w)end
function an(_)return l(_,-1)end
function H(_,e)return z(_,an(e))end
function s(_)return b.sqrt(_.a*_.a+_.c*_.c+_.d*_.d)end
function as(_,w)return l(_,1/w)end
function aS(_)return as(_,s(_))end
function M(_,e)return _.a*e.a+_.c*e.c+_.d*e.d
end
function aL(_,e)return g(_.c*e.d-_.d*e.c,_.d*e.a-_.a*e.d,_.a*e.c-_.c*e.a)end
function bb(x,N,t)local t=t
or 1
return g(b.sin(x)*b.cos(N)*t,b.cos(x)*b.cos(N)*t,b.sin(N)*t)end
function aQ(_,p)if not n then
n={}n[p]={S=g(),B=g()}elseif not n[p]then
n[p]={S=g(),B=g()}end
n[p].B=H(_,n[p].S)n[p].S=_
return n[p].B
end
function az(_,L,O,W)return g(M(L,_),M(O,_),M(W,_))end
function aX(_,L,O,W)return z(z(l(L,_.a),l(O,_.c)),l(W,_.d))end
function aO(_)return s(_),b.atan(_.a,_.c),b.asin(_.d/s(_))end
function U(aq)local b={}for j=1,3 do
b[j]={}for r=1,3 do
b[j][r]=aq and aq[j*3-3+r]or 0
end
end
return b
end
function y(aA,o)local b={}for j=1,3 do
b[j]={}for r=1,3 do
b[j][r]=0
for ao=1,3 do
b[j][r]=b[j][r]+aA[j][ao]*o[ao][r]end
end
end
return b
end
function I(k,i)local a={}a.a=i.a*k[1][1]+i.c*k[2][1]+i.d*k[3][1]a.c=i.a*k[1][2]+i.c*k[2][2]+i.d*k[3][2]a.d=i.a*k[1][3]+i.c*k[2][3]+i.d*k[3][3]return a end
function ap(u,min,max)return b.max(min,b.min(u,max))end
function aP(u,R,o)return u*(1-o)+R*o end
aK=g(K("CAM X offset"),K("CAM Y offset"),K("CAM Z offset"))o=4
b_,aV=0,0
aW,J,q,bd=.5,.88,0,0
function onTick()aj,Z,ar=f(4),f(5),f(6)G,T,X=cos(aj),cos(Z),cos(ar)ac,E,F=sin(aj),sin(Z),sin(ar)ae=g(T*X,-E,T*F)aa=g(ac*F+G*E*X,G*T,-ac*X+G*E*F)av=aL(ae,aa)aG=an(aa)Q=l(g(f(10),f(12),f(11)),V/60)ai=aQ(Q,"angular_acc")ah=l(Q,o)au=z(ah,l(ai,.5*o^2))h=s(ai)>.001 and au or(s(Q)>.001 and ah or g(0,0,0))af=U({1,0,0,0,cos(h.a),-sin(h.a),0,sin(h.a),cos(h.a)})ag=U({cos(h.c),0,sin(h.c),0,1,0,-sin(h.c),0,cos(h.c)})ak=U({cos(h.d),-sin(h.d),0,sin(h.d),cos(h.d),0,0,0,1})aE=y(y(ak,ag),af)bc=y(y(af,ag),ak)P=aE
aJ=I(P,ae)aB=I(P,av)aN=I(P,aG)aC=g(f(1),f(3),f(2))aD=g(f(13),f(14),f(15))am=H(aD,aC)at=H(az(am,aJ,aB,aN),aK)be,ay,aI=aO(at)ad=f(16)==2
aY=f(17)>0
aM=f(20)>0
if ad then
D=f(18)else
D=0
end
if aM then
J=ap(J+D*.004,.3,1)m=(atan(aP(tan(.0125),tan(1.1),J))-.0125)/(1.1-.0125)else
aF=b.min(f(19),99)aw=s(am)q=ap(q+D*.001,-.1,.3)m=(.99/(1+.4*2.7^(-.014*aw)))if(q+m)>1 then
q=1-m
elseif(q+m)<0 then
q=-m
end
m=m+q-aF/4000
end
C(1,-ay/V)C(2,aI/V*2.942+.7355)C(3,m)end
function onDraw()i,x=v.getWidth(),v.getHeight()if ad then
al(1,1,1,200)v.drawRectF(2,x-6,12,5)al(85,160,35)v.drawText(2,x-6,"SOI")end
end
