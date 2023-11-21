-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2888 (3222 with comment) chars

M=property
an=output
ag=input
v=screen
ap=v.setColor
f=ag.getNumber
E=an.setNumber
aW=ag.getBool
aX=an.setBool
O=M.getNumber
aV=M.getBool
b_=M.getText
b=math
pi=b.pi
B=pi*2
sin=b.sin
cos=b.cos
tan=b.tan
asin=b.asin
acos=b.acos
atan=b.atan
function g(u,D,aI,aM)return{a=u
or 0,d=D
or 0,c=aI
or 0,i=aM
or 0}end
function z(_,e)return g(_.a+e.a,_.d+e.d,_.c+e.c)end
function aZ(_,e)return g(_.a*e.a,_.d*e.d,_.c*e.c)end
function m(_,w)return g(_.a*w,_.d*w,_.c*w)end
function ao(_)return m(_,-1)end
function J(_,e)return z(_,ao(e))end
function s(_)return b.sqrt(_.a*_.a+_.d*_.d+_.c*_.c)end
function au(_,w)return m(_,1/w)end
function bc(_)return au(_,s(_))end
function I(_,e)return _.a*e.a+_.d*e.d+_.c*e.c
end
function at(_,e)return g(_.d*e.c-_.c*e.d,_.c*e.a-_.a*e.c,_.a*e.d-_.d*e.a)end
function aT(x,N,t)local t=t
or 1
return g(b.sin(x)*b.cos(N)*t,b.cos(x)*b.cos(N)*t,b.sin(N)*t)end
function az(_,o)if not n then
n={}n[o]={G=g(),Q=g()}elseif not n[o]then
n[o]={G=g(),Q=g()}end
n[o].Q=J(_,n[o].G)n[o].G=_
return n[o].Q
end
function av(_,X,U,H)return g(I(X,_),I(U,_),I(H,_))end
function aR(_,X,U,H)return z(z(m(X,_.a),m(U,_.d)),m(H,_.c))end
function aD(_)return s(_),b.atan(_.a,_.d),b.asin(_.c/s(_))end
function K(ac)local b={}for k=1,3 do
b[k]={}for p=1,3 do
b[k][p]=ac and ac[k*3-3+p]or 0
end
end
return b
end
function y(ax,q)local b={}for k=1,3 do
b[k]={}for p=1,3 do
b[k][p]=0
for ar=1,3 do
b[k][p]=b[k][p]+ax[k][ar]*q[ar][p]end
end
end
return b
end
function V(j,i)local a={}a.a=i.a*j[1][1]+i.d*j[2][1]+i.c*j[3][1]a.d=i.a*j[1][2]+i.d*j[2][2]+i.c*j[3][2]a.c=i.a*j[1][3]+i.d*j[2][3]+i.c*j[3][3]return a end
function ab(u,min,max)return b.max(min,b.min(u,max))end
function aO(u,D,q)return u*(1-q)+D*q end
aE=g(O("CAM X offset"),O("CAM Y offset"),O("CAM Z offset"))q=4
aS,be=0,0
bb,S,r,aU=.5,.88,0,0
function onTick()al,ak,ae=f(4),f(5),f(6)F,L,W=cos(al),cos(ak),cos(ae)ai,A,T=sin(al),sin(ak),sin(ae)Y=g(L*W,-A,L*T)aa=g(ai*T+F*A*W,F*L,-ai*W+F*A*T)aA=at(Y,aa)aw=ao(aa)P=m(g(f(10),f(12),f(11)),B/60)aq=az(P,"angular_acc")af=m(P,q)as=z(af,m(aq,.5*q^2))h=s(aq)>.001 and as or(s(P)>.001 and af or g(0,0,0))Z=K({1,0,0,0,cos(h.a),-sin(h.a),0,sin(h.a),cos(h.a)})am=K({cos(h.d),0,sin(h.d),0,1,0,-sin(h.d),0,cos(h.d)})aj=K({cos(h.c),-sin(h.c),0,sin(h.c),cos(h.c),0,0,0,1})aQ=y(y(aj,am),Z)bd=y(y(Z,am),aj)R=aQ
aB=V(R,Y)ay=V(R,aA)aL=V(R,aw)aN=g(f(1),f(3),f(2))aC=g(f(13),f(14),f(15))ad=J(aC,aN)aP=J(av(ad,aB,ay,aL),aE)aY,aK,aH=aD(aP)ah=f(16)==2
ba=f(17)>0
aF=f(20)>0
if ah then
C=f(18)else
C=0
end
if aF then
S=ab(S+C*.004,.3,1)l=(atan(aO(tan(.0125),tan(1.1),S))-.0125)/(1.1-.0125)else
aJ=b.min(f(19),99)aG=s(ad)r=ab(r+C*.001,-.1,.3)l=(.99/(1+.4*2.7^(-.014*aG)))if(r+l)>1 then
r=1-l
elseif(r+l)<0 then
r=-l
end
l=l+r-aJ/4000
end
E(1,-aK/B)E(2,aH/B*2.942+.7355)E(3,l)end
function onDraw()i,x=v.getWidth(),v.getHeight()if ah then
ap(1,1,1,200)v.drawRectF(2,x-6,12,5)ap(85,160,35)v.drawText(2,x-6,"SOI")end
end
