-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2841 (3146 with comment) chars

O=property
Y=output
ag=input
t=screen
ao=t.setColor
f=ag.getNumber
M=Y.setNumber
be=ag.getBool
aU=Y.setBool
aQ=O.getNumber
aZ=O.getBool
ba=O.getText
a=math
pi=a.pi
P=pi*2
sin=a.sin
cos=a.cos
tan=a.tan
asin=a.asin
acos=a.acos
atan=a.atan
function g(u,V,aE,aO)return{b=u
or 0,d=V
or 0,c=aE
or 0,i=aO
or 0}end
function z(_,e)return g(_.b+e.b,_.d+e.d,_.c+e.c)end
function bd(_,e)return g(_.b*e.b,_.d*e.d,_.c*e.c)end
function m(_,v)return g(_.b*v,_.d*v,_.c*v)end
function ak(_)return m(_,-1)end
function H(_,e)return z(_,ak(e))end
function s(_)return a.sqrt(_.b*_.b+_.d*_.d+_.c*_.c)end
function aJ(_,v)return m(_,1/v)end
function aR(_)return aJ(_,s(_))end
function D(_,e)return _.b*e.b+_.d*e.d+_.c*e.c
end
function aK(_,e)return g(_.d*e.c-_.c*e.d,_.c*e.b-_.b*e.c,_.b*e.d-_.d*e.b)end
function bb(w,A,x)local x=x
or 1
return g(a.sin(w)*a.cos(A)*x,a.cos(w)*a.cos(A)*x,a.sin(A)*x)end
function aH(_,r)if not n then
n={}n[r]={F=g(),W=g()}elseif not n[r]then
n[r]={F=g(),W=g()}end
n[r].W=H(_,n[r].F)n[r].F=_
return n[r].W
end
function aA(_,B,U,K)return g(D(B,_),D(U,_),D(K,_))end
function bc(_,B,U,K)return z(z(m(B,_.b),m(U,_.d)),m(K,_.c))end
function aF(_)return s(_),a.atan(_.b,_.d),a.asin(_.c/s(_))end
function J(af)local a={}for j=1,3 do
a[j]={}for p=1,3 do
a[j][p]=af and af[j*3-3+p]or 0
end
end
return a
end
function y(aI,o)local a={}for j=1,3 do
a[j]={}for p=1,3 do
a[j][p]=0
for ai=1,3 do
a[j][p]=a[j][p]+aI[j][ai]*o[ai][p]end
end
end
return a
end
function E(k,i)local b={}b.b=i.b*k[1][1]+i.d*k[2][1]+i.c*k[3][1]b.d=i.b*k[1][2]+i.d*k[2][2]+i.c*k[3][2]b.c=i.b*k[1][3]+i.d*k[2][3]+i.c*k[3][3]return b end
function ae(u,min,max)return a.max(min,a.min(u,max))end
function aP(u,V,o)return u*(1-o)+V*o end
ar=g(0,1.5,-1)o=4
aV,aW=0,0
aS,Q,q,aX=.5,.88,0,0
function onTick()am,ap,ab=f(4),f(5),f(6)S,R,I=cos(am),cos(ap),cos(ab)Z,C,G=sin(am),sin(ap),sin(ab)ad=g(R*I,-C,R*G)aq=g(Z*G+S*C*I,S*R,-Z*I+S*C*G)au=aK(ad,aq)at=ak(aq)L=m(g(f(10),f(12),f(11)),P/60)X=aH(L,"angular_acc")ah=m(L,o)aB=z(ah,m(X,.5*o^2))h=s(X)>.001 and aB or(s(L)>.001 and ah or g(0,0,0))al=J({1,0,0,0,cos(h.b),-sin(h.b),0,sin(h.b),cos(h.b)})aa=J({cos(h.d),0,sin(h.d),0,1,0,-sin(h.d),0,cos(h.d)})an=J({cos(h.c),-sin(h.c),0,sin(h.c),cos(h.c),0,0,0,1})as=y(y(an,aa),al)b_=y(y(al,aa),an)N=as
aw=E(N,ad)ay=E(N,au)aL=E(N,at)aG=g(f(1),f(3),f(2))ax=g(f(13),f(14),f(15))aj=H(ax,aG)az=H(aA(aj,aw,ay,aL),ar)aT,aM,aN=aF(az)ac=f(16)==2
aY=f(17)>0
aD=f(20)>0
if ac then
T=f(18)else
T=0
end
if aD then
Q=ae(Q+T*.004,.3,1)l=(atan(aP(tan(.0125),tan(1.1),Q))-.0125)/(1.1-.0125)else
aC=a.min(f(19),99)av=s(aj)q=ae(q+T*.001,-.1,.3)l=(.99/(1+.4*2.7^(-.014*av)))if(q+l)>1 then
q=1-l
elseif(q+l)<0 then
q=-l
end
l=l+q-aC/4000
end
M(1,-aM/P)M(2,aN/P*2.942+.7355)M(3,l)end
function onDraw()i,w=t.getWidth(),t.getHeight()if ac then
ao(1,1,1,200)t.drawRectF(2,w-6,12,5)ao(85,160,35)t.drawText(2,w-6,"SOI")end
end
