-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2888 (3222 with comment) chars

P=property
Z=output
ak=input
t=screen
ae=t.setColor
g=ak.getNumber
U=Z.setNumber
bd=ak.getBool
aZ=Z.setBool
D=P.getNumber
aW=P.getBool
be=P.getText
b=math
pi=b.pi
I=pi*2
sin=b.sin
cos=b.cos
tan=b.tan
asin=b.asin
acos=b.acos
atan=b.atan
function f(w,B,aH,as)return{a=w
or 0,c=B
or 0,d=aH
or 0,i=as
or 0}end
function y(_,e)return f(_.a+e.a,_.c+e.c,_.d+e.d)end
function aV(_,e)return f(_.a*e.a,_.c*e.c,_.d*e.d)end
function l(_,x)return f(_.a*x,_.c*x,_.d*x)end
function Y(_)return l(_,-1)end
function Q(_,e)return y(_,Y(e))end
function s(_)return b.sqrt(_.a*_.a+_.c*_.c+_.d*_.d)end
function aB(_,x)return l(_,1/x)end
function aR(_)return aB(_,s(_))end
function T(_,e)return _.a*e.a+_.c*e.c+_.d*e.d
end
function aQ(_,e)return f(_.c*e.d-_.d*e.c,_.d*e.a-_.a*e.d,_.a*e.c-_.c*e.a)end
function bc(u,W,v)local v=v
or 1
return f(b.sin(u)*b.cos(W)*v,b.cos(u)*b.cos(W)*v,b.sin(W)*v)end
function aC(_,r)if not n then
n={}n[r]={G=f(),L=f()}elseif not n[r]then
n[r]={G=f(),L=f()}end
n[r].L=Q(_,n[r].G)n[r].G=_
return n[r].L
end
function aM(_,K,H,M)return f(T(K,_),T(H,_),T(M,_))end
function aX(_,K,H,M)return y(y(l(K,_.a),l(H,_.c)),l(M,_.d))end
function aA(_)return s(_),b.atan(_.a,_.c),b.asin(_.d/s(_))end
function S(ar)local b={}for k=1,3 do
b[k]={}for o=1,3 do
b[k][o]=ar and ar[k*3-3+o]or 0
end
end
return b
end
function z(az,p)local b={}for k=1,3 do
b[k]={}for o=1,3 do
b[k][o]=0
for ad=1,3 do
b[k][o]=b[k][o]+az[k][ad]*p[ad][o]end
end
end
return b
end
function V(j,i)local a={}a.a=i.a*j[1][1]+i.c*j[2][1]+i.d*j[3][1]a.c=i.a*j[1][2]+i.c*j[2][2]+i.d*j[3][2]a.d=i.a*j[1][3]+i.c*j[2][3]+i.d*j[3][3]return a end
function an(w,min,max)return b.max(min,b.min(w,max))end
function at(w,B,p)return w*(1-p)+B*p end
aK=f(D("CAM X offset"),D("CAM Y offset"),D("CAM Z offset"))p=4
b_,aY=0,0
aT,F,q,aS=.5,.88,0,0
function onTick()ac,ag,aa=g(4),g(5),g(6)E,C,O=cos(ac),cos(ag),cos(aa)af,X,N=sin(ac),sin(ag),sin(aa)ah=f(C*O,-X,C*N)ai=f(af*N+E*X*O,E*C,-af*O+E*X*N)aO=aQ(ah,ai)ay=Y(ai)A=l(f(g(10),g(12),g(11)),I/60)ao=aC(A,"angular_acc")aq=l(A,p)aD=y(aq,l(ao,.5*p^2))h=s(ao)>.001 and aD or(s(A)>.001 and aq or f(0,0,0))al=S({1,0,0,0,cos(h.a),-sin(h.a),0,sin(h.a),cos(h.a)})aj=S({cos(h.c),0,sin(h.c),0,1,0,-sin(h.c),0,cos(h.c)})am=S({cos(h.d),-sin(h.d),0,sin(h.d),cos(h.d),0,0,0,1})aL=z(z(am,aj),al)ba=z(z(al,aj),am)J=aL
aw=V(J,ah)aJ=V(J,aO)aF=V(J,ay)av=f(g(1),g(3),g(2))aE=f(g(13),g(14),g(15))ap=Q(aE,av)ax=Q(aM(ap,aw,aJ,aF),aK)bb,au,aG=aA(ax)ab=g(16)==2
aU=g(17)>0
aN=g(20)>0
if ab then
R=g(18)else
R=0
end
if aN then
F=an(F+R*.004,.3,1)m=(atan(at(tan(.0125),tan(1.1),F))-.0125)/(1.1-.0125)else
aI=b.min(g(19),99)aP=s(ap)q=an(q+R*.001,-.1,.3)m=(.99/(1+.4*2.7^(-.014*aP)))if(q+m)>1 then
q=1-m
elseif(q+m)<0 then
q=-m
end
m=m+q-aI/4000
end
U(1,-au/I)U(2,aG/I*2.942+.7355)U(3,m)end
function onDraw()i,u=t.getWidth(),t.getHeight()if ab then
ae(1,1,1,200)t.drawRectF(2,u-6,12,5)ae(85,160,35)t.drawText(2,u-6,"SOI")end
end
