-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2888 (3222 with comment) chars

O=property
an=output
ak=input
t=screen
af=t.setColor
f=ak.getNumber
L=an.setNumber
ba=ak.getBool
aR=an.setBool
J=O.getNumber
aZ=O.getBool
be=O.getText
a=math
pi=a.pi
X=pi*2
sin=a.sin
cos=a.cos
tan=a.tan
asin=a.asin
acos=a.acos
atan=a.atan
function g(u,U,aL,at)return{b=u
or 0,d=U
or 0,c=aL
or 0,i=at
or 0}end
function z(_,e)return g(_.b+e.b,_.d+e.d,_.c+e.c)end
function aW(_,e)return g(_.b*e.b,_.d*e.d,_.c*e.c)end
function m(_,x)return g(_.b*x,_.d*x,_.c*x)end
function ae(_)return m(_,-1)end
function S(_,e)return z(_,ae(e))end
function s(_)return a.sqrt(_.b*_.b+_.d*_.d+_.c*_.c)end
function aI(_,x)return m(_,1/x)end
function aV(_)return aI(_,s(_))end
function R(_,e)return _.b*e.b+_.d*e.d+_.c*e.c
end
function aC(_,e)return g(_.d*e.c-_.c*e.d,_.c*e.b-_.b*e.c,_.b*e.d-_.d*e.b)end
function aT(w,Q,v)local v=v
or 1
return g(a.sin(w)*a.cos(Q)*v,a.cos(w)*a.cos(Q)*v,a.sin(Q)*v)end
function aO(_,q)if not n then
n={}n[q]={I=g(),G=g()}elseif not n[q]then
n[q]={I=g(),G=g()}end
n[q].G=S(_,n[q].I)n[q].I=_
return n[q].G
end
function aE(_,V,K,E)return g(R(V,_),R(K,_),R(E,_))end
function aX(_,V,K,E)return z(z(m(V,_.b),m(K,_.d)),m(E,_.c))end
function ax(_)return s(_),a.atan(_.b,_.d),a.asin(_.c/s(_))end
function P(aq)local a={}for j=1,3 do
a[j]={}for o=1,3 do
a[j][o]=aq and aq[j*3-3+o]or 0
end
end
return a
end
function y(aA,p)local a={}for j=1,3 do
a[j]={}for o=1,3 do
a[j][o]=0
for ao=1,3 do
a[j][o]=a[j][o]+aA[j][ao]*p[ao][o]end
end
end
return a
end
function N(k,i)local b={}b.b=i.b*k[1][1]+i.d*k[2][1]+i.c*k[3][1]b.d=i.b*k[1][2]+i.d*k[2][2]+i.c*k[3][2]b.c=i.b*k[1][3]+i.d*k[2][3]+i.c*k[3][3]return b end
function ag(u,min,max)return a.max(min,a.min(u,max))end
function au(u,U,p)return u*(1-p)+U*p end
ay=g(J("CAM X offset"),J("CAM Y offset"),J("CAM Z offset"))p=4
bc,bb=0,0
aU,B,r,aY=.5,.88,0,0
function onTick()ah,aj,ab=f(4),f(5),f(6)F,A,M=cos(ah),cos(aj),cos(ab)am,H,D=sin(ah),sin(aj),sin(ab)Z=g(A*M,-H,A*D)ad=g(am*D+F*H*M,F*A,-am*M+F*H*D)aD=aC(Z,ad)aw=ae(ad)W=m(g(f(10),f(12),f(11)),X/60)aa=aO(W,"angular_acc")ac=m(W,p)as=z(ac,m(aa,.5*p^2))h=s(aa)>.001 and as or(s(W)>.001 and ac or g(0,0,0))ap=P({1,0,0,0,cos(h.b),-sin(h.b),0,sin(h.b),cos(h.b)})ar=P({cos(h.d),0,sin(h.d),0,1,0,-sin(h.d),0,cos(h.d)})al=P({cos(h.c),-sin(h.c),0,sin(h.c),cos(h.c),0,0,0,1})az=y(y(al,ar),ap)bd=y(y(ap,ar),al)C=az
aN=N(C,Z)aB=N(C,aD)aP=N(C,aw)av=g(f(1),f(3),f(2))aK=g(f(13),f(14),f(15))ai=S(aK,av)aM=S(aE(ai,aN,aB,aP),ay)b_,aG,aH=ax(aM)Y=f(16)==2
aS=f(17)>0
aJ=f(20)>0
if Y then
T=f(18)else
T=0
end
if aJ then
B=ag(B+T*.004,.3,1)l=(atan(au(tan(.0125),tan(1.1),B))-.0125)/(1.1-.0125)else
aQ=a.min(f(19),99)aF=s(ai)r=ag(r+T*.001,-.1,.3)l=(.99/(1+.4*2.7^(-.014*aF)))if(r+l)>1 then
r=1-l
elseif(r+l)<0 then
r=-l
end
l=l+r-aQ/4000
end
L(1,-aG/X)L(2,aH/X*2.942+.7355)L(3,l)end
function onDraw()i,w=t.getWidth(),t.getHeight()if Y then
af(1,1,1,200)t.drawRectF(2,w-6,12,5)af(85,160,35)t.drawText(2,w-6,"SOI")end
end
