-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2841 (3146 with comment) chars

S=property
ao=output
Z=input
v=screen
ak=v.setColor
f=Z.getNumber
K=ao.setNumber
aS=Z.getBool
aU=ao.setBool
aQ=S.getNumber
aX=S.getBool
aZ=S.getText
a=math
pi=a.pi
U=pi*2
sin=a.sin
cos=a.cos
tan=a.tan
asin=a.asin
acos=a.acos
atan=a.atan
function g(u,E,aC,as)return{b=u
or 0,c=E
or 0,d=aC
or 0,i=as
or 0}end
function z(_,e)return g(_.b+e.b,_.c+e.c,_.d+e.d)end
function aW(_,e)return g(_.b*e.b,_.c*e.c,_.d*e.d)end
function m(_,x)return g(_.b*x,_.c*x,_.d*x)end
function am(_)return m(_,-1)end
function C(_,e)return z(_,am(e))end
function s(_)return a.sqrt(_.b*_.b+_.c*_.c+_.d*_.d)end
function aA(_,x)return m(_,1/x)end
function be(_)return aA(_,s(_))end
function B(_,e)return _.b*e.b+_.c*e.c+_.d*e.d
end
function aP(_,e)return g(_.c*e.d-_.d*e.c,_.d*e.b-_.b*e.d,_.b*e.c-_.c*e.b)end
function bc(t,A,w)local w=w
or 1
return g(a.sin(t)*a.cos(A)*w,a.cos(t)*a.cos(A)*w,a.sin(A)*w)end
function aM(_,o)if not n then
n={}n[o]={D=g(),T=g()}elseif not n[o]then
n[o]={D=g(),T=g()}end
n[o].T=C(_,n[o].D)n[o].D=_
return n[o].T
end
function aK(_,W,N,J)return g(B(W,_),B(N,_),B(J,_))end
function bd(_,W,N,J)return z(z(m(W,_.b),m(N,_.c)),m(J,_.d))end
function ay(_)return s(_),a.atan(_.b,_.c),a.asin(_.d/s(_))end
function F(aj)local a={}for j=1,3 do
a[j]={}for q=1,3 do
a[j][q]=aj and aj[j*3-3+q]or 0
end
end
return a
end
function y(av,p)local a={}for j=1,3 do
a[j]={}for q=1,3 do
a[j][q]=0
for ah=1,3 do
a[j][q]=a[j][q]+av[j][ah]*p[ah][q]end
end
end
return a
end
function R(k,i)local b={}b.b=i.b*k[1][1]+i.c*k[2][1]+i.d*k[3][1]b.c=i.b*k[1][2]+i.c*k[2][2]+i.d*k[3][2]b.d=i.b*k[1][3]+i.c*k[2][3]+i.d*k[3][3]return b end
function al(u,min,max)return a.max(min,a.min(u,max))end
function aG(u,E,p)return u*(1-p)+E*p end
au=g(0,1.5,-1)p=4
aY,b_=0,0
aR,M,r,bb=.5,.88,0,0
function onTick()ap,ab,aq=f(4),f(5),f(6)V,G,I=cos(ap),cos(ab),cos(aq)aa,L,O=sin(ap),sin(ab),sin(aq)ag=g(G*I,-L,G*O)Y=g(aa*O+V*L*I,V*G,-aa*I+V*L*O)aL=aP(ag,Y)aF=am(Y)Q=m(g(f(10),f(12),f(11)),U/60)ad=aM(Q,"angular_acc")ai=m(Q,p)aO=z(ai,m(ad,.5*p^2))h=s(ad)>.001 and aO or(s(Q)>.001 and ai or g(0,0,0))an=F({1,0,0,0,cos(h.b),-sin(h.b),0,sin(h.b),cos(h.b)})X=F({cos(h.c),0,sin(h.c),0,1,0,-sin(h.c),0,cos(h.c)})ae=F({cos(h.d),-sin(h.d),0,sin(h.d),cos(h.d),0,0,0,1})ar=y(y(ae,X),an)ba=y(y(an,X),ae)P=ar
at=R(P,ag)aw=R(P,aL)aN=R(P,aF)aD=g(f(1),f(3),f(2))az=g(f(13),f(14),f(15))af=C(az,aD)ax=C(aK(af,at,aw,aN),au)aV,aJ,aI=ay(ax)ac=f(16)==2
aT=f(17)>0
aH=f(20)>0
if ac then
H=f(18)else
H=0
end
if aH then
M=al(M+H*.004,.3,1)l=(atan(aG(tan(.0125),tan(1.1),M))-.0125)/(1.1-.0125)else
aB=a.min(f(19),99)aE=s(af)r=al(r+H*.001,-.1,.3)l=(.99/(1+.4*2.7^(-.014*aE)))if(r+l)>1 then
r=1-l
elseif(r+l)<0 then
r=-l
end
l=l+r-aB/4000
end
K(1,-aJ/U)K(2,aI/U*2.942+.7355)K(3,l)end
function onDraw()i,t=v.getWidth(),v.getHeight()if ac then
ak(1,1,1,200)v.drawRectF(2,t-6,12,5)ak(85,160,35)v.drawText(2,t-6,"SOI")end
end
