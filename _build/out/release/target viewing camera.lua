-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2841 (3146 with comment) chars

K=property
ap=output
ao=input
v=screen
ae=v.setColor
f=ao.getNumber
F=ap.setNumber
be=ao.getBool
aX=ap.setBool
aV=K.getNumber
bb=K.getBool
aY=K.getText
b=math
pi=b.pi
C=pi*2
sin=b.sin
cos=b.cos
tan=b.tan
asin=b.asin
acos=b.acos
atan=b.atan
function g(x,U,aB,aO)return{a=x
or 0,d=U
or 0,c=aB
or 0,i=aO
or 0}end
function z(_,e)return g(_.a+e.a,_.d+e.d,_.c+e.c)end
function aT(_,e)return g(_.a*e.a,_.d*e.d,_.c*e.c)end
function n(_,w)return g(_.a*w,_.d*w,_.c*w)end
function af(_)return n(_,-1)end
function V(_,e)return z(_,af(e))end
function s(_)return b.sqrt(_.a*_.a+_.d*_.d+_.c*_.c)end
function av(_,w)return n(_,1/w)end
function aQ(_)return av(_,s(_))end
function B(_,e)return _.a*e.a+_.d*e.d+_.c*e.c
end
function aM(_,e)return g(_.d*e.c-_.c*e.d,_.c*e.a-_.a*e.c,_.a*e.d-_.d*e.a)end
function ba(t,W,u)local u=u
or 1
return g(b.sin(t)*b.cos(W)*u,b.cos(t)*b.cos(W)*u,b.sin(W)*u)end
function ar(_,p)if not l then
l={}l[p]={M=g(),N=g()}elseif not l[p]then
l[p]={M=g(),N=g()}end
l[p].N=V(_,l[p].M)l[p].M=_
return l[p].N
end
function aF(_,L,Q,S)return g(B(L,_),B(Q,_),B(S,_))end
function bc(_,L,Q,S)return z(z(n(L,_.a),n(Q,_.d)),n(S,_.c))end
function aI(_)return s(_),b.atan(_.a,_.d),b.asin(_.c/s(_))end
function I(ag)local b={}for k=1,3 do
b[k]={}for o=1,3 do
b[k][o]=ag and ag[k*3-3+o]or 0
end
end
return b
end
function y(ax,q)local b={}for k=1,3 do
b[k]={}for o=1,3 do
b[k][o]=0
for ai=1,3 do
b[k][o]=b[k][o]+ax[k][ai]*q[ai][o]end
end
end
return b
end
function E(j,i)local a={}a.a=i.a*j[1][1]+i.d*j[2][1]+i.c*j[3][1]a.d=i.a*j[1][2]+i.d*j[2][2]+i.c*j[3][2]a.c=i.a*j[1][3]+i.d*j[2][3]+i.c*j[3][3]return a end
function am(x,min,max)return b.max(min,b.min(x,max))end
function aN(x,U,q)return x*(1-q)+U*q end
aJ=g(0,1.5,-1)q=4
aU,bd=0,0
aR,A,r,aS=.5,.88,0,0
function onTick()al,ah,aq=f(4),f(5),f(6)H,D,T=cos(al),cos(ah),cos(aq)ab,O,J=sin(al),sin(ah),sin(aq)an=g(D*T,-O,D*J)ac=g(ab*J+H*O*T,H*D,-ab*T+H*O*J)aA=aM(an,ac)aG=af(ac)G=n(g(f(10),f(12),f(11)),C/60)aj=ar(G,"angular_acc")Z=n(G,q)az=z(Z,n(aj,.5*q^2))h=s(aj)>.001 and az or(s(G)>.001 and Z or g(0,0,0))X=I({1,0,0,0,cos(h.a),-sin(h.a),0,sin(h.a),cos(h.a)})aa=I({cos(h.d),0,sin(h.d),0,1,0,-sin(h.d),0,cos(h.d)})ad=I({cos(h.c),-sin(h.c),0,sin(h.c),cos(h.c),0,0,0,1})at=y(y(ad,aa),X)aW=y(y(X,aa),ad)P=at
aD=E(P,an)ay=E(P,aA)aH=E(P,aG)aE=g(f(1),f(3),f(2))aL=g(f(13),f(14),f(15))Y=V(aL,aE)aK=V(aF(Y,aD,ay,aH),aJ)b_,aC,au=aI(aK)ak=f(16)==2
aZ=f(17)>0
aP=f(20)>0
if ak then
R=f(18)else
R=0
end
if aP then
A=am(A+R*.004,.3,1)m=(atan(aN(tan(.0125),tan(1.1),A))-.0125)/(1.1-.0125)else
as=b.min(f(19),99)aw=s(Y)r=am(r+R*.001,-.1,.3)m=(.99/(1+.4*2.7^(-.014*aw)))if(r+m)>1 then
r=1-m
elseif(r+m)<0 then
r=-m
end
m=m+r-as/4000
end
F(1,-aC/C)F(2,au/C*2.942+.7355)F(3,m)end
function onDraw()i,t=v.getWidth(),v.getHeight()if ak then
ae(1,1,1,200)v.drawRectF(2,t-6,12,5)ae(85,160,35)v.drawText(2,t-6,"SOI")end
end
