-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2525 (2830 with comment) chars
bg="FOX1"

C=true
ao=false
af=property
ax=output
ah=input
ad=math
aa=ad.sin
ae=ad.cos
i=debug.log
E=ah.getNumber
f=E; F=ax.setNumber; be=ah.getBool; bf=ax.setBool;
o=af.getNumber; ba=af.getBool; bd=af.getText; h=ad; pi=h.pi; aw=pi*2
function d(b,e,c)return{b=b or 0,e=e or 0,c=c or 0}end
function m(_,a)return d(_.b+a.b,_.e+a.e,_.c+a.c)end
function bb(_,a)return d(_.b*a.b,_.e*a.e,_.c*a.c)end
function g(_,x)return d(_.b*x,_.e*x,_.c*x)end
function au(_)return g(_,-1)end
function y(_,a)return m(_,au(a))end
function j(_)return h.sqrt(_.b*_.b+_.e*_.e+_.c*_.c)end
function ag(_,x)return g(_,1/x)end
function H(_)return ag(_,j(_))end
function p(_,a)return _.b*a.b+_.e*a.e+_.c*a.c
end
function u(_,a)return d(_.e*a.c-_.c*a.e,_.c*a.b-_.b*a.c,_.b*a.e-_.e*a.b)end
function ar(_,a)return y(_,g(H(a),p(_,H(a))))end
function bc(aF,X,s)local s=s or 1
return d(h.sin(aF)*h.cos(X)*s,h.cos(aF)*h.cos(X)*s,h.sin(X)*s)end
function G(_,n)if not l then
l={}l[n]={L=d(),K=d()}elseif not l[n]then
l[n]={L=d(),K=d()}end
l[n].K=y(_,l[n].L)l[n].L=_
return l[n].K
end
function aP(_,ab,ac,U)return d(p(ab,_),p(ac,_),p(U,_))end
function aG(_,ab,ac,U)return m(m(g(ab,_.b),g(ac,_.e)),g(U,_.c))end
function am(b,aC,A)return b<aC and aC or b>A and A or b
end
function b_(P,aU)i("VECTOR "..aU.." COMPONENTS:")i(P.b)i(P.e)i(P.c)i("------------------")end
function aY()return((V<=2495 or V>=2505)and V>=aT and aN)end
w=o("Navigation Constant")J=o("Max Control")aT=o("Minimum Mass")aq=o("Horizontal Offset")aA=o("Vertical Offset")aZ=o("Max Distance from radio")r=ao
function onTick()aE,as,av=E(4),E(5),E(6)S,Y,Q=ae(aE),ae(as),ae(av)ay,T,R=aa(aE),aa(as),aa(av)D=d(Y*Q,-T,Y*R)I=d(ay*R+S*T*Q,S*Y,-ay*Q+S*T*R)N=u(D,I)Z=d(f(1),f(3),f(2))M=G(Z,"m_vel")aX=m(Z,au(aG(d(0,1.25,0),D,I,N)))t=d(f(7),f(8),f(9))ai=f(12)aB=f(13)aM=f(14)or 0
V=aM*ai
aK=f(10)*aw
az=f(11)*aw
ap=h.sin(aK)*ai
aS=h.sin(az)*aB
aO=h.cos(az)*aB
A=(aO^2-ap^2)^.5
aD=d(ap,A,aS)aN=j(aD)>0
aQ=k or d()if aY()then
an=m(aX,aG(aD,D,I,N))if j(t)>0 then
if j(y(k,t))<=aZ then
i("PITBULL")r=C
k=an
else
i(bg)r=C
k=t
end
else
i("MADDOG")r=C
k=an
end
elseif j(t)>0 then
i(bg)r=C
k=t
else
i("LAST KNOWN")k=aQ
end
aj=G(k,"tgt_vel")at=G(aj,"tgt_acc")aV=G(at,"tgt_jer")z=y(k,Z)v=H(z)B=y(aj,M)aW=ar(at,v)aR=ar(aV,v)W=ag(u(z,B),p(z,z))O=g(u(B,W),w)O=g(u(v,W),-w*j(B))aL=H(M)O=g(u(aL,W),-w*j(B))aH=g(aW,w/2)aI=g(aR,w/6)ak=m(O,m(aH,aI))if j(z)<1000 and p(v,M)>1 then
q=1
else
ak=v
q=4
end
al=aP(ak,D,I,N)aJ=f(15)>0 or ao
if aJ and r then
F(1,am(-al.b,-J/q,J/q)+aq)F(2,am(-al.c,-J/q,J/q)+aA)else
F(1,aq)F(2,aA)end
end
