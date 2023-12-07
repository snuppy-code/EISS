-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2841 (3175 with comment) chars

I=property
aa=output
aj=input
x=screen
ab=x.setColor
f=aj.getNumber
G=aa.setNumber
aX=aj.getBool
bb=aa.setBool
aZ=I.getNumber
aU=I.getBool
bc=I.getText
a=math
pi=a.pi
Q=pi*2
sin=a.sin
cos=a.cos
tan=a.tan
asin=a.asin
acos=a.acos
atan=a.atan
function g(t,R,aB,ay)return{b=t
or 0,c=R
or 0,d=aB
or 0,i=ay
or 0}end
function z(_,e)return g(_.b+e.b,_.c+e.c,_.d+e.d)end
function aV(_,e)return g(_.b*e.b,_.c*e.c,_.d*e.d)end
function l(_,v)return g(_.b*v,_.c*v,_.d*v)end
function aq(_)return l(_,-1)end
function H(_,e)return z(_,aq(e))end
function s(_)return a.sqrt(_.b*_.b+_.c*_.c+_.d*_.d)end
function az(_,v)return l(_,1/v)end
function aR(_)return az(_,s(_))end
function L(_,e)return _.b*e.b+_.c*e.c+_.d*e.d
end
function aD(_,e)return g(_.c*e.d-_.d*e.c,_.d*e.b-_.b*e.d,_.b*e.c-_.c*e.b)end
function aQ(w,S,u)local u=u
or 1
return g(a.sin(w)*a.cos(S)*u,a.cos(w)*a.cos(S)*u,a.sin(S)*u)end
function aM(_,r)if not m then
m={}m[r]={C=g(),K=g()}elseif not m[r]then
m[r]={C=g(),K=g()}end
m[r].K=H(_,m[r].C)m[r].C=_
return m[r].K
end
function aI(_,U,P,O)return g(L(U,_),L(P,_),L(O,_))end
function aW(_,U,P,O)return z(z(l(U,_.b),l(P,_.c)),l(O,_.d))end
function aH(_)return s(_),a.atan(_.b,_.c),a.asin(_.d/s(_))end
function J(ad)local a={}for j=1,3 do
a[j]={}for q=1,3 do
a[j][q]=ad and ad[j*3-3+q]or 0
end
end
return a
end
function y(aw,p)local a={}for j=1,3 do
a[j]={}for q=1,3 do
a[j][q]=0
for ae=1,3 do
a[j][q]=a[j][q]+aw[j][ae]*p[ae][q]end
end
end
return a
end
function B(k,i)local b={}b.b=i.b*k[1][1]+i.c*k[2][1]+i.d*k[3][1]b.c=i.b*k[1][2]+i.c*k[2][2]+i.d*k[3][2]b.d=i.b*k[1][3]+i.c*k[2][3]+i.d*k[3][3]return b end
function X(t,min,max)return a.max(min,a.min(t,max))end
function aE(t,R,p)return t*(1-p)+R*p end
aK=g(0,1.5,-1)p=4
be,aT=0,0
aY,W,o,aS=.5,.88,0,0
function onTick()ak,ah,af=f(4),f(5),f(6)D,T,E=cos(ak),cos(ah),cos(af)Z,F,V=sin(ak),sin(ah),sin(af)Y=g(T*E,-F,T*V)ai=g(Z*V+D*F*E,D*T,-Z*E+D*F*V)aO=aD(Y,ai)aL=aq(ai)A=l(g(f(10),f(12),f(11)),Q/60)ac=aM(A,"angular_acc")ag=l(A,p)aJ=z(ag,l(ac,.5*p^2))h=s(ac)>.001 and aJ or(s(A)>.001 and ag or g(0,0,0))an=J({1,0,0,0,cos(h.b),-sin(h.b),0,sin(h.b),cos(h.b)})al=J({cos(h.c),0,sin(h.c),0,1,0,-sin(h.c),0,cos(h.c)})ap=J({cos(h.d),-sin(h.d),0,sin(h.d),cos(h.d),0,0,0,1})aC=y(y(ap,al),an)b_=y(y(an,al),ap)M=aC
at=B(M,Y)aA=B(M,aO)as=B(M,aL)av=g(f(1),f(3),f(2))aF=g(f(13),f(14),f(15))ao=H(aF,av)ar=H(aI(ao,at,aA,as),aK)bd,aN,aG=aH(ar)am=f(16)==2
ba=f(17)>0
au=f(20)>0
if am then
N=f(18)else
N=0
end
if au then
W=X(W+N*.004,.3,1)n=(atan(aE(tan(.0125),tan(1.1),W))-.0125)/(1.1-.0125)else
aP=a.min(f(19),99)ax=s(ao)o=X(o+N*.001,-.1,.3)n=(.99/(1+.4*2.7^(-.014*ax)))if(o+n)>1 then
o=1-n
elseif(o+n)<0 then
o=-n
end
n=n+o-aP/4000
end
G(1,-aN/Q)G(2,aG/Q*2.942+.7355)G(3,n)end
function onDraw()i,w=x.getWidth(),x.getHeight()if am then
ab(1,1,1,200)x.drawRectF(2,w-6,12,5)ab(85,160,35)x.drawText(2,w-6,"SOI")end
end
