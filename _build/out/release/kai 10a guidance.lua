-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2774 (3079 with comment) chars
bo="LASTKNOWN"
bn="FOX1"

E=true
ar=false
ao=output
aK=input
ae=property
Z=math
T=Z.sin
af=Z.cos
z=debug.log
av=ae.getBool
K=aK.getNumber
f=K; p=ao.setNumber; bi=aK.getBool; bj=ao.setBool;
k=ae.getNumber; bm=av; bh=ae.getText; h=Z; pi=h.pi; ap=pi*2
function e(b,d,c)return{b=b or 0,d=d or 0,c=c or 0}end
function l(_,a)return e(_.b+a.b,_.d+a.d,_.c+a.c)end
function bf(_,a)return e(_.b*a.b,_.d*a.d,_.c*a.c)end
function g(_,r)return e(_.b*r,_.d*r,_.c*r)end
function aH(_)return g(_,-1)end
function u(_,a)return l(_,aH(a))end
function i(_)return h.sqrt(_.b*_.b+_.d*_.d+_.c*_.c)end
function aB(_,r)return g(_,1/r)end
function C(_)return aB(_,i(_))end
function q(_,a)return _.b*a.b+_.d*a.d+_.c*a.c
end
function s(_,a)return e(_.d*a.c-_.c*a.d,_.c*a.b-_.b*a.c,_.b*a.d-_.d*a.b)end
function aG(_,a)return u(_,g(C(a),q(_,C(a))))end
function bg(aw,P,w)local w=w or 1
return e(h.sin(aw)*h.cos(P)*w,h.cos(aw)*h.cos(P)*w,h.sin(P)*w)end
function D(_,n)if not j then
j={}j[n]={M=e(),aa=e()}elseif not j[n]then
j[n]={M=e(),aa=e()}end
j[n].aa=u(_,j[n].M)j[n].M=_
return j[n].aa
end
function aU(_,ai,R,Q)return e(q(ai,_),q(R,_),q(Q,_))end
function at(_,ai,R,Q)return l(l(g(ai,_.b),g(R,_.d)),g(Q,_.c))end
function al(b,aA,H)return b<aA and aA or b>H and H or b
end
function bl(V,aO)z("VECTOR "..aO.." COMPONENTS:")z(V.b)z(V.d)z(V.c)z("------------------")end
function aP()return((O<=2495 or O>=2505)and O>=aV and aQ)end
function X()p(1,am)p(2,aq)end
function bk()p(1,0)p(2,1)end
v=k("Navigation Constant")bc=k("Pure Pursuit Navigation Constant")F=k("Max Control")aV=k("Minimum Mass")am=k("Horizontal Offset")aq=k("Vertical Offset")aN=k("Max Distance from radio")B=ar
aL=not av("dumb launch?")U=0
function onTick()if aL then
if f(15)==1 then
if U<10 then
U=U+1
X()else
au,ay,aF=K(4),K(5),K(6)W,ad,L=af(au),af(ay),af(aF)ak,N,ac=T(au),T(ay),T(aF)G=e(ad*L,-N,ad*ac)I=e(ak*ac+W*N*L,W*ad,-ak*L+W*N*ac)ag=s(G,I)aj=e(f(1),f(3),f(2))Y=D(aj,"m_vel")b_=l(aj,aH(at(e(0,1.25,0),G,I,ag)))x=e(f(7),f(8),f(9))aI=f(12)az=f(13)bd=f(14)or 0
O=bd*aI
aY=f(10)*ap
aJ=f(11)*ap
an=h.sin(aY)*aI
be=h.sin(aJ)*az
aX=h.cos(aJ)*az
H=(aX^2-an^2)^.5
as=e(an,H,be)aQ=i(as)>0
aM=m or e()if aP()then
S=l(b_,at(as,G,I,ag))if i(x)>0 then
if i(u(S,x))<=aN then
B=E
m=S
o="PITBULL"
else
B=E
m=x
o=bn
end
else
B=E
m=S
o="MADDOG"
end
elseif i(x)>0 then
B=E
m=x
o=bn
else
m=aM
o=bo
end
aC=D(m,"tgt_vel")aE=D(aC,"tgt_acc")aW=D(aE,"tgt_jer")A=u(m,aj)t=C(A)J=u(aC,Y)aR=aG(aE,t)bb=aG(aW,t)ah=aB(s(A,J),q(A,A))ab=g(s(J,ah),v)ab=g(s(t,ah),-v*i(J))aT=C(Y)ab=g(s(aT,ah),-v*i(J))ba=g(aR,v/2)aZ=g(bb,v/6)aD=l(ab,l(ba,aZ))if i(A)<1000 and q(t,Y)>1 and not(o==bn)and not(o==bo)then
y=1
else
aD=g(t,bc)y=3
end
ax=aU(aD,G,I,ag)aS=f(15)>0 or ar
if aS and B then
p(1,al(-ax.b,-F/y,F/y)+am)p(2,al(-ax.c,-F/y,F/y)+aq)else
X()end
end
end
else
X()end
end
