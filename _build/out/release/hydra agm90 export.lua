-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2346 (2651 with comment) chars

al=property
ae=output
F=math
B=F.sin
O=F.cos
r=ae.setNumber
b,av,ac,ag=F,input,ae,al
f,J,aT,aV=av.getNumber,ac.setNumber,av.getBool,ac.setBool
o,aY=ag.getNumber,ag.getBool
abs,cos,sin,acos,asin,tan,atan=b.abs,b.cos,b.sin,b.acos,b.asin,b.tan,b.atan
pi=b.pi
Y=pi*2
function g(d,e,c)return{d=d or 0,e=e or 0,c=c or 0}end
function h(_,n)return g(_.d*n,_.e*n,_.c*n)end
function aF(_)return h(_,-1)end
function G(_,n)return h(_,1/n)end
function j(_,a)return g(_.d+a.d,_.e+a.e,_.c+a.c)end
function k(_,a)return j(_,aF(a))end
function s(_)return b.sqrt(_.d*_.d+_.e*_.e+_.c*_.c)end
function m(_)return h(_,1/s(_))end
function aE(_,a)return g(_.e*a.c-_.c*a.e,_.c*a.d-_.d*a.c,_.d*a.e-_.e*a.d)end
function l(_,a)return _.d*a.d+_.e*a.e+_.c*a.c
end
function aW(_,a)return h(m(a),l(_,m(a)))end
function p(_,a)return k(_,h(m(a),l(_,m(a))))end
function aU(_,a,az)return k(_,h(p(_,a),az or 2))end
function aX(W,L,i)local i=i or 1
return g(b.sin(W)*b.cos(L)*i,b.cos(W)*b.cos(L)*i,b.sin(L)*i)end
function aA(_,D,M,w)return g(l(D,_),l(M,_),l(w,_))end
function aw(_,D,M,w)return j(j(h(D,_.d),h(M,_.e)),h(w,_.c))end
function E(d,e,c)return b.max(e,b.min(d,c))end
function an()r(1,ao)r(2,ak)end
function ax()r(1,0)r(2,.1)end
function ay(aq,a)if not _ then _={}_[a]={R=0,I=0}elseif not _[a]then _[a]={R=0,I=0}end;_[a].I=aq-_[a].R;_[a].R=aq;return _[a].I end
function t(i,a)if not _ then _={}_[a]={u=g(),Q=g()}elseif not _[a]then _[a]={u=g(),Q=g()}end;_[a].Q=k(i,_[a].u)_[a].u=i;return _[a].Q end
ao=o("trim yaw")ak=o("trim pitch")P=o("Nav Constant")q=o("Max Control")aK=not al.getBool("dumb launch?")S=0
aL=o("Used freq")function onTick()J(3,aL)aB=g(f(4),f(5),f(6))if aK then
if f(17)==1 then
if S<10 then
S=S+1
an()else
z=g(f(1),f(3),f(2))ai,as,aj=f(4),f(5),f(6)y,N,K=O(ai),O(as),O(aj)V,C,v=B(ai),B(as),B(aj)A=g(N*K,-C,N*v)x=g(V*v+y*C*K,y*N,-V*K+y*C*v)am=aE(A,x)aD=f(7)*Y
au=f(8)*Y
aC=f(9)ah=f(10)af=b.sin(aD)*aC
aJ=b.sin(au)*ah
aI=b.cos(au)*ah
aP=(aI^2-af^2)^.5
ab=g(af,aP,aJ)aG=s(ab)>0
if aG then
ar=j(z,aw(ab,A,x,am))if s(k(aB,ar))<=35 then
ax()else
X=ar
T=k(X,z)H=m(T)ap=s(T)aO=t(z,"myvel")at=t(X,"tgtvel")aa=t(at,"tgtacc")aR=t(aa,"tgtjer")aM=k(at,aO)aN=-ay(ap,"cv")U=E(ap/aN,-70,70)aQ=p(aa,H)aS=p(aR,H)ad=j(T,h(aM,U))aZ=p(ad,H)aH=j(j(G(h(ad,P),U^2),G(h(aQ,P),2)),G(h(aS,P),6))Z=aA(aH,A,x,am)J(1,E(-Z.d,-q,q)+ao)J(2,E(-Z.c,-q,q)+ak)end
end
end
end
else
an()end
end
