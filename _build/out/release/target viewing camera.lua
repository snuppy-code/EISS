-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2841 (3175 with comment) chars

S=property
am=output
an=input
x=screen
al=x.setColor
f=an.getNumber
D=am.setNumber
aZ=an.getBool
bc=am.setBool
aQ=S.getNumber
aR=S.getBool
be=S.getText
a=math
pi=a.pi
Q=pi*2
sin=a.sin
cos=a.cos
tan=a.tan
asin=a.asin
acos=a.acos
atan=a.atan
function g(u,C,aN,aI)return{b=u
or 0,d=C
or 0,c=aN
or 0,i=aI
or 0}end
function z(_,e)return g(_.b+e.b,_.d+e.d,_.c+e.c)end
function ba(_,e)return g(_.b*e.b,_.d*e.d,_.c*e.c)end
function m(_,w)return g(_.b*w,_.d*w,_.c*w)end
function ae(_)return m(_,-1)end
function O(_,e)return z(_,ae(e))end
function s(_)return a.sqrt(_.b*_.b+_.d*_.d+_.c*_.c)end
function aO(_,w)return m(_,1/w)end
function aV(_)return aO(_,s(_))end
function W(_,e)return _.b*e.b+_.d*e.d+_.c*e.c
end
function au(_,e)return g(_.d*e.c-_.c*e.d,_.c*e.b-_.b*e.c,_.b*e.d-_.d*e.b)end
function aX(v,G,t)local t=t
or 1
return g(a.sin(v)*a.cos(G)*t,a.cos(v)*a.cos(G)*t,a.sin(G)*t)end
function aK(_,q)if not l then
l={}l[q]={F=g(),E=g()}elseif not l[q]then
l[q]={F=g(),E=g()}end
l[q].E=O(_,l[q].F)l[q].F=_
return l[q].E
end
function aD(_,B,U,A)return g(W(B,_),W(U,_),W(A,_))end
function aU(_,B,U,A)return z(z(m(B,_.b),m(U,_.d)),m(A,_.c))end
function aJ(_)return s(_),a.atan(_.b,_.d),a.asin(_.c/s(_))end
function M(ap)local a={}for k=1,3 do
a[k]={}for p=1,3 do
a[k][p]=ap and ap[k*3-3+p]or 0
end
end
return a
end
function y(ax,r)local a={}for k=1,3 do
a[k]={}for p=1,3 do
a[k][p]=0
for aq=1,3 do
a[k][p]=a[k][p]+ax[k][aq]*r[aq][p]end
end
end
return a
end
function V(j,i)local b={}b.b=i.b*j[1][1]+i.d*j[2][1]+i.c*j[3][1]b.d=i.b*j[1][2]+i.d*j[2][2]+i.c*j[3][2]b.c=i.b*j[1][3]+i.d*j[2][3]+i.c*j[3][3]return b end
function ab(u,min,max)return a.max(min,a.min(u,max))end
function az(u,C,r)return u*(1-r)+C*r end
aB=g(0,1.5,-1)r=4
bd,aY=0,0
bb,K,o,aT=.5,.88,0,0
function onTick()X,ag,ao=f(4),f(5),f(6)T,L,R=cos(X),cos(ag),cos(ao)ak,N,P=sin(X),sin(ag),sin(ao)Z=g(L*R,-N,L*P)ah=g(ak*P+T*N*R,T*L,-ak*R+T*N*P)av=au(Z,ah)ay=ae(ah)I=m(g(f(10),f(12),f(11)),Q/60)af=aK(I,"angular_acc")aj=m(I,r)ar=z(aj,m(af,.5*r^2))h=s(af)>.001 and ar or(s(I)>.001 and aj or g(0,0,0))ac=M({1,0,0,0,cos(h.b),-sin(h.b),0,sin(h.b),cos(h.b)})aa=M({cos(h.d),0,sin(h.d),0,1,0,-sin(h.d),0,cos(h.d)})Y=M({cos(h.c),-sin(h.c),0,sin(h.c),cos(h.c),0,0,0,1})at=y(y(Y,aa),ac)b_=y(y(ac,aa),Y)H=at
as=V(H,Z)aw=V(H,av)aC=V(H,ay)aF=g(f(1),f(3),f(2))aE=g(f(13),f(14),f(15))ai=O(aE,aF)aP=O(aD(ai,as,aw,aC),aB)aS,aA,aG=aJ(aP)ad=f(16)==2
aW=f(17)>0
aL=f(20)>0
if ad then
J=f(18)else
J=0
end
if aL then
K=ab(K+J*.004,.3,1)n=(atan(az(tan(.0125),tan(1.1),K))-.0125)/(1.1-.0125)else
aM=a.min(f(19),99)aH=s(ai)o=ab(o+J*.001,-.1,.3)n=(.99/(1+.4*2.7^(-.014*aH)))if(o+n)>1 then
o=1-n
elseif(o+n)<0 then
o=-n
end
n=n+o-aM/4000
end
D(1,-aA/Q)D(2,aG/Q*2.942+.7355)D(3,n)end
function onDraw()i,v=x.getWidth(),x.getHeight()if ad then
al(1,1,1,200)x.drawRectF(2,v-6,12,5)al(85,160,35)x.drawText(2,v-6,"SOI")end
end
