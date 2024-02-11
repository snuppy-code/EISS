-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2774 (3079 with comment) chars
bo="FOX1"
bn="LASTKNOWN"

J=true
aF=false
aE=output
at=input
T=property
X=math
ai=X.sin
af=X.cos
z=debug.log
aI=T.getBool
C=at.getNumber
f=C; o=aE.setNumber; bk=at.getBool; bh=aE.setBool;
l=T.getNumber; bj=aI; bg=T.getText; h=X; pi=h.pi; aD=pi*2
function e(b,d,c)return{b=b or 0,d=d or 0,c=c or 0}end
function m(_,a)return e(_.b+a.b,_.d+a.d,_.c+a.c)end
function bl(_,a)return e(_.b*a.b,_.d*a.d,_.c*a.c)end
function g(_,u)return e(_.b*u,_.d*u,_.c*u)end
function ap(_)return g(_,-1)end
function y(_,a)return m(_,ap(a))end
function i(_)return h.sqrt(_.b*_.b+_.d*_.d+_.c*_.c)end
function aK(_,u)return g(_,1/u)end
function F(_)return aK(_,i(_))end
function q(_,a)return _.b*a.b+_.d*a.d+_.c*a.c
end
function x(_,a)return e(_.d*a.c-_.c*a.d,_.c*a.b-_.b*a.c,_.b*a.d-_.d*a.b)end
function al(_,a)return y(_,g(F(a),q(_,F(a))))end
function bf(an,M,w)local w=w or 1
return e(h.sin(an)*h.cos(M)*w,h.cos(an)*h.cos(M)*w,h.sin(M)*w)end
function H(_,n)if not j then
j={}j[n]={ac=e(),Q=e()}elseif not j[n]then
j[n]={ac=e(),Q=e()}end
j[n].Q=y(_,j[n].ac)j[n].ac=_
return j[n].Q
end
function ba(_,ag,U,Z)return e(q(ag,_),q(U,_),q(Z,_))end
function aw(_,ag,U,Z)return m(m(g(ag,_.b),g(U,_.d)),g(Z,_.c))end
function ar(b,am,E)return b<am and am or b>E and E or b
end
function bi(W,aR)z("VECTOR "..aR.." COMPONENTS:")z(W.b)z(W.d)z(W.c)z("------------------")end
function be()return((Y<=2495 or Y>=2505)and Y>=aZ and bd)end
function N()o(1,as)o(2,ak)end
function bm()o(1,0)o(2,1)end
t=l("Navigation Constant")aO=l("Pure Pursuit Navigation Constant")K=l("Max Control")aZ=l("Minimum Mass")as=l("Horizontal Offset")ak=l("Vertical Offset")bb=l("Max Distance from radio")v=aF
aQ=not aI("dumb launch?")O=0
function onTick()if aQ then
if f(15)==1 then
if O<10 then
O=O+1
N()else
ao,aG,av=C(4),C(5),C(6)P,ab,aj=af(ao),af(aG),af(av)ax,L,R=ai(ao),ai(aG),ai(av)G=e(ab*aj,-L,ab*R)I=e(ax*R+P*L*aj,P*ab,-ax*aj+P*L*R)ad=x(G,I)S=e(f(1),f(3),f(2))aa=H(S,"m_vel")aW=m(S,ap(aw(e(0,1.25,0),G,I,ad)))A=e(f(7),f(8),f(9))aB=f(12)au=f(13)aV=f(14)or 0
Y=aV*aB
aN=f(10)*aD
aH=f(11)*aD
aA=h.sin(aN)*aB
aP=h.sin(aH)*au
aL=h.cos(aH)*au
E=(aL^2-aA^2)^.5
aC=e(aA,E,aP)bd=i(aC)>0
aT=k or e()if be()then
ae=m(aW,aw(aC,G,I,ad))if i(A)>0 then
if i(y(ae,A))<=bb then
v=J
k=ae
p="PITBULL"
else
v=J
k=A
p=bo
end
else
v=J
k=ae
p="MADDOG"
end
elseif i(A)>0 then
v=J
k=A
p=bo
else
k=aT
p=bn
end
ay=H(k,"tgt_vel")aJ=H(ay,"tgt_acc")aY=H(aJ,"tgt_jer")B=y(k,S)r=F(B)D=y(ay,aa)b_=al(aJ,r)aX=al(aY,r)V=aK(x(B,D),q(B,B))ah=g(x(D,V),t)ah=g(x(r,V),-t*i(D))bc=F(aa)ah=g(x(bc,V),-t*i(D))aM=g(b_,t/2)aU=g(aX,t/6)aq=m(ah,m(aM,aU))if i(B)<1000 and q(r,aa)>1 and not(p==bo)and not(p==bn)then
s=1
else
aq=g(r,aO)s=3
end
az=ba(aq,G,I,ad)aS=f(15)>0 or aF
if aS and v then
o(1,ar(-az.b,-K/s,K/s)+as)o(2,ar(-az.c,-K/s,K/s)+ak)else
N()end
end
end
else
N()end
end
