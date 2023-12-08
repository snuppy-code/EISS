-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2841 (3175 with comment) chars

U=property
ab=output
af=input
t=screen
ag=t.setColor
f=af.getNumber
K=ab.setNumber
aS=af.getBool
aT=ab.setBool
aU=U.getNumber
aR=U.getBool
ba=U.getText
b=math
pi=b.pi
O=pi*2
sin=b.sin
cos=b.cos
tan=b.tan
asin=b.asin
acos=b.acos
atan=b.atan
function g(v,B,aJ,az)return{a=v
or 0,d=B
or 0,c=aJ
or 0,i=az
or 0}end
function z(_,e)return g(_.a+e.a,_.d+e.d,_.c+e.c)end
function bb(_,e)return g(_.a*e.a,_.d*e.d,_.c*e.c)end
function m(_,u)return g(_.a*u,_.d*u,_.c*u)end
function aq(_)return m(_,-1)end
function Q(_,e)return z(_,aq(e))end
function s(_)return b.sqrt(_.a*_.a+_.d*_.d+_.c*_.c)end
function aM(_,u)return m(_,1/u)end
function bc(_)return aM(_,s(_))end
function G(_,e)return _.a*e.a+_.d*e.d+_.c*e.c
end
function aw(_,e)return g(_.d*e.c-_.c*e.d,_.c*e.a-_.a*e.c,_.a*e.d-_.d*e.a)end
function aX(x,T,w)local w=w
or 1
return g(b.sin(x)*b.cos(T)*w,b.cos(x)*b.cos(T)*w,b.sin(T)*w)end
function aK(_,r)if not l then
l={}l[r]={V=g(),C=g()}elseif not l[r]then
l[r]={V=g(),C=g()}end
l[r].C=Q(_,l[r].V)l[r].V=_
return l[r].C
end
function aL(_,E,A,F)return g(G(E,_),G(A,_),G(F,_))end
function aV(_,E,A,F)return z(z(m(E,_.a),m(A,_.d)),m(F,_.c))end
function aB(_)return s(_),b.atan(_.a,_.d),b.asin(_.c/s(_))end
function L(ak)local b={}for j=1,3 do
b[j]={}for q=1,3 do
b[j][q]=ak and ak[j*3-3+q]or 0
end
end
return b
end
function y(aP,o)local b={}for j=1,3 do
b[j]={}for q=1,3 do
b[j][q]=0
for ae=1,3 do
b[j][q]=b[j][q]+aP[j][ae]*o[ae][q]end
end
end
return b
end
function N(k,i)local a={}a.a=i.a*k[1][1]+i.d*k[2][1]+i.c*k[3][1]a.d=i.a*k[1][2]+i.d*k[2][2]+i.c*k[3][2]a.c=i.a*k[1][3]+i.d*k[2][3]+i.c*k[3][3]return a end
function aj(v,min,max)return b.max(min,b.min(v,max))end
function ar(v,B,o)return v*(1-o)+B*o end
aN=g(0,1.5,-1)o=4
bd,b_=0,0
aQ,R,p,aW=.5,.88,0,0
function onTick()an,Z,aa=f(4),f(5),f(6)P,I,J=cos(an),cos(Z),cos(aa)Y,D,M=sin(an),sin(Z),sin(aa)X=g(I*J,-D,I*M)ai=g(Y*M+P*D*J,P*I,-Y*J+P*D*M)aD=aw(X,ai)aO=aq(ai)H=m(g(f(10),f(12),f(11)),O/60)ad=aK(H,"angular_acc")ah=m(H,o)aC=z(ah,m(ad,.5*o^2))h=s(ad)>.001 and aC or(s(H)>.001 and ah or g(0,0,0))ac=L({1,0,0,0,cos(h.a),-sin(h.a),0,sin(h.a),cos(h.a)})ao=L({cos(h.d),0,sin(h.d),0,1,0,-sin(h.d),0,cos(h.d)})al=L({cos(h.c),-sin(h.c),0,sin(h.c),cos(h.c),0,0,0,1})av=y(y(al,ao),ac)be=y(y(ac,ao),al)W=av
at=N(W,X)as=N(W,aD)aE=N(W,aO)aG=g(f(1),f(3),f(2))aH=g(f(13),f(14),f(15))am=Q(aH,aG)ay=Q(aL(am,at,as,aE),aN)aZ,aA,aF=aB(ay)ap=f(16)==2
aY=f(17)>0
ax=f(20)>0
if ap then
S=f(18)else
S=0
end
if ax then
R=aj(R+S*.004,.3,1)n=(atan(ar(tan(.0125),tan(1.1),R))-.0125)/(1.1-.0125)else
aI=b.min(f(19),99)au=s(am)p=aj(p+S*.001,-.1,.3)n=(.99/(1+.4*2.7^(-.014*au)))if(p+n)>1 then
p=1-n
elseif(p+n)<0 then
p=-n
end
n=n+p-aI/4000
end
K(1,-aA/O)K(2,aF/O*2.942+.7355)K(3,n)end
function onDraw()i,x=t.getWidth(),t.getHeight()if ap then
ag(1,1,1,200)t.drawRectF(2,x-6,12,5)ag(85,160,35)t.drawText(2,x-6,"SOI")end
end
