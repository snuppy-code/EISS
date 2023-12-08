-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2440 (2774 with comment) chars

J=true
az=false
ad=property
ag=output
ah=input
af=math
I=af.sin
V=af.cos
x=debug.log
D=ah.getNumber
f=D; z=ag.setNumber; b_=ah.getBool; bc=ag.setBool;
n=ad.getNumber; bf=ad.getBool; ba=ad.getText; h=af; pi=h.pi; at=pi*2
function e(b,d,c)return{b=b or 0,d=d or 0,c=c or 0}end
function l(_,a)return e(_.b+a.b,_.d+a.d,_.c+a.c)end
function bb(_,a)return e(_.b*a.b,_.d*a.d,_.c*a.c)end
function g(_,t)return e(_.b*t,_.d*t,_.c*t)end
function au(_)return g(_,-1)end
function p(_,a)return l(_,au(a))end
function m(_)return h.sqrt(_.b*_.b+_.d*_.d+_.c*_.c)end
function aw(_,t)return g(_,1/t)end
function A(_)return aw(_,m(_))end
function o(_,a)return _.b*a.b+_.d*a.d+_.c*a.c
end
function u(_,a)return e(_.d*a.c-_.c*a.d,_.c*a.b-_.b*a.c,_.b*a.d-_.d*a.b)end
function am(_,a)return p(_,g(A(a),o(_,A(a))))end
function be(ak,aa,s)local s=s or 1
return e(h.sin(ak)*h.cos(aa)*s,h.cos(ak)*h.cos(aa)*s,h.sin(aa)*s)end
function y(_,j)if not i then
i={}i[j]={Z=e(),ae=e()}elseif not i[j]then
i[j]={Z=e(),ae=e()}end
i[j].ae=p(_,i[j].Z)i[j].Z=_
return i[j].ae
end
function aH(_,ab,Y,O)return e(o(ab,_),o(Y,_),o(O,_))end
function aE(_,ab,Y,O)return l(l(g(ab,_.b),g(Y,_.d)),g(O,_.c))end
function ar(b,aj,B)return b<aj and aj or b>B and B or b
end
function bd(Q,aY)x("VECTOR "..aY.." COMPONENTS:")x(Q.b)x(Q.d)x(Q.c)x("------------------")end
function aN()return((W<=2495 or W>=2505)and W>=aI and aK)end
w=n("Navigation Constant")G=n("Max Control")aI=n("Minimum Mass")aC=n("Horizontal Offset")av=n("Vertical Offset")aR=n("Max Distance from radio")C=az
function onTick()aF,al,aD=D(4),D(5),D(6)N,R,S=V(aF),V(al),V(aD)an,U,K=I(aF),I(al),I(aD)H=e(R*S,-U,R*K)E=e(an*K+N*U*S,N*R,-an*S+N*U*K)M=u(H,E)L=e(f(1),f(3),f(2))ac=y(L,"m_vel")aV=l(L,au(aE(e(0,1.25,0),H,E,M)))T=e(f(7),f(8),f(9))ap=f(12)aq=f(13)aZ=f(14)or 0
W=aZ*ap
aS=f(10)*at
aB=f(11)*at
aG=h.sin(aS)*ap
aJ=h.sin(aB)*aq
aQ=h.cos(aB)*aq
B=(aQ^2-aG^2)^.5
ax=e(aG,B,aJ)aK=m(ax)>0
aT=k or e()if aN()then
ao=l(aV,aE(ax,H,E,M))if m(T)>0 then
if m(p(k,T))<=aR then
C=J
k=ao
else
C=J
k=T
end
else
C=J
k=ao
end
else
k=aT
end
as=y(k,"tgt_vel")ai=y(as,"tgt_acc")aW=y(ai,"tgt_jer")q=p(k,L)r=A(q)F=p(as,ac)aO=am(ai,r)aX=am(aW,r)X=aw(u(q,F),o(q,q))P=g(u(F,X),w)P=g(u(r,X),-w*m(F))aU=A(ac)P=g(u(aU,X),-w*m(F))aL=g(aO,w/2)aP=g(aX,w/6)aA=l(P,l(aL,aP))if m(q)<1000 and o(r,ac)>1 then
v=1
else
aA=r
v=4
end
ay=aH(aA,H,E,M)aM=f(15)>0 or az
if aM and C then
z(1,ar(-ay.b,-G/v,G/v)+aC)z(2,ar(-ay.c,-G/v,G/v)+av)else
z(1,aC)z(2,av)end
end
