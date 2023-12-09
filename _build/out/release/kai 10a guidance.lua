-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2440 (2774 with comment) chars

J=true
aj=false
N=property
aD=output
ah=input
P=math
K=P.sin
U=P.cos
p=debug.log
G=ah.getNumber
f=G; A=aD.setNumber; bb=ah.getBool; b_=aD.setBool;
o=N.getNumber; bf=N.getBool; bc=N.getText; h=P; pi=h.pi; az=pi*2
function e(b,d,c)return{b=b or 0,d=d or 0,c=c or 0}end
function k(_,a)return e(_.b+a.b,_.d+a.d,_.c+a.c)end
function bd(_,a)return e(_.b*a.b,_.d*a.d,_.c*a.c)end
function g(_,q)return e(_.b*q,_.d*q,_.c*q)end
function ay(_)return g(_,-1)end
function x(_,a)return k(_,ay(a))end
function j(_)return h.sqrt(_.b*_.b+_.d*_.d+_.c*_.c)end
function aA(_,q)return g(_,1/q)end
function z(_)return aA(_,j(_))end
function n(_,a)return _.b*a.b+_.d*a.d+_.c*a.c
end
function v(_,a)return e(_.d*a.c-_.c*a.d,_.c*a.b-_.b*a.c,_.b*a.d-_.d*a.b)end
function ak(_,a)return x(_,g(z(a),n(_,z(a))))end
function be(an,S,t)local t=t or 1
return e(h.sin(an)*h.cos(S)*t,h.cos(an)*h.cos(S)*t,h.sin(S)*t)end
function y(_,l)if not i then
i={}i[l]={ac=e(),ae=e()}elseif not i[l]then
i[l]={ac=e(),ae=e()}end
i[l].ae=x(_,i[l].ac)i[l].ac=_
return i[l].ae
end
function aK(_,af,I,ad)return e(n(af,_),n(I,_),n(ad,_))end
function ap(_,af,I,ad)return k(k(g(af,_.b),g(I,_.d)),g(ad,_.c))end
function ag(b,as,B)return b<as and as or b>B and B or b
end
function ba(Y,aL)p("VECTOR "..aL.." COMPONENTS:")p(Y.b)p(Y.d)p(Y.c)p("------------------")end
function aR()return((X<=2495 or X>=2505)and X>=aZ and aN)end
s=o("Navigation Constant")E=o("Max Control")aZ=o("Minimum Mass")am=o("Horizontal Offset")au=o("Vertical Offset")aJ=o("Max Distance from radio")F=aj
function onTick()aw,aF,aB=G(4),G(5),G(6)W,O,Z=U(aw),U(aF),U(aB)al,Q,M=K(aw),K(aF),K(aB)H=e(O*Z,-Q,O*M)D=e(al*M+W*Q*Z,W*O,-al*Z+W*Q*M)T=v(H,D)R=e(f(1),f(3),f(2))aa=y(R,"m_vel")aQ=k(R,ay(ap(e(0,1.25,0),H,D,T)))L=e(f(7),f(8),f(9))at=f(12)aq=f(13)aY=f(14)or 0
X=aY*at
aW=f(10)*az
av=f(11)*az
ai=h.sin(aW)*at
aS=h.sin(av)*aq
aX=h.cos(av)*aq
B=(aX^2-ai^2)^.5
ax=e(ai,B,aS)aN=j(ax)>0
aU=m or e()if aR()then
ao=k(aQ,ap(ax,H,D,T))if j(L)>0 then
if j(x(m,L))<=aJ then
F=J
m=ao
else
F=J
m=L
end
else
F=J
m=ao
end
else
m=aU
end
aG=y(m,"tgt_vel")aE=y(aG,"tgt_acc")aM=y(aE,"tgt_jer")u=x(m,R)r=z(u)C=x(aG,aa)aP=ak(aE,r)aI=ak(aM,r)ab=aA(v(u,C),n(u,u))V=g(v(C,ab),s)V=g(v(r,ab),-s*j(C))aV=z(aa)V=g(v(aV,ab),-s*j(C))aO=g(aP,s/2)aH=g(aI,s/6)aC=k(V,k(aO,aH))if j(u)<1000 and n(r,aa)>1 then
w=1
else
aC=r
w=4
end
ar=aK(aC,H,D,T)aT=f(15)>0 or aj
if aT and F then
A(1,ag(-ar.b,-E/w,E/w)+am)A(2,ag(-ar.c,-E/w,E/w)+au)else
A(1,am)A(2,au)end
end
