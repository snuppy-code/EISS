-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2888 (3222 with comment) chars

S=property
aq=output
am=input
v=screen
Y=v.setColor
f=am.getNumber
P=aq.setNumber
bd=am.getBool
be=aq.setBool
O=S.getNumber
aU=S.getBool
aX=S.getText
a=math
pi=a.pi
E=pi*2
sin=a.sin
cos=a.cos
tan=a.tan
asin=a.asin
acos=a.acos
atan=a.atan
function g(t,W,au,aJ)return{b=t
or 0,d=W
or 0,c=au
or 0,i=aJ
or 0}end
function z(_,e)return g(_.b+e.b,_.d+e.d,_.c+e.c)end
function aV(_,e)return g(_.b*e.b,_.d*e.d,_.c*e.c)end
function l(_,x)return g(_.b*x,_.d*x,_.c*x)end
function ac(_)return l(_,-1)end
function L(_,e)return z(_,ac(e))end
function s(_)return a.sqrt(_.b*_.b+_.d*_.d+_.c*_.c)end
function at(_,x)return l(_,1/x)end
function aT(_)return at(_,s(_))end
function B(_,e)return _.b*e.b+_.d*e.d+_.c*e.c
end
function aL(_,e)return g(_.d*e.c-_.c*e.d,_.c*e.b-_.b*e.c,_.b*e.d-_.d*e.b)end
function bc(u,X,w)local w=w
or 1
return g(a.sin(u)*a.cos(X)*w,a.cos(u)*a.cos(X)*w,a.sin(X)*w)end
function aP(_,q)if not m then
m={}m[q]={I=g(),H=g()}elseif not m[q]then
m[q]={I=g(),H=g()}end
m[q].H=L(_,m[q].I)m[q].I=_
return m[q].H
end
function aI(_,J,V,T)return g(B(J,_),B(V,_),B(T,_))end
function aY(_,J,V,T)return z(z(l(J,_.b),l(V,_.d)),l(T,_.c))end
function as(_)return s(_),a.atan(_.b,_.d),a.asin(_.c/s(_))end
function K(al)local a={}for j=1,3 do
a[j]={}for p=1,3 do
a[j][p]=al and al[j*3-3+p]or 0
end
end
return a
end
function y(ay,o)local a={}for j=1,3 do
a[j]={}for p=1,3 do
a[j][p]=0
for ar=1,3 do
a[j][p]=a[j][p]+ay[j][ar]*o[ar][p]end
end
end
return a
end
function C(k,i)local b={}b.b=i.b*k[1][1]+i.d*k[2][1]+i.c*k[3][1]b.d=i.b*k[1][2]+i.d*k[2][2]+i.c*k[3][2]b.c=i.b*k[1][3]+i.d*k[2][3]+i.c*k[3][3]return b end
function Z(t,min,max)return a.max(min,a.min(t,max))end
function aB(t,W,o)return t*(1-o)+W*o end
aQ=g(O("CAM X offset"),O("CAM Y offset"),O("CAM Z offset"))o=4
aZ,b_=0,0
aW,N,r,aS=.5,.88,0,0
function onTick()aj,ag,ao=f(4),f(5),f(6)G,R,Q=cos(aj),cos(ag),cos(ao)ai,U,D=sin(aj),sin(ag),sin(ao)ad=g(R*Q,-U,R*D)ah=g(ai*D+G*U*Q,G*R,-ai*Q+G*U*D)aC=aL(ad,ah)aD=ac(ah)M=l(g(f(10),f(12),f(11)),E/60)an=aP(M,"angular_acc")ae=l(M,o)az=z(ae,l(an,.5*o^2))h=s(an)>.001 and az or(s(M)>.001 and ae or g(0,0,0))ab=K({1,0,0,0,cos(h.b),-sin(h.b),0,sin(h.b),cos(h.b)})ap=K({cos(h.d),0,sin(h.d),0,1,0,-sin(h.d),0,cos(h.d)})ak=K({cos(h.c),-sin(h.c),0,sin(h.c),cos(h.c),0,0,0,1})aw=y(y(ak,ap),ab)bb=y(y(ab,ap),ak)A=aw
aF=C(A,ad)aG=C(A,aC)ax=C(A,aD)av=g(f(1),f(3),f(2))aO=g(f(13),f(14),f(15))aa=L(aO,av)aE=L(aI(aa,aF,aG,ax),aQ)ba,aH,aN=as(aE)af=f(16)==2
aR=f(17)>0
aM=f(20)>0
if af then
F=f(18)else
F=0
end
if aM then
N=Z(N+F*.004,.3,1)n=(atan(aB(tan(.0125),tan(1.1),N))-.0125)/(1.1-.0125)else
aA=a.min(f(19),99)aK=s(aa)r=Z(r+F*.001,-.1,.3)n=(.99/(1+.4*2.7^(-.014*aK)))if(r+n)>1 then
r=1-n
elseif(r+n)<0 then
r=-n
end
n=n+r-aA/4000
end
P(1,-aH/E)P(2,aN/E*2.942+.7355)P(3,n)end
function onDraw()i,u=v.getWidth(),v.getHeight()if af then
Y(1,1,1,200)v.drawRectF(2,u-6,12,5)Y(85,160,35)v.drawText(2,u-6,"SOI")end
end
