-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2888 (3255 with comment) chars

D=property
ao=output
ah=input
x=screen
aq=x.setColor
g=ah.getNumber
H=ao.setNumber
aZ=ah.getBool
b_=ao.setBool
Q=D.getNumber
aY=D.getBool
be=D.getText
a=math
pi=a.pi
R=pi*2
sin=a.sin
cos=a.cos
tan=a.tan
asin=a.asin
acos=a.acos
atan=a.atan
function f(v,E,aB,aP)return{b=v
or 0,d=E
or 0,c=aB
or 0,i=aP
or 0}end
function y(_,e)return f(_.b+e.b,_.d+e.d,_.c+e.c)end
function aV(_,e)return f(_.b*e.b,_.d*e.d,_.c*e.c)end
function n(_,w)return f(_.b*w,_.d*w,_.c*w)end
function ag(_)return n(_,-1)end
function F(_,e)return y(_,ag(e))end
function s(_)return a.sqrt(_.b*_.b+_.d*_.d+_.c*_.c)end
function as(_,w)return n(_,1/w)end
function aU(_)return as(_,s(_))end
function T(_,e)return _.b*e.b+_.d*e.d+_.c*e.c
end
function ay(_,e)return f(_.d*e.c-_.c*e.d,_.c*e.b-_.b*e.c,_.b*e.d-_.d*e.b)end
function aT(u,X,t)local t=t
or 1
return f(a.sin(u)*a.cos(X)*t,a.cos(u)*a.cos(X)*t,a.sin(X)*t)end
function aH(_,r)if not m then
m={}m[r]={M=f(),S=f()}elseif not m[r]then
m[r]={M=f(),S=f()}end
m[r].S=F(_,m[r].M)m[r].M=_
return m[r].S
end
function aF(_,N,K,J)return f(T(N,_),T(K,_),T(J,_))end
function bb(_,N,K,J)return y(y(n(N,_.b),n(K,_.d)),n(J,_.c))end
function aE(_)return s(_),a.atan(_.b,_.d),a.asin(_.c/s(_))end
function L(al)local a={}for j=1,3 do
a[j]={}for q=1,3 do
a[j][q]=al and al[j*3-3+q]or 0
end
end
return a
end
function z(aK,o)local a={}for j=1,3 do
a[j]={}for q=1,3 do
a[j][q]=0
for ap=1,3 do
a[j][q]=a[j][q]+aK[j][ap]*o[ap][q]end
end
end
return a
end
function P(k,i)local b={}b.b=i.b*k[1][1]+i.d*k[2][1]+i.c*k[3][1]b.d=i.b*k[1][2]+i.d*k[2][2]+i.c*k[3][2]b.c=i.b*k[1][3]+i.d*k[2][3]+i.c*k[3][3]return b end
function ac(v,min,max)return a.max(min,a.min(v,max))end
function aN(v,E,o)return v*(1-o)+E*o end
aL=f(Q("CAM X offset"),Q("CAM Y offset"),Q("CAM Z offset"))o=4
aX,aR=0,0
bc,G,p,aW=.5,.88,0,0
function onTick()am,ak,aj=g(4),g(5),g(6)I,B,A=cos(am),cos(ak),cos(aj)ai,V,C=sin(am),sin(ak),sin(aj)ab=f(B*A,-V,B*C)ae=f(ai*C+I*V*A,I*B,-ai*A+I*V*C)au=ay(ab,ae)aA=ag(ae)U=n(f(g(10),g(12),g(11)),R/60)Y=aH(U,"angular_acc")ar=n(U,o)aD=y(ar,n(Y,.5*o^2))h=s(Y)>.001 and aD or(s(U)>.001 and ar or f(0,0,0))af=L({1,0,0,0,cos(h.b),-sin(h.b),0,sin(h.b),cos(h.b)})ad=L({cos(h.d),0,sin(h.d),0,1,0,-sin(h.d),0,cos(h.d)})Z=L({cos(h.c),-sin(h.c),0,sin(h.c),cos(h.c),0,0,0,1})aQ=z(z(Z,ad),af)aS=z(z(af,ad),Z)W=aQ
av=P(W,ab)aw=P(W,au)at=P(W,aA)aC=f(g(1),g(3),g(2))aM=f(g(13),g(14),g(15))an=F(aM,aC)aO=F(aF(an,av,aw,at),aL)bd,ax,aJ=aE(aO)aa=g(16)==2
ba=g(17)>0
az=g(20)>0
if aa then
O=g(18)else
O=0
end
if az then
G=ac(G+O*.004,.3,1)l=(atan(aN(tan(.0125),tan(1.1),G))-.0125)/(1.1-.0125)else
aG=a.min(g(19),99)aI=s(an)p=ac(p+O*.001,-.1,.3)l=(.99/(1+.4*2.7^(-.014*aI)))if(p+l)>1 then
p=1-l
elseif(p+l)<0 then
p=-l
end
l=l+p-aG/4000
end
H(1,-ax/R)H(2,aJ/R*2.942+.7355)H(3,l)end
function onDraw()i,u=x.getWidth(),x.getHeight()if aa then
aq(1,1,1,200)x.drawRectF(2,u-6,12,5)aq(85,160,35)x.drawText(2,u-6,"SOI")end
end
