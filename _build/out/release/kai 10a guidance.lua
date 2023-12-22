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

G=true
au=false
aE=output
an=input
ab=property
P=math
aa=P.sin
af=P.cos
B=debug.log
ax=ab.getBool
C=an.getNumber
f=C; q=aE.setNumber; bj=an.getBool; bk=aE.setBool;
l=ab.getNumber; bm=ax; bh=ab.getText; h=P; pi=h.pi; aH=pi*2
function e(b,d,c)return{b=b or 0,d=d or 0,c=c or 0}end
function k(_,a)return e(_.b+a.b,_.d+a.d,_.c+a.c)end
function bl(_,a)return e(_.b*a.b,_.d*a.d,_.c*a.c)end
function g(_,A)return e(_.b*A,_.d*A,_.c*A)end
function aK(_)return g(_,-1)end
function r(_,a)return k(_,aK(a))end
function j(_)return h.sqrt(_.b*_.b+_.d*_.d+_.c*_.c)end
function am(_,A)return g(_,1/A)end
function D(_)return am(_,j(_))end
function p(_,a)return _.b*a.b+_.d*a.d+_.c*a.c
end
function x(_,a)return e(_.d*a.c-_.c*a.d,_.c*a.b-_.b*a.c,_.b*a.d-_.d*a.b)end
function az(_,a)return r(_,g(D(a),p(_,D(a))))end
function bi(ap,V,y)local y=y or 1
return e(h.sin(ap)*h.cos(V)*y,h.cos(ap)*h.cos(V)*y,h.sin(V)*y)end
function J(_,m)if not i then
i={}i[m]={X=e(),T=e()}elseif not i[m]then
i[m]={X=e(),T=e()}end
i[m].T=r(_,i[m].X)i[m].X=_
return i[m].T
end
function aT(_,ag,ae,U)return e(p(ag,_),p(ae,_),p(U,_))end
function aJ(_,ag,ae,U)return k(k(g(ag,_.b),g(ae,_.d)),g(U,_.c))end
function ar(b,aG,E)return b<aG and aG or b>E and E or b
end
function bg(N,aV)B("VECTOR "..aV.." COMPONENTS:")B(N.b)B(N.d)B(N.c)B("------------------")end
function aR()return((ah<=2495 or ah>=2505)and ah>=aN and aP)end
function ad()q(1,aA)q(2,aq)end
function bf()q(1,0)q(2,1)end
s=l("Navigation Constant")aL=l("Pure Pursuit Navigation Constant")H=l("Max Control")aN=l("Minimum Mass")aA=l("Horizontal Offset")aq=l("Vertical Offset")aZ=l("Max Distance from radio")t=au
aW=not ax("dumb launch?")Q=0
function onTick()if aW then
if f(15)==1 then
if Q<10 then
Q=Q+1
ad()else
al,aD,at=C(4),C(5),C(6)W,ac,Y=af(al),af(aD),af(at)ao,ai,O=aa(al),aa(aD),aa(at)F=e(ac*Y,-ai,ac*O)K=e(ao*O+W*ai*Y,W*ac,-ao*Y+W*ai*O)R=x(F,K)aj=e(f(1),f(3),f(2))S=J(aj,"m_vel")aQ=k(aj,aK(aJ(e(0,1.25,0),F,K,R)))w=e(f(7),f(8),f(9))ay=f(12)av=f(13)bd=f(14)or 0
ah=bd*ay
bc=f(10)*aH
ak=f(11)*aH
as=h.sin(bc)*ay
ba=h.sin(ak)*av
be=h.cos(ak)*av
E=(be^2-as^2)^.5
aw=e(as,E,ba)aP=j(aw)>0
aS=n or e()if aR()then
L=k(aQ,aJ(aw,F,K,R))if j(w)>0 then
if j(r(L,w))<=aZ then
t=G
n=L
o="PITBULL"
else
t=G
n=w
o=bo
end
else
t=G
n=L
o="MADDOG"
end
elseif j(w)>0 then
t=G
n=w
o=bo
else
n=aS
o=bn
end
aF=J(n,"tgt_vel")aI=J(aF,"tgt_acc")aY=J(aI,"tgt_jer")v=r(n,aj)z=D(v)I=r(aF,S)aO=az(aI,z)aM=az(aY,z)Z=am(x(v,I),p(v,v))M=g(x(I,Z),s)M=g(x(z,Z),-s*j(I))b_=D(S)M=g(x(b_,Z),-s*j(I))aU=g(aO,s/2)bb=g(aM,s/6)aC=k(M,k(aU,bb))if j(v)<1000 and p(z,S)>1 and not(o==bo)and not(o==bn)then
u=1
else
aC=g(z,aL)u=3
end
aB=aT(aC,F,K,R)aX=f(15)>0 or au
if aX and t then
q(1,ar(-aB.b,-H/u,H/u)+aA)q(2,ar(-aB.c,-H/u,H/u)+aq)else
ad()end
end
end
else
ad()end
end
