-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2841 (3175 with comment) chars

I=property
an=output
aa=input
x=screen
ag=x.setColor
f=aa.getNumber
K=an.setNumber
aY=aa.getBool
bb=an.setBool
aV=I.getNumber
aZ=I.getBool
aQ=I.getText
b=math
pi=b.pi
F=pi*2
sin=b.sin
cos=b.cos
tan=b.tan
asin=b.asin
acos=b.acos
atan=b.atan
function g(v,N,aw,at)return{a=v
or 0,c=N
or 0,d=aw
or 0,i=at
or 0}end
function z(_,e)return g(_.a+e.a,_.c+e.c,_.d+e.d)end
function aX(_,e)return g(_.a*e.a,_.c*e.c,_.d*e.d)end
function m(_,u)return g(_.a*u,_.c*u,_.d*u)end
function aq(_)return m(_,-1)end
function R(_,e)return z(_,aq(e))end
function s(_)return b.sqrt(_.a*_.a+_.c*_.c+_.d*_.d)end
function aD(_,u)return m(_,1/u)end
function ba(_)return aD(_,s(_))end
function W(_,e)return _.a*e.a+_.c*e.c+_.d*e.d
end
function ar(_,e)return g(_.c*e.d-_.d*e.c,_.d*e.a-_.a*e.d,_.a*e.c-_.c*e.a)end
function aS(w,H,t)local t=t
or 1
return g(b.sin(w)*b.cos(H)*t,b.cos(w)*b.cos(H)*t,b.sin(H)*t)end
function aL(_,q)if not n then
n={}n[q]={P=g(),G=g()}elseif not n[q]then
n[q]={P=g(),G=g()}end
n[q].G=R(_,n[q].P)n[q].P=_
return n[q].G
end
function aI(_,O,C,D)return g(W(O,_),W(C,_),W(D,_))end
function aR(_,O,C,D)return z(z(m(O,_.a),m(C,_.c)),m(D,_.d))end
function aM(_)return s(_),b.atan(_.a,_.c),b.asin(_.d/s(_))end
function M(ak)local b={}for k=1,3 do
b[k]={}for r=1,3 do
b[k][r]=ak and ak[k*3-3+r]or 0
end
end
return b
end
function y(aJ,p)local b={}for k=1,3 do
b[k]={}for r=1,3 do
b[k][r]=0
for ah=1,3 do
b[k][r]=b[k][r]+aJ[k][ah]*p[ah][r]end
end
end
return b
end
function Q(j,i)local a={}a.a=i.a*j[1][1]+i.c*j[2][1]+i.d*j[3][1]a.c=i.a*j[1][2]+i.c*j[2][2]+i.d*j[3][2]a.d=i.a*j[1][3]+i.c*j[2][3]+i.d*j[3][3]return a end
function ap(v,min,max)return b.max(min,b.min(v,max))end
function as(v,N,p)return v*(1-p)+N*p end
aP=g(0,1.5,-1)p=4
aU,b_=0,0
aT,U,o,aW=.5,.88,0,0
function onTick()am,X,Z=f(4),f(5),f(6)T,L,E=cos(am),cos(X),cos(Z)ai,B,A=sin(am),sin(X),sin(Z)Y=g(L*E,-B,L*A)ae=g(ai*A+T*B*E,T*L,-ai*E+T*B*A)aN=ar(Y,ae)aA=aq(ae)J=m(g(f(10),f(12),f(11)),F/60)aj=aL(J,"angular_acc")ad=m(J,p)aO=z(ad,m(aj,.5*p^2))h=s(aj)>.001 and aO or(s(J)>.001 and ad or g(0,0,0))af=M({1,0,0,0,cos(h.a),-sin(h.a),0,sin(h.a),cos(h.a)})ab=M({cos(h.c),0,sin(h.c),0,1,0,-sin(h.c),0,cos(h.c)})ac=M({cos(h.d),-sin(h.d),0,sin(h.d),cos(h.d),0,0,0,1})aE=y(y(ac,ab),af)be=y(y(af,ab),ac)V=aE
aH=Q(V,Y)az=Q(V,aN)ay=Q(V,aA)ax=g(f(1),f(3),f(2))av=g(f(13),f(14),f(15))ao=R(av,ax)aF=R(aI(ao,aH,az,ay),aP)bd,aC,aB=aM(aF)al=f(16)==2
bc=f(17)>0
aK=f(20)>0
if al then
S=f(18)else
S=0
end
if aK then
U=ap(U+S*.004,.3,1)l=(atan(as(tan(.0125),tan(1.1),U))-.0125)/(1.1-.0125)else
au=b.min(f(19),99)aG=s(ao)o=ap(o+S*.001,-.1,.3)l=(.99/(1+.4*2.7^(-.014*aG)))if(o+l)>1 then
o=1-l
elseif(o+l)<0 then
o=-l
end
l=l+o-au/4000
end
K(1,-aC/F)K(2,aB/F*2.942+.7355)K(3,l)end
function onDraw()i,w=x.getWidth(),x.getHeight()if al then
ag(1,1,1,200)x.drawRectF(2,w-6,12,5)ag(85,160,35)x.drawText(2,w-6,"SOI")end
end
