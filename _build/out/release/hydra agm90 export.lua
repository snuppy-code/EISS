--made by judgementalbird on discord
ae=property
ad=output
S=math
R=S.sin
T=S.cos
s=ad.setNumber
b,ag,aq,ar=S,input,ad,ae
d,N,aT,aX=ag.getNumber,aq.setNumber,ag.getBool,aq.setBool
o,aZ=ar.getNumber,ar.getBool
abs,cos,sin,acos,asin,tan,atan=b.abs,b.cos,b.sin,b.acos,b.asin,b.tan,b.atan
pi=b.pi
at=pi*2
function g(c,f,e)return{c=c or 0,f=f or 0,e=e or 0}end
function h(_,m)return g(_.c*m,_.f*m,_.e*m)end
function az(_)return h(_,-1)end
function y(_,m)return h(_,1/m)end
function j(_,a)return g(_.c+a.c,_.f+a.f,_.e+a.e)end
function k(_,a)return j(_,az(a))end
function t(_)return b.sqrt(_.c*_.c+_.f*_.f+_.e*_.e)end
function l(_)return h(_,1/t(_))end
function aL(_,a)return g(_.f*a.e-_.e*a.f,_.e*a.c-_.c*a.e,_.c*a.f-_.f*a.c)end
function n(_,a)return _.c*a.c+_.f*a.f+_.e*a.e
end
function aV(_,a)return h(l(a),n(_,l(a)))end
function q(_,a)return k(_,h(l(a),n(_,l(a))))end
function aU(_,a,aN)return k(_,h(q(_,a),aN or 2))end
function aY(ap,C,i)local i=i or 1
return g(b.sin(ap)*b.cos(C)*i,b.cos(ap)*b.cos(C)*i,b.sin(C)*i)end
function aM(_,F,O,P)return g(n(F,_),n(O,_),n(P,_))end
function ay(_,F,O,P)return j(j(h(F,_.c),h(O,_.f)),h(P,_.e))end
function J(c,f,e)return b.max(f,b.min(c,e))end
function W()s(1,ai)s(2,af)end
function aJ()s(1,0)s(2,.1)end
function aD(an,a)if not _ then _={}_[a]={E=0,Q=0}elseif not _[a]then _[a]={E=0,Q=0}end;_[a].Q=an-_[a].E;_[a].E=an;return _[a].Q end
function p(i,a)if not _ then _={}_[a]={I=g(),v=g()}elseif not _[a]then _[a]={I=g(),v=g()}end;_[a].v=k(i,_[a].I)_[a].I=i;return _[a].v end
ai=o("trim yaw")af=o("trim pitch")z=o("Nav Constant")r=o("Max Control")aO=not ae.getBool("dumb launch?")A=0
aC=o("Used freq")function onTick()N(3,aC)aE=g(d(11),d(12),d(13))aW=g(d(14),d(15),d(16))if aO then
if d(17)==1 then
if A<10 then
A=A+1
W()else
B=g(d(1),d(3),d(2))Y,V,X=d(4),d(5),d(6)D,H,G=T(Y),T(V),T(X)aa,K,L=R(Y),R(V),R(X)w=g(H*G,-K,H*L)u=g(aa*L+D*K*G,D*H,-aa*G+D*K*L)ah=aL(w,u)aB=d(7)*at
am=d(8)*at
aw=d(9)al=d(10)ao=b.sin(aB)*aw
ax=b.sin(am)*al
aF=b.cos(am)*al
aI=(aF^2-ao^2)^.5
ab=g(ao,aI,ax)aR=t(ab)>0
if aR then
ac=j(B,ay(ab,w,u,ah))if t(k(aE,ac))<=35 then
aJ()else
U=ac
M=k(U,B)x=l(M)av=t(M)aK=p(B,"myvel")as=p(U,"tgtvel")Z=p(as,"tgtacc")aS=p(Z,"tgtjer")aQ=k(as,aK)aP=-aD(av,"cv")au=J(av/aP,-70,70)aA=q(Z,x)aH=q(aS,x)aj=j(M,h(aQ,au))b_=q(aj,x)aG=j(j(y(h(aj,z),au^2),y(h(aA,z),2)),y(h(aH,z),6))ak=aM(aG,w,u,ah)N(1,J(-ak.c,-r,r)+ai)N(2,J(-ak.e,-r,r)+af)end
end
end
end
else
W()end
end
