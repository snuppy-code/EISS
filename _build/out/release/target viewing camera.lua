-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2888 (3255 with comment) chars

M=property
ad=output
aq=input
u=screen
Y=u.setColor
f=aq.getNumber
A=ad.setNumber
aS=aq.getBool
aR=ad.setBool
B=M.getNumber
ba=M.getBool
be=M.getText
b=math
pi=b.pi
G=pi*2
sin=b.sin
cos=b.cos
tan=b.tan
asin=b.asin
acos=b.acos
atan=b.atan
function g(t,D,aJ,aD)return{a=t
or 0,c=D
or 0,d=aJ
or 0,i=aD
or 0}end
function z(_,e)return g(_.a+e.a,_.c+e.c,_.d+e.d)end
function bc(_,e)return g(_.a*e.a,_.c*e.c,_.d*e.d)end
function n(_,v)return g(_.a*v,_.c*v,_.d*v)end
function aj(_)return n(_,-1)end
function U(_,e)return z(_,aj(e))end
function s(_)return b.sqrt(_.a*_.a+_.c*_.c+_.d*_.d)end
function aw(_,v)return n(_,1/v)end
function aT(_)return aw(_,s(_))end
function J(_,e)return _.a*e.a+_.c*e.c+_.d*e.d
end
function aG(_,e)return g(_.c*e.d-_.d*e.c,_.d*e.a-_.a*e.d,_.a*e.c-_.c*e.a)end
function aY(x,I,w)local w=w
or 1
return g(b.sin(x)*b.cos(I)*w,b.cos(x)*b.cos(I)*w,b.sin(I)*w)end
function aM(_,p)if not m then
m={}m[p]={H=g(),V=g()}elseif not m[p]then
m[p]={H=g(),V=g()}end
m[p].V=U(_,m[p].H)m[p].H=_
return m[p].V
end
function ax(_,Q,W,R)return g(J(Q,_),J(W,_),J(R,_))end
function bd(_,Q,W,R)return z(z(n(Q,_.a),n(W,_.c)),n(R,_.d))end
function aF(_)return s(_),b.atan(_.a,_.c),b.asin(_.d/s(_))end
function P(ae)local b={}for k=1,3 do
b[k]={}for q=1,3 do
b[k][q]=ae and ae[k*3-3+q]or 0
end
end
return b
end
function y(at,o)local b={}for k=1,3 do
b[k]={}for q=1,3 do
b[k][q]=0
for ar=1,3 do
b[k][q]=b[k][q]+at[k][ar]*o[ar][q]end
end
end
return b
end
function L(j,i)local a={}a.a=i.a*j[1][1]+i.c*j[2][1]+i.d*j[3][1]a.c=i.a*j[1][2]+i.c*j[2][2]+i.d*j[3][2]a.d=i.a*j[1][3]+i.c*j[2][3]+i.d*j[3][3]return a end
function ao(t,min,max)return b.max(min,b.min(t,max))end
function aE(t,D,o)return t*(1-o)+D*o end
aL=g(B("CAM X offset"),B("CAM Y offset"),B("CAM Z offset"))o=4
aV,aZ=0,0
aU,T,r,bb=.5,.88,0,0
function onTick()al,ab,an=f(4),f(5),f(6)S,C,N=cos(al),cos(ab),cos(an)ai,X,K=sin(al),sin(ab),sin(an)ah=g(C*N,-X,C*K)Z=g(ai*K+S*X*N,S*C,-ai*N+S*X*K)aK=aG(ah,Z)av=aj(Z)E=n(g(f(10),f(12),f(11)),G/60)af=aM(E,"angular_acc")ac=n(E,o)aN=z(ac,n(af,.5*o^2))h=s(af)>.001 and aN or(s(E)>.001 and ac or g(0,0,0))ap=P({1,0,0,0,cos(h.a),-sin(h.a),0,sin(h.a),cos(h.a)})aa=P({cos(h.c),0,sin(h.c),0,1,0,-sin(h.c),0,cos(h.c)})am=P({cos(h.d),-sin(h.d),0,sin(h.d),cos(h.d),0,0,0,1})aC=y(y(am,aa),ap)b_=y(y(ap,aa),am)F=aC
aQ=L(F,ah)aP=L(F,aK)aO=L(F,av)aI=g(f(1),f(3),f(2))au=g(f(13),f(14),f(15))ag=U(au,aI)aH=U(ax(ag,aQ,aP,aO),aL)aW,aB,as=aF(aH)ak=f(16)==2
aX=f(17)>0
az=f(20)>0
if ak then
O=f(18)else
O=0
end
if az then
T=ao(T+O*.004,.3,1)l=(atan(aE(tan(.0125),tan(1.1),T))-.0125)/(1.1-.0125)else
aA=b.min(f(19),99)ay=s(ag)r=ao(r+O*.001,-.1,.3)l=(.99/(1+.4*2.7^(-.014*ay)))if(r+l)>1 then
r=1-l
elseif(r+l)<0 then
r=-l
end
l=l+r-aA/4000
end
A(1,-aB/G)A(2,as/G*2.942+.7355)A(3,l)end
function onDraw()i,x=u.getWidth(),u.getHeight()if ak then
Y(1,1,1,200)u.drawRectF(2,x-6,12,5)Y(85,160,35)u.drawText(2,x-6,"SOI")end
end
