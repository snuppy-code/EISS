-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2841 (3146 with comment) chars

M=property
aj=output
X=input
v=screen
ao=v.setColor
g=X.getNumber
W=aj.setNumber
aS=X.getBool
bd=aj.setBool
aT=M.getNumber
aQ=M.getBool
ba=M.getText
b=math
pi=b.pi
S=pi*2
sin=b.sin
cos=b.cos
tan=b.tan
asin=b.asin
acos=b.acos
atan=b.atan
function f(t,O,aJ,ax)return{a=t
or 0,c=O
or 0,d=aJ
or 0,i=ax
or 0}end
function y(_,e)return f(_.a+e.a,_.c+e.c,_.d+e.d)end
function aX(_,e)return f(_.a*e.a,_.c*e.c,_.d*e.d)end
function m(_,w)return f(_.a*w,_.c*w,_.d*w)end
function ag(_)return m(_,-1)end
function N(_,e)return y(_,ag(e))end
function s(_)return b.sqrt(_.a*_.a+_.c*_.c+_.d*_.d)end
function au(_,w)return m(_,1/w)end
function aV(_)return au(_,s(_))end
function F(_,e)return _.a*e.a+_.c*e.c+_.d*e.d
end
function aC(_,e)return f(_.c*e.d-_.d*e.c,_.d*e.a-_.a*e.d,_.a*e.c-_.c*e.a)end
function aU(u,L,x)local x=x
or 1
return f(b.sin(u)*b.cos(L)*x,b.cos(u)*b.cos(L)*x,b.sin(L)*x)end
function av(_,p)if not n then
n={}n[p]={V=f(),A=f()}elseif not n[p]then
n[p]={V=f(),A=f()}end
n[p].A=N(_,n[p].V)n[p].V=_
return n[p].A
end
function aD(_,G,T,K)return f(F(G,_),F(T,_),F(K,_))end
function b_(_,G,T,K)return y(y(m(G,_.a),m(T,_.c)),m(K,_.d))end
function at(_)return s(_),b.atan(_.a,_.c),b.asin(_.d/s(_))end
function R(an)local b={}for k=1,3 do
b[k]={}for o=1,3 do
b[k][o]=an and an[k*3-3+o]or 0
end
end
return b
end
function z(aO,q)local b={}for k=1,3 do
b[k]={}for o=1,3 do
b[k][o]=0
for am=1,3 do
b[k][o]=b[k][o]+aO[k][am]*q[am][o]end
end
end
return b
end
function C(j,i)local a={}a.a=i.a*j[1][1]+i.c*j[2][1]+i.d*j[3][1]a.c=i.a*j[1][2]+i.c*j[2][2]+i.d*j[3][2]a.d=i.a*j[1][3]+i.c*j[2][3]+i.d*j[3][3]return a end
function Z(t,min,max)return b.max(min,b.min(t,max))end
function aF(t,O,q)return t*(1-q)+O*q end
aL=f(0,1.5,-1)q=4
aY,be=0,0
aW,P,r,bc=.5,.88,0,0
function onTick()ac,al,aq=g(4),g(5),g(6)U,E,J=cos(ac),cos(al),cos(aq)ab,B,D=sin(ac),sin(al),sin(aq)af=f(E*J,-B,E*D)aa=f(ab*D+U*B*J,U*E,-ab*J+U*B*D)aP=aC(af,aa)aA=ag(aa)Q=m(f(g(10),g(12),g(11)),S/60)ak=av(Q,"angular_acc")ap=m(Q,q)aM=y(ap,m(ak,.5*q^2))h=s(ak)>.001 and aM or(s(Q)>.001 and ap or f(0,0,0))Y=R({1,0,0,0,cos(h.a),-sin(h.a),0,sin(h.a),cos(h.a)})ad=R({cos(h.c),0,sin(h.c),0,1,0,-sin(h.c),0,cos(h.c)})ah=R({cos(h.d),-sin(h.d),0,sin(h.d),cos(h.d),0,0,0,1})aN=z(z(ah,ad),Y)bb=z(z(Y,ad),ah)I=aN
az=C(I,af)aB=C(I,aP)aE=C(I,aA)aG=f(g(1),g(3),g(2))aK=f(g(13),g(14),g(15))ae=N(aK,aG)ar=N(aD(ae,az,aB,aE),aL)aR,aI,aH=at(ar)ai=g(16)==2
aZ=g(17)>0
ay=g(20)>0
if ai then
H=g(18)else
H=0
end
if ay then
P=Z(P+H*.004,.3,1)l=(atan(aF(tan(.0125),tan(1.1),P))-.0125)/(1.1-.0125)else
aw=b.min(g(19),99)as=s(ae)r=Z(r+H*.001,-.1,.3)l=(.99/(1+.4*2.7^(-.014*as)))if(r+l)>1 then
r=1-l
elseif(r+l)<0 then
r=-l
end
l=l+r-aw/4000
end
W(1,-aI/S)W(2,aH/S*2.942+.7355)W(3,l)end
function onDraw()i,u=v.getWidth(),v.getHeight()if ai then
ao(1,1,1,200)v.drawRectF(2,u-6,12,5)ao(85,160,35)v.drawText(2,u-6,"SOI")end
end
