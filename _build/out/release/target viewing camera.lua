-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2841 (3146 with comment) chars

G=property
Y=output
ab=input
t=screen
aq=t.setColor
g=ab.getNumber
K=Y.setNumber
aQ=ab.getBool
aX=Y.setBool
bd=G.getNumber
aZ=G.getBool
be=G.getText
b=math
pi=b.pi
D=pi*2
sin=b.sin
cos=b.cos
tan=b.tan
asin=b.asin
acos=b.acos
atan=b.atan
function f(u,V,aI,aN)return{a=u
or 0,c=V
or 0,d=aI
or 0,i=aN
or 0}end
function y(_,e)return f(_.a+e.a,_.c+e.c,_.d+e.d)end
function aU(_,e)return f(_.a*e.a,_.c*e.c,_.d*e.d)end
function m(_,x)return f(_.a*x,_.c*x,_.d*x)end
function ao(_)return m(_,-1)end
function M(_,e)return y(_,ao(e))end
function s(_)return b.sqrt(_.a*_.a+_.c*_.c+_.d*_.d)end
function aO(_,x)return m(_,1/x)end
function aR(_)return aO(_,s(_))end
function T(_,e)return _.a*e.a+_.c*e.c+_.d*e.d
end
function aA(_,e)return f(_.c*e.d-_.d*e.c,_.d*e.a-_.a*e.d,_.a*e.c-_.c*e.a)end
function ba(w,A,v)local v=v
or 1
return f(b.sin(w)*b.cos(A)*v,b.cos(w)*b.cos(A)*v,b.sin(A)*v)end
function aJ(_,r)if not n then
n={}n[r]={F=f(),H=f()}elseif not n[r]then
n[r]={F=f(),H=f()}end
n[r].H=M(_,n[r].F)n[r].F=_
return n[r].H
end
function aK(_,O,W,J)return f(T(O,_),T(W,_),T(J,_))end
function bc(_,O,W,J)return y(y(m(O,_.a),m(W,_.c)),m(J,_.d))end
function aw(_)return s(_),b.atan(_.a,_.c),b.asin(_.d/s(_))end
function I(X)local b={}for j=1,3 do
b[j]={}for q=1,3 do
b[j][q]=X and X[j*3-3+q]or 0
end
end
return b
end
function z(aG,o)local b={}for j=1,3 do
b[j]={}for q=1,3 do
b[j][q]=0
for af=1,3 do
b[j][q]=b[j][q]+aG[j][af]*o[af][q]end
end
end
return b
end
function N(k,i)local a={}a.a=i.a*k[1][1]+i.c*k[2][1]+i.d*k[3][1]a.c=i.a*k[1][2]+i.c*k[2][2]+i.d*k[3][2]a.d=i.a*k[1][3]+i.c*k[2][3]+i.d*k[3][3]return a end
function an(u,min,max)return b.max(min,b.min(u,max))end
function aH(u,V,o)return u*(1-o)+V*o end
at=f(0,1.5,-1)o=4
aV,aW=0,0
aY,U,p,bb=.5,.88,0,0
function onTick()ac,ai,am=g(4),g(5),g(6)B,C,R=cos(ac),cos(ai),cos(am)al,Q,L=sin(ac),sin(ai),sin(am)ap=f(C*R,-Q,C*L)aa=f(al*L+B*Q*R,B*C,-al*R+B*Q*L)au=aA(ap,aa)aB=ao(aa)S=m(f(g(10),g(12),g(11)),D/60)aj=aJ(S,"angular_acc")ag=m(S,o)ay=y(ag,m(aj,.5*o^2))h=s(aj)>.001 and ay or(s(S)>.001 and ag or f(0,0,0))ak=I({1,0,0,0,cos(h.a),-sin(h.a),0,sin(h.a),cos(h.a)})ah=I({cos(h.c),0,sin(h.c),0,1,0,-sin(h.c),0,cos(h.c)})ae=I({cos(h.d),-sin(h.d),0,sin(h.d),cos(h.d),0,0,0,1})av=z(z(ae,ah),ak)b_=z(z(ak,ah),ae)P=av
aL=N(P,ap)ar=N(P,au)aD=N(P,aB)aF=f(g(1),g(3),g(2))aM=f(g(13),g(14),g(15))Z=M(aM,aF)aC=M(aK(Z,aL,ar,aD),at)aS,as,aE=aw(aC)ad=g(16)==2
aT=g(17)>0
az=g(20)>0
if ad then
E=g(18)else
E=0
end
if az then
U=an(U+E*.004,.3,1)l=(atan(aH(tan(.0125),tan(1.1),U))-.0125)/(1.1-.0125)else
aP=b.min(g(19),99)ax=s(Z)p=an(p+E*.001,-.1,.3)l=(.99/(1+.4*2.7^(-.014*ax)))if(p+l)>1 then
p=1-l
elseif(p+l)<0 then
p=-l
end
l=l+p-aP/4000
end
K(1,-as/D)K(2,aE/D*2.942+.7355)K(3,l)end
function onDraw()i,w=t.getWidth(),t.getHeight()if ad then
aq(1,1,1,200)t.drawRectF(2,w-6,12,5)aq(85,160,35)t.drawText(2,w-6,"SOI")end
end
