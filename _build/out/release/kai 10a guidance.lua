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

F=true
az=false
an=output
aG=input
ab=property
V=math
af=V.sin
R=V.cos
s=debug.log
av=ab.getBool
G=aG.getNumber
f=G; p=an.setNumber; bl=aG.getBool; bh=an.setBool;
l=ab.getNumber; bf=av; bg=ab.getText; h=V; pi=h.pi; aI=pi*2
function d(b,e,c)return{b=b or 0,e=e or 0,c=c or 0}end
function k(_,a)return d(_.b+a.b,_.e+a.e,_.c+a.c)end
function bi(_,a)return d(_.b*a.b,_.e*a.e,_.c*a.c)end
function g(_,r)return d(_.b*r,_.e*r,_.c*r)end
function al(_)return g(_,-1)end
function A(_,a)return k(_,al(a))end
function j(_)return h.sqrt(_.b*_.b+_.e*_.e+_.c*_.c)end
function aC(_,r)return g(_,1/r)end
function C(_)return aC(_,j(_))end
function q(_,a)return _.b*a.b+_.e*a.e+_.c*a.c
end
function y(_,a)return d(_.e*a.c-_.c*a.e,_.c*a.b-_.b*a.c,_.b*a.e-_.e*a.b)end
function ax(_,a)return A(_,g(C(a),q(_,C(a))))end
function bj(ao,L,x)local x=x or 1
return d(h.sin(ao)*h.cos(L)*x,h.cos(ao)*h.cos(L)*x,h.sin(L)*x)end
function E(_,m)if not i then
i={}i[m]={N=d(),Q=d()}elseif not i[m]then
i[m]={N=d(),Q=d()}end
i[m].Q=A(_,i[m].N)i[m].N=_
return i[m].Q
end
function aL(_,ag,aj,Z)return d(q(ag,_),q(aj,_),q(Z,_))end
function ay(_,ag,aj,Z)return k(k(g(ag,_.b),g(aj,_.e)),g(Z,_.c))end
function aH(b,at,K)return b<at and at or b>K and K or b
end
function bm(ah,aS)s("VECTOR "..aS.." COMPONENTS:")s(ah.b)s(ah.e)s(ah.c)s("------------------")end
function aR()return((X<=2495 or X>=2505)and X>=aP and ba)end
function P()p(1,as)p(2,ar)end
function bk()p(1,0)p(2,1)end
w=l("Navigation Constant")aU=l("Pure Pursuit Navigation Constant")J=l("Max Control")aP=l("Minimum Mass")as=l("Horizontal Offset")ar=l("Vertical Offset")be=l("Max Distance from radio")u=az
aO=not av("dumb launch?")ai=0
function onTick()if aO then
if f(15)==1 then
if ai<10 then
ai=ai+1
P()else
ap,aw,aJ=G(4),G(5),G(6)ae,ad,W=R(ap),R(aw),R(aJ)aB,ac,O=af(ap),af(aw),af(aJ)D=d(ad*W,-ac,ad*O)I=d(aB*O+ae*ac*W,ae*ad,-aB*W+ae*ac*O)M=y(D,I)U=d(f(1),f(3),f(2))aa=E(U,"m_vel")aV=k(U,al(ay(d(0,1.25,0),D,I,M)))t=d(f(7),f(8),f(9))aA=f(12)aF=f(13)aY=f(14)or 0
X=aY*aA
bc=f(10)*aI
au=f(11)*aI
aE=h.sin(bc)*aA
b_=h.sin(au)*aF
bb=h.cos(au)*aF
K=(bb^2-aE^2)^.5
aD=d(aE,K,b_)ba=j(aD)>0
aW=n or d()if aR()then
S=k(aV,ay(aD,D,I,M))if j(t)>0 then
if j(A(S,t))<=be then
u=F
n=S
o="PITBULL"
else
u=F
n=t
o=bo
end
else
u=F
n=S
o="MADDOG"
end
elseif j(t)>0 then
u=F
n=t
o=bo
else
n=aW
o=bn
end
am=E(n,"tgt_vel")ak=E(am,"tgt_acc")aX=E(ak,"tgt_jer")z=A(n,U)v=C(z)H=A(am,aa)aT=ax(ak,v)aQ=ax(aX,v)T=aC(y(z,H),q(z,z))Y=g(y(H,T),w)Y=g(y(v,T),-w*j(H))bd=C(aa)Y=g(y(bd,T),-w*j(H))aZ=g(aT,w/2)aN=g(aQ,w/6)aq=k(Y,k(aZ,aN))if j(z)<1000 and q(v,aa)>1 and not(o==bo)and not(o==bn)then
B=1
else
aq=g(v,aU)B=3
end
aK=aL(aq,D,I,M)aM=f(15)>0 or az
if aM and u then
p(1,aH(-aK.b,-J/B,J/B)+as)p(2,aH(-aK.c,-J/B,J/B)+ar)else
P()end
end
end
else
P()end
end
