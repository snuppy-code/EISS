-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2841 (3146 with comment) chars

H=property
X=output
Y=input
x=screen
aj=x.setColor
f=Y.getNumber
P=X.setNumber
aW=Y.getBool
be=X.setBool
aQ=H.getNumber
aY=H.getBool
bb=H.getText
a=math
pi=a.pi
D=pi*2
sin=a.sin
cos=a.cos
tan=a.tan
asin=a.asin
acos=a.acos
atan=a.atan
function g(u,T,at,aM)return{b=u
or 0,d=T
or 0,c=at
or 0,i=aM
or 0}end
function z(_,e)return g(_.b+e.b,_.d+e.d,_.c+e.c)end
function aR(_,e)return g(_.b*e.b,_.d*e.d,_.c*e.c)end
function m(_,w)return g(_.b*w,_.d*w,_.c*w)end
function ap(_)return m(_,-1)end
function R(_,e)return z(_,ap(e))end
function s(_)return a.sqrt(_.b*_.b+_.d*_.d+_.c*_.c)end
function aH(_,w)return m(_,1/w)end
function aZ(_)return aH(_,s(_))end
function V(_,e)return _.b*e.b+_.d*e.d+_.c*e.c
end
function as(_,e)return g(_.d*e.c-_.c*e.d,_.c*e.b-_.b*e.c,_.b*e.d-_.d*e.b)end
function aV(t,B,v)local v=v
or 1
return g(a.sin(t)*a.cos(B)*v,a.cos(t)*a.cos(B)*v,a.sin(B)*v)end
function au(_,r)if not l then
l={}l[r]={M=g(),J=g()}elseif not l[r]then
l[r]={M=g(),J=g()}end
l[r].J=R(_,l[r].M)l[r].M=_
return l[r].J
end
function aC(_,K,I,F)return g(V(K,_),V(I,_),V(F,_))end
function b_(_,K,I,F)return z(z(m(K,_.b),m(I,_.d)),m(F,_.c))end
function aN(_)return s(_),a.atan(_.b,_.d),a.asin(_.c/s(_))end
function A(ai)local a={}for j=1,3 do
a[j]={}for p=1,3 do
a[j][p]=ai and ai[j*3-3+p]or 0
end
end
return a
end
function y(aD,q)local a={}for j=1,3 do
a[j]={}for p=1,3 do
a[j][p]=0
for aq=1,3 do
a[j][p]=a[j][p]+aD[j][aq]*q[aq][p]end
end
end
return a
end
function L(k,i)local b={}b.b=i.b*k[1][1]+i.d*k[2][1]+i.c*k[3][1]b.d=i.b*k[1][2]+i.d*k[2][2]+i.c*k[3][2]b.c=i.b*k[1][3]+i.d*k[2][3]+i.c*k[3][3]return b end
function ag(u,min,max)return a.max(min,a.min(u,max))end
function av(u,T,q)return u*(1-q)+T*q end
aw=g(0,1.5,-1)q=4
aT,aS=0,0
bd,U,o,aU=.5,.88,0,0
function onTick()am,an,ab=f(4),f(5),f(6)E,S,C=cos(am),cos(an),cos(ab)al,N,G=sin(am),sin(an),sin(ab)Z=g(S*C,-N,S*G)ao=g(al*G+E*N*C,E*S,-al*C+E*N*G)aE=as(Z,ao)aJ=ap(ao)Q=m(g(f(10),f(12),f(11)),D/60)ac=au(Q,"angular_acc")aa=m(Q,q)aF=z(aa,m(ac,.5*q^2))h=s(ac)>.001 and aF or(s(Q)>.001 and aa or g(0,0,0))af=A({1,0,0,0,cos(h.b),-sin(h.b),0,sin(h.b),cos(h.b)})ah=A({cos(h.d),0,sin(h.d),0,1,0,-sin(h.d),0,cos(h.d)})ae=A({cos(h.c),-sin(h.c),0,sin(h.c),cos(h.c),0,0,0,1})aB=y(y(ae,ah),af)aX=y(y(af,ah),ae)W=aB
aG=L(W,Z)aK=L(W,aE)ar=L(W,aJ)aP=g(f(1),f(3),f(2))ay=g(f(13),f(14),f(15))ak=R(ay,aP)ax=R(aC(ak,aG,aK,ar),aw)ba,aA,aL=aN(ax)ad=f(16)==2
bc=f(17)>0
az=f(20)>0
if ad then
O=f(18)else
O=0
end
if az then
U=ag(U+O*.004,.3,1)n=(atan(av(tan(.0125),tan(1.1),U))-.0125)/(1.1-.0125)else
aO=a.min(f(19),99)aI=s(ak)o=ag(o+O*.001,-.1,.3)n=(.99/(1+.4*2.7^(-.014*aI)))if(o+n)>1 then
o=1-n
elseif(o+n)<0 then
o=-n
end
n=n+o-aO/4000
end
P(1,-aA/D)P(2,aL/D*2.942+.7355)P(3,n)end
function onDraw()i,t=x.getWidth(),x.getHeight()if ad then
aj(1,1,1,200)x.drawRectF(2,t-6,12,5)aj(85,160,35)x.drawText(2,t-6,"SOI")end
end
