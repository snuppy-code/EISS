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

C=true
ay=false
az=output
aE=input
ab=property
T=math
O=T.sin
W=T.cos
B=debug.log
av=ab.getBool
D=aE.getNumber
f=D; o=az.setNumber; bl=aE.getBool; bh=az.setBool;
l=ab.getNumber; bg=av; bj=ab.getText; h=T; pi=h.pi; aH=pi*2
function d(b,e,c)return{b=b or 0,e=e or 0,c=c or 0}end
function k(_,a)return d(_.b+a.b,_.e+a.e,_.c+a.c)end
function bf(_,a)return d(_.b*a.b,_.e*a.e,_.c*a.c)end
function g(_,v)return d(_.b*v,_.e*v,_.c*v)end
function am(_)return g(_,-1)end
function y(_,a)return k(_,am(a))end
function j(_)return h.sqrt(_.b*_.b+_.e*_.e+_.c*_.c)end
function aC(_,v)return g(_,1/v)end
function I(_)return aC(_,j(_))end
function p(_,a)return _.b*a.b+_.e*a.e+_.c*a.c
end
function t(_,a)return d(_.e*a.c-_.c*a.e,_.c*a.b-_.b*a.c,_.b*a.e-_.e*a.b)end
function aB(_,a)return y(_,g(I(a),p(_,I(a))))end
function bi(ao,ah,z)local z=z or 1
return d(h.sin(ao)*h.cos(ah)*z,h.cos(ao)*h.cos(ah)*z,h.sin(ah)*z)end
function J(_,m)if not i then
i={}i[m]={L=d(),aj=d()}elseif not i[m]then
i[m]={L=d(),aj=d()}end
i[m].aj=y(_,i[m].L)i[m].L=_
return i[m].aj
end
function aM(_,af,ae,Q)return d(p(af,_),p(ae,_),p(Q,_))end
function ak(_,af,ae,Q)return k(k(g(af,_.b),g(ae,_.e)),g(Q,_.c))end
function aD(b,al,G)return b<al and al or b>G and G or b
end
function bm(ad,aW)B("VECTOR "..aW.." COMPONENTS:")B(ad.b)B(ad.e)B(ad.c)B("------------------")end
function aY()return((ag<=2495 or ag>=2505)and ag>=aV and aR)end
function V()o(1,aG)o(2,as)end
function bk()o(1,0)o(2,1)end
A=l("Navigation Constant")aU=l("Pure Pursuit Navigation Constant")F=l("Max Control")aV=l("Minimum Mass")aG=l("Horizontal Offset")as=l("Vertical Offset")bc=l("Max Distance from radio")x=ay
bb=not av("dumb launch?")X=0
function onTick()if bb then
if f(15)==1 then
if X<10 then
X=X+1
V()else
ap,aK,ax=D(4),D(5),D(6)S,ai,ac=W(ap),W(aK),W(ax)aF,M,P=O(ap),O(aK),O(ax)K=d(ai*ac,-M,ai*P)H=d(aF*P+S*M*ac,S*ai,-aF*ac+S*M*P)Z=t(K,H)aa=d(f(1),f(3),f(2))U=J(aa,"m_vel")ba=k(aa,am(ak(d(0,1.25,0),K,H,Z)))w=d(f(7),f(8),f(9))an=f(12)aJ=f(13)be=f(14)or 0
ag=be*an
aP=f(10)*aH
au=f(11)*aH
aq=h.sin(aP)*an
b_=h.sin(au)*aJ
aO=h.cos(au)*aJ
G=(aO^2-aq^2)^.5
ar=d(aq,G,b_)aR=j(ar)>0
aX=n or d()if aY()then
R=k(ba,ak(ar,K,H,Z))if j(w)>0 then
if j(y(R,w))<=bc then
x=C
n=R
q="PITBULL"
else
x=C
n=w
q=bo
end
else
x=C
n=R
q="MADDOG"
end
elseif j(w)>0 then
x=C
n=w
q=bo
else
n=aX
q=bn
end
at=J(n,"tgt_vel")aI=J(at,"tgt_acc")aL=J(aI,"tgt_jer")u=y(n,aa)r=I(u)E=y(at,U)aN=aB(aI,r)bd=aB(aL,r)Y=aC(t(u,E),p(u,u))N=g(t(E,Y),A)N=g(t(r,Y),-A*j(E))aZ=I(U)N=g(t(aZ,Y),-A*j(E))aQ=g(aN,A/2)aS=g(bd,A/6)aw=k(N,k(aQ,aS))if j(u)<1000 and p(r,U)>1 and not(q==bo)and not(q==bn)then
s=1
else
aw=g(r,aU)s=3
end
aA=aM(aw,K,H,Z)aT=f(15)>0 or ay
if aT and x then
o(1,aD(-aA.b,-F/s,F/s)+aG)o(2,aD(-aA.c,-F/s,F/s)+as)else
V()end
end
end
else
V()end
end
