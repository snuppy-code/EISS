-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2841 (3175 with comment) chars

K=property
ag=output
ap=input
t=screen
Z=t.setColor
f=ap.getNumber
F=ag.setNumber
ba=ap.getBool
aW=ag.setBool
aX=K.getNumber
bb=K.getBool
aQ=K.getText
b=math
pi=b.pi
V=pi*2
sin=b.sin
cos=b.cos
tan=b.tan
asin=b.asin
acos=b.acos
atan=b.atan
function g(w,R,aO,aH)return{a=w
or 0,c=R
or 0,d=aO
or 0,i=aH
or 0}end
function y(_,e)return g(_.a+e.a,_.c+e.c,_.d+e.d)end
function aV(_,e)return g(_.a*e.a,_.c*e.c,_.d*e.d)end
function n(_,x)return g(_.a*x,_.c*x,_.d*x)end
function ai(_)return n(_,-1)end
function O(_,e)return y(_,ai(e))end
function s(_)return b.sqrt(_.a*_.a+_.c*_.c+_.d*_.d)end
function aG(_,x)return n(_,1/x)end
function be(_)return aG(_,s(_))end
function D(_,e)return _.a*e.a+_.c*e.c+_.d*e.d
end
function aM(_,e)return g(_.c*e.d-_.d*e.c,_.d*e.a-_.a*e.d,_.a*e.c-_.c*e.a)end
function aT(v,M,u)local u=u
or 1
return g(b.sin(v)*b.cos(M)*u,b.cos(v)*b.cos(M)*u,b.sin(M)*u)end
function as(_,q)if not m then
m={}m[q]={P=g(),L=g()}elseif not m[q]then
m[q]={P=g(),L=g()}end
m[q].L=O(_,m[q].P)m[q].P=_
return m[q].L
end
function aK(_,W,T,N)return g(D(W,_),D(T,_),D(N,_))end
function bd(_,W,T,N)return y(y(n(W,_.a),n(T,_.c)),n(N,_.d))end
function aB(_)return s(_),b.atan(_.a,_.c),b.asin(_.d/s(_))end
function I(aq)local b={}for j=1,3 do
b[j]={}for r=1,3 do
b[j][r]=aq and aq[j*3-3+r]or 0
end
end
return b
end
function z(aJ,o)local b={}for j=1,3 do
b[j]={}for r=1,3 do
b[j][r]=0
for ac=1,3 do
b[j][r]=b[j][r]+aJ[j][ac]*o[ac][r]end
end
end
return b
end
function J(k,i)local a={}a.a=i.a*k[1][1]+i.c*k[2][1]+i.d*k[3][1]a.c=i.a*k[1][2]+i.c*k[2][2]+i.d*k[3][2]a.d=i.a*k[1][3]+i.c*k[2][3]+i.d*k[3][3]return a end
function aa(w,min,max)return b.max(min,b.min(w,max))end
function av(w,R,o)return w*(1-o)+R*o end
ar=g(0,1.5,-1)o=4
aS,b_=0,0
aY,Q,p,aU=.5,.88,0,0
function onTick()aj,X,ab=f(4),f(5),f(6)H,C,E=cos(aj),cos(X),cos(ab)af,U,B=sin(aj),sin(X),sin(ab)ah=g(C*E,-U,C*B)ae=g(af*B+H*U*E,H*C,-af*E+H*U*B)aP=aM(ah,ae)ay=ai(ae)S=n(g(f(10),f(12),f(11)),V/60)Y=as(S,"angular_acc")am=n(S,o)aE=y(am,n(Y,.5*o^2))h=s(Y)>.001 and aE or(s(S)>.001 and am or g(0,0,0))ad=I({1,0,0,0,cos(h.a),-sin(h.a),0,sin(h.a),cos(h.a)})al=I({cos(h.c),0,sin(h.c),0,1,0,-sin(h.c),0,cos(h.c)})ao=I({cos(h.d),-sin(h.d),0,sin(h.d),cos(h.d),0,0,0,1})aD=z(z(ao,al),ad)aZ=z(z(ad,al),ao)A=aD
aA=J(A,ah)aC=J(A,aP)aw=J(A,ay)ax=g(f(1),f(3),f(2))az=g(f(13),f(14),f(15))ak=O(az,ax)aI=O(aK(ak,aA,aC,aw),ar)bc,aL,at=aB(aI)an=f(16)==2
aR=f(17)>0
au=f(20)>0
if an then
G=f(18)else
G=0
end
if au then
Q=aa(Q+G*.004,.3,1)l=(atan(av(tan(.0125),tan(1.1),Q))-.0125)/(1.1-.0125)else
aF=b.min(f(19),99)aN=s(ak)p=aa(p+G*.001,-.1,.3)l=(.99/(1+.4*2.7^(-.014*aN)))if(p+l)>1 then
p=1-l
elseif(p+l)<0 then
p=-l
end
l=l+p-aF/4000
end
F(1,-aL/V)F(2,at/V*2.942+.7355)F(3,l)end
function onDraw()i,v=t.getWidth(),t.getHeight()if an then
Z(1,1,1,200)t.drawRectF(2,v-6,12,5)Z(85,160,35)t.drawText(2,v-6,"SOI")end
end
