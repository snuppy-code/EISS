-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2888 (3222 with comment) chars

I=property
an=output
ap=input
x=screen
aj=x.setColor
f=ap.getNumber
G=an.setNumber
bd=ap.getBool
bb=an.setBool
T=I.getNumber
ba=I.getBool
aT=I.getText
b=math
pi=b.pi
B=pi*2
sin=b.sin
cos=b.cos
tan=b.tan
asin=b.asin
acos=b.acos
atan=b.atan
function g(w,K,aH,aD)return{a=w
or 0,d=K
or 0,c=aH
or 0,i=aD
or 0}end
function z(_,e)return g(_.a+e.a,_.d+e.d,_.c+e.c)end
function bc(_,e)return g(_.a*e.a,_.d*e.d,_.c*e.c)end
function n(_,u)return g(_.a*u,_.d*u,_.c*u)end
function aq(_)return n(_,-1)end
function Q(_,e)return z(_,aq(e))end
function s(_)return b.sqrt(_.a*_.a+_.d*_.d+_.c*_.c)end
function aL(_,u)return n(_,1/u)end
function aX(_)return aL(_,s(_))end
function R(_,e)return _.a*e.a+_.d*e.d+_.c*e.c
end
function aK(_,e)return g(_.d*e.c-_.c*e.d,_.c*e.a-_.a*e.c,_.a*e.d-_.d*e.a)end
function aY(t,N,v)local v=v
or 1
return g(b.sin(t)*b.cos(N)*v,b.cos(t)*b.cos(N)*v,b.sin(N)*v)end
function aE(_,o)if not l then
l={}l[o]={L=g(),X=g()}elseif not l[o]then
l[o]={L=g(),X=g()}end
l[o].X=Q(_,l[o].L)l[o].L=_
return l[o].X
end
function aI(_,H,O,M)return g(R(H,_),R(O,_),R(M,_))end
function b_(_,H,O,M)return z(z(n(H,_.a),n(O,_.d)),n(M,_.c))end
function as(_)return s(_),b.atan(_.a,_.d),b.asin(_.c/s(_))end
function V(ae)local b={}for k=1,3 do
b[k]={}for r=1,3 do
b[k][r]=ae and ae[k*3-3+r]or 0
end
end
return b
end
function y(aM,p)local b={}for k=1,3 do
b[k]={}for r=1,3 do
b[k][r]=0
for ar=1,3 do
b[k][r]=b[k][r]+aM[k][ar]*p[ar][r]end
end
end
return b
end
function W(j,i)local a={}a.a=i.a*j[1][1]+i.d*j[2][1]+i.c*j[3][1]a.d=i.a*j[1][2]+i.d*j[2][2]+i.c*j[3][2]a.c=i.a*j[1][3]+i.d*j[2][3]+i.c*j[3][3]return a end
function aa(w,min,max)return b.max(min,b.min(w,max))end
function aC(w,K,p)return w*(1-p)+K*p end
av=g(T("CAM X offset"),T("CAM Y offset"),T("CAM Z offset"))p=4
aW,be=0,0
aU,F,q,aS=.5,.88,0,0
function onTick()ah,Z,ab=f(4),f(5),f(6)E,C,A=cos(ah),cos(Z),cos(ab)Y,U,P=sin(ah),sin(Z),sin(ab)ao=g(C*A,-U,C*P)ad=g(Y*P+E*U*A,E*C,-Y*A+E*U*P)aw=aK(ao,ad)aP=aq(ad)D=n(g(f(10),f(12),f(11)),B/60)ak=aE(D,"angular_acc")ac=n(D,p)aA=z(ac,n(ak,.5*p^2))h=s(ak)>.001 and aA or(s(D)>.001 and ac or g(0,0,0))al=V({1,0,0,0,cos(h.a),-sin(h.a),0,sin(h.a),cos(h.a)})am=V({cos(h.d),0,sin(h.d),0,1,0,-sin(h.d),0,cos(h.d)})af=V({cos(h.c),-sin(h.c),0,sin(h.c),cos(h.c),0,0,0,1})aJ=y(y(af,am),al)aR=y(y(al,am),af)J=aJ
aQ=W(J,ao)aO=W(J,aw)ax=W(J,aP)au=g(f(1),f(3),f(2))at=g(f(13),f(14),f(15))ag=Q(at,au)az=Q(aI(ag,aQ,aO,ax),av)aV,aN,aG=as(az)ai=f(16)==2
aZ=f(17)>0
aB=f(20)>0
if ai then
S=f(18)else
S=0
end
if aB then
F=aa(F+S*.004,.3,1)m=(atan(aC(tan(.0125),tan(1.1),F))-.0125)/(1.1-.0125)else
ay=b.min(f(19),99)aF=s(ag)q=aa(q+S*.001,-.1,.3)m=(.99/(1+.4*2.7^(-.014*aF)))if(q+m)>1 then
q=1-m
elseif(q+m)<0 then
q=-m
end
m=m+q-ay/4000
end
G(1,-aN/B)G(2,aG/B*2.942+.7355)G(3,m)end
function onDraw()i,t=x.getWidth(),x.getHeight()if ai then
aj(1,1,1,200)x.drawRectF(2,t-6,12,5)aj(85,160,35)x.drawText(2,t-6,"SOI")end
end
