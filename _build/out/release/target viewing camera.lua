-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2888 (3255 with comment) chars

U=property
Z=output
am=input
t=screen
ac=t.setColor
f=am.getNumber
K=Z.setNumber
aV=am.getBool
aZ=Z.setBool
M=U.getNumber
aT=U.getBool
bd=U.getText
b=math
pi=b.pi
B=pi*2
sin=b.sin
cos=b.cos
tan=b.tan
asin=b.asin
acos=b.acos
atan=b.atan
function g(x,N,aC,aH)return{a=x
or 0,c=N
or 0,d=aC
or 0,i=aH
or 0}end
function z(_,e)return g(_.a+e.a,_.c+e.c,_.d+e.d)end
function aW(_,e)return g(_.a*e.a,_.c*e.c,_.d*e.d)end
function l(_,w)return g(_.a*w,_.c*w,_.d*w)end
function aq(_)return l(_,-1)end
function H(_,e)return z(_,aq(e))end
function s(_)return b.sqrt(_.a*_.a+_.c*_.c+_.d*_.d)end
function aG(_,w)return l(_,1/w)end
function aR(_)return aG(_,s(_))end
function P(_,e)return _.a*e.a+_.c*e.c+_.d*e.d
end
function au(_,e)return g(_.c*e.d-_.d*e.c,_.d*e.a-_.a*e.d,_.a*e.c-_.c*e.a)end
function bb(u,D,v)local v=v
or 1
return g(b.sin(u)*b.cos(D)*v,b.cos(u)*b.cos(D)*v,b.sin(D)*v)end
function aE(_,o)if not n then
n={}n[o]={T=g(),W=g()}elseif not n[o]then
n[o]={T=g(),W=g()}end
n[o].W=H(_,n[o].T)n[o].T=_
return n[o].W
end
function aw(_,S,A,O)return g(P(S,_),P(A,_),P(O,_))end
function aU(_,S,A,O)return z(z(l(S,_.a),l(A,_.c)),l(O,_.d))end
function aD(_)return s(_),b.atan(_.a,_.c),b.asin(_.d/s(_))end
function L(ak)local b={}for k=1,3 do
b[k]={}for q=1,3 do
b[k][q]=ak and ak[k*3-3+q]or 0
end
end
return b
end
function y(av,p)local b={}for k=1,3 do
b[k]={}for q=1,3 do
b[k][q]=0
for ad=1,3 do
b[k][q]=b[k][q]+av[k][ad]*p[ad][q]end
end
end
return b
end
function J(j,i)local a={}a.a=i.a*j[1][1]+i.c*j[2][1]+i.d*j[3][1]a.c=i.a*j[1][2]+i.c*j[2][2]+i.d*j[3][2]a.d=i.a*j[1][3]+i.c*j[2][3]+i.d*j[3][3]return a end
function ae(x,min,max)return b.max(min,b.min(x,max))end
function aN(x,N,p)return x*(1-p)+N*p end
aF=g(M("CAM X offset"),M("CAM Y offset"),M("CAM Z offset"))p=4
aY,b_=0,0
ba,G,r,aX=.5,.88,0,0
function onTick()Y,aj,ai=f(4),f(5),f(6)V,F,X=cos(Y),cos(aj),cos(ai)ar,R,C=sin(Y),sin(aj),sin(ai)af=g(F*X,-R,F*C)ah=g(ar*C+V*R*X,V*F,-ar*X+V*R*C)aJ=au(af,ah)az=aq(ah)I=l(g(f(10),f(12),f(11)),B/60)ao=aE(I,"angular_acc")an=l(I,p)aO=z(an,l(ao,.5*p^2))h=s(ao)>.001 and aO or(s(I)>.001 and an or g(0,0,0))ap=L({1,0,0,0,cos(h.a),-sin(h.a),0,sin(h.a),cos(h.a)})ab=L({cos(h.c),0,sin(h.c),0,1,0,-sin(h.c),0,cos(h.c)})ag=L({cos(h.d),-sin(h.d),0,sin(h.d),cos(h.d),0,0,0,1})at=y(y(ag,ab),ap)bc=y(y(ap,ab),ag)Q=at
aP=J(Q,af)as=J(Q,aJ)aA=J(Q,az)aK=g(f(1),f(3),f(2))ax=g(f(13),f(14),f(15))al=H(ax,aK)aB=H(aw(al,aP,as,aA),aF)be,ay,aM=aD(aB)aa=f(16)==2
aS=f(17)>0
aQ=f(20)>0
if aa then
E=f(18)else
E=0
end
if aQ then
G=ae(G+E*.004,.3,1)m=(atan(aN(tan(.0125),tan(1.1),G))-.0125)/(1.1-.0125)else
aL=b.min(f(19),99)aI=s(al)r=ae(r+E*.001,-.1,.3)m=(.99/(1+.4*2.7^(-.014*aI)))if(r+m)>1 then
r=1-m
elseif(r+m)<0 then
r=-m
end
m=m+r-aL/4000
end
K(1,-ay/B)K(2,aM/B*2.942+.7355)K(3,m)end
function onDraw()i,u=t.getWidth(),t.getHeight()if aa then
ac(1,1,1,200)t.drawRectF(2,u-6,12,5)ac(85,160,35)t.drawText(2,u-6,"SOI")end
end
