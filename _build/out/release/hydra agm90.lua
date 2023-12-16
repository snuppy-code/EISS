-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2777 (3082 with comment) chars

o=nil
an=property
aF=output
S=math
A=S.sin
Y=S.cos
u=aF.setNumber
b,r,aD,au=S,input,aF,an
e,D,bi,bf=r.getNumber,aD.setNumber,r.getBool,aD.setBool
i,bh=au.getNumber,au.getBool
abs,cos,sin,acos,asin,tan,atan=b.abs,b.cos,b.sin,b.acos,b.asin,b.tan,b.atan
pi=b.pi
ad=pi*2
function g(c,f,d)return{c=c or 0,f=f or 0,d=d or 0}end
function h(_,n)return g(_.c*n,_.f*n,_.d*n)end
function aJ(_)return h(_,-1)end
function L(_,n)return h(_,1/n)end
function k(_,a)return g(_.c+a.c,_.f+a.f,_.d+a.d)end
function l(_,a)return k(_,aJ(a))end
function s(_)return b.sqrt(_.c*_.c+_.f*_.f+_.d*_.d)end
function m(_)return h(_,1/s(_))end
function aZ(_,a)return g(_.f*a.d-_.d*a.f,_.d*a.c-_.c*a.d,_.c*a.f-_.f*a.c)end
function p(_,a)return _.c*a.c+_.f*a.f+_.d*a.d
end
function bm(_,a)return h(m(a),p(_,m(a)))end
function w(_,a)return l(_,h(m(a),p(_,m(a))))end
function bg(_,a,aR)return l(_,h(w(_,a),aR or 2))end
function bk(ah,I,j)local j=j or 1
return g(b.sin(ah)*b.cos(I)*j,b.cos(ah)*b.cos(I)*j,b.sin(I)*j)end
function aQ(_,W,G,F)return g(p(W,_),p(G,_),p(F,_))end
function aL(_,W,G,F)return k(k(h(W,_.c),h(G,_.f)),h(F,_.d))end
function U(c,f,d)return b.max(f,b.min(c,d))end
function at()u(1,az)u(2,ab)end
function aT()u(1,0)u(2,.1)end
function aU(aq,a)if not _ then _={}_[a]={H=0,C=0}elseif not _[a]then _[a]={H=0,C=0}end;_[a].C=aq-_[a].H;_[a].H=aq;return _[a].C end
function v(j,a)if not _ then _={}_[a]={y=g(),T=g()}elseif not _[a]then _[a]={y=g(),T=g()}end;_[a].T=l(j,_[a].y)_[a].y=j;return _[a].T end
az=i("trim yaw")ab=i("trim pitch")P=i("Nav Constant")q=i("Max Control")aH=not an.getBool("dumb launch?")K=0
aB=i("Max friendlies")aM=i("Host user number")x=i("Frequency seed")O=i("Encryption seed")as,ae=1871759,6393518
t={}b.randomseed(x)be=b.random(as,ae)b.randomseed(x)for r=1,aB do
B=b.random(-605791,605791)for bl,aW in ipairs(t)do
while aW==B do
B=b.random(-605791,605791)end
end
t[r]=B
end
aX=t[aM]+be
t,aB,x,as,ae=o,o,o,o,o
function ag(z)return g(z.f*(3.81*O),z.c*(3.57*O),z.d*(4.19*O))end
function onTick()D(3,aX)aG=ag(g(e(11),e(12),e(13)))bj=ag(g(e(14),e(15),e(16)))if aH then
if e(17)==1 then
if K<10 then
K=K+1
at()else
N=g(e(1),e(3),e(2))aj,ak,al=e(4),e(5),e(6)X,J,V=Y(aj),Y(ak),Y(al)ap,Z,aa=A(aj),A(ak),A(al)R=g(J*V,-Z,J*aa)Q=g(ap*aa+X*Z*V,X*J,-ap*V+X*Z*aa)ai=aZ(R,Q)bc=e(7)*ad
aE=e(8)*ad
b_=e(9)af=e(10)ao=b.sin(bc)*b_
aS=b.sin(aE)*af
bb=b.cos(aE)*af
bd=(bb^2-ao^2)^.5
ac=g(ao,bd,aS)aN=s(ac)>0
if aN then
aC=k(N,aL(ac,R,Q,ai))if s(l(aG,aC))<=35 then
aT()else
aA=aC
M=l(aA,N)E=m(M)ay=s(M)aO=v(N,"myvel")am=v(aA,"tgtvel")aw=v(am,"tgtacc")aP=v(aw,"tgtjer")ba=l(am,aO)aY=-aU(ay,"cv")ar=U(ay/aY,-70,70)aI=w(aw,E)aK=w(aP,E)av=k(M,h(ba,ar))bn=w(av,E)aV=k(k(L(h(av,P),ar^2),L(h(aI,P),2)),L(h(aK,P),6))ax=aQ(aV,R,Q,ai)D(1,U(-ax.c,-q,q)+az)D(2,U(-ax.d,-q,q)+ab)end
end
end
end
else
at()end
end
