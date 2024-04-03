-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2841 (3146 with comment) chars

A=property
aa=output
ao=input
t=screen
af=t.setColor
g=ao.getNumber
J=aa.setNumber
aR=ao.getBool
aT=aa.setBool
aZ=A.getNumber
ba=A.getBool
bb=A.getText
b=math
pi=b.pi
S=pi*2
sin=b.sin
cos=b.cos
tan=b.tan
asin=b.asin
acos=b.acos
atan=b.atan
function f(w,M,aE,ar)return{a=w
or 0,c=M
or 0,d=aE
or 0,i=ar
or 0}end
function y(_,e)return f(_.a+e.a,_.c+e.c,_.d+e.d)end
function be(_,e)return f(_.a*e.a,_.c*e.c,_.d*e.d)end
function m(_,x)return f(_.a*x,_.c*x,_.d*x)end
function ag(_)return m(_,-1)end
function I(_,e)return y(_,ag(e))end
function s(_)return b.sqrt(_.a*_.a+_.c*_.c+_.d*_.d)end
function ax(_,x)return m(_,1/x)end
function b_(_)return ax(_,s(_))end
function C(_,e)return _.a*e.a+_.c*e.c+_.d*e.d
end
function at(_,e)return f(_.c*e.d-_.d*e.c,_.d*e.a-_.a*e.d,_.a*e.c-_.c*e.a)end
function aV(v,O,u)local u=u
or 1
return f(b.sin(v)*b.cos(O)*u,b.cos(v)*b.cos(O)*u,b.sin(O)*u)end
function aI(_,p)if not l then
l={}l[p]={N=f(),Q=f()}elseif not l[p]then
l[p]={N=f(),Q=f()}end
l[p].Q=I(_,l[p].N)l[p].N=_
return l[p].Q
end
function aG(_,L,W,P)return f(C(L,_),C(W,_),C(P,_))end
function aS(_,L,W,P)return y(y(m(L,_.a),m(W,_.c)),m(P,_.d))end
function aF(_)return s(_),b.atan(_.a,_.c),b.asin(_.d/s(_))end
function R(ah)local b={}for j=1,3 do
b[j]={}for q=1,3 do
b[j][q]=ah and ah[j*3-3+q]or 0
end
end
return b
end
function z(aP,r)local b={}for j=1,3 do
b[j]={}for q=1,3 do
b[j][q]=0
for ab=1,3 do
b[j][q]=b[j][q]+aP[j][ab]*r[ab][q]end
end
end
return b
end
function K(k,i)local a={}a.a=i.a*k[1][1]+i.c*k[2][1]+i.d*k[3][1]a.c=i.a*k[1][2]+i.c*k[2][2]+i.d*k[3][2]a.d=i.a*k[1][3]+i.c*k[2][3]+i.d*k[3][3]return a end
function an(w,min,max)return b.max(min,b.min(w,max))end
function av(w,M,r)return w*(1-r)+M*r end
au=f(0,1.5,-1)r=4
aQ,aW=0,0
aX,F,o,bc=.5,.88,0,0
function onTick()aq,am,aj=g(4),g(5),g(6)H,E,G=cos(aq),cos(am),cos(aj)ad,T,V=sin(aq),sin(am),sin(aj)Y=f(E*G,-T,E*V)ak=f(ad*V+H*T*G,H*E,-ad*G+H*T*V)as=at(Y,ak)aH=ag(ak)D=m(f(g(10),g(12),g(11)),S/60)ap=aI(D,"angular_acc")Z=m(D,r)aA=y(Z,m(ap,.5*r^2))h=s(ap)>.001 and aA or(s(D)>.001 and Z or f(0,0,0))ai=R({1,0,0,0,cos(h.a),-sin(h.a),0,sin(h.a),cos(h.a)})X=R({cos(h.c),0,sin(h.c),0,1,0,-sin(h.c),0,cos(h.c)})ac=R({cos(h.d),-sin(h.d),0,sin(h.d),cos(h.d),0,0,0,1})aw=z(z(ac,X),ai)aU=z(z(ai,X),ac)B=aw
aK=K(B,Y)ay=K(B,as)aM=K(B,aH)aL=f(g(1),g(3),g(2))aO=f(g(13),g(14),g(15))al=I(aO,aL)aJ=I(aG(al,aK,ay,aM),au)aY,aB,aN=aF(aJ)ae=g(16)==2
bd=g(17)>0
aC=g(20)>0
if ae then
U=g(18)else
U=0
end
if aC then
F=an(F+U*.004,.3,1)n=(atan(av(tan(.0125),tan(1.1),F))-.0125)/(1.1-.0125)else
az=b.min(g(19),99)aD=s(al)o=an(o+U*.001,-.1,.3)n=(.99/(1+.4*2.7^(-.014*aD)))if(o+n)>1 then
o=1-n
elseif(o+n)<0 then
o=-n
end
n=n+o-az/4000
end
J(1,-aB/S)J(2,aN/S*2.942+.7355)J(3,n)end
function onDraw()i,v=t.getWidth(),t.getHeight()if ae then
af(1,1,1,200)t.drawRectF(2,v-6,12,5)af(85,160,35)t.drawText(2,v-6,"SOI")end
end
