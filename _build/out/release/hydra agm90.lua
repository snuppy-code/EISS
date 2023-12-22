-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2777 (3082 with comment) chars

m=nil
am=property
ah=output
aa=math
X=aa.sin
E=aa.cos
t=ah.setNumber
b,u,ao,aC=aa,input,ah,am
e,A,bi,bh=u.getNumber,ao.setNumber,u.getBool,ao.setBool
i,bl=aC.getNumber,aC.getBool
abs,cos,sin,acos,asin,tan,atan=b.abs,b.cos,b.sin,b.acos,b.asin,b.tan,b.atan
pi=b.pi
aB=pi*2
function g(d,f,c)return{d=d or 0,f=f or 0,c=c or 0}end
function h(_,n)return g(_.d*n,_.f*n,_.c*n)end
function bb(_)return h(_,-1)end
function W(_,n)return h(_,1/n)end
function k(_,a)return g(_.d+a.d,_.f+a.f,_.c+a.c)end
function l(_,a)return k(_,bb(a))end
function q(_)return b.sqrt(_.d*_.d+_.f*_.f+_.c*_.c)end
function o(_)return h(_,1/q(_))end
function aM(_,a)return g(_.f*a.c-_.c*a.f,_.c*a.d-_.d*a.c,_.d*a.f-_.f*a.d)end
function p(_,a)return _.d*a.d+_.f*a.f+_.c*a.c
end
function bg(_,a)return h(o(a),p(_,o(a)))end
function v(_,a)return l(_,h(o(a),p(_,o(a))))end
function bm(_,a,aY)return l(_,h(v(_,a),aY or 2))end
function bk(aq,z,j)local j=j or 1
return g(b.sin(aq)*b.cos(z)*j,b.cos(aq)*b.cos(z)*j,b.sin(z)*j)end
function aU(_,T,J,x)return g(p(T,_),p(J,_),p(x,_))end
function aW(_,T,J,x)return k(k(h(T,_.d),h(J,_.f)),h(x,_.c))end
function G(d,f,c)return b.max(f,b.min(d,c))end
function ai()t(1,ae)t(2,az)end
function aL()t(1,0)t(2,.1)end
function aT(aw,a)if not _ then _={}_[a]={Q=0,O=0}elseif not _[a]then _[a]={Q=0,O=0}end;_[a].O=aw-_[a].Q;_[a].Q=aw;return _[a].O end
function w(j,a)if not _ then _={}_[a]={y=g(),C=g()}elseif not _[a]then _[a]={y=g(),C=g()}end;_[a].C=l(j,_[a].y)_[a].y=j;return _[a].C end
ae=i("trim yaw")az=i("trim pitch")F=i("Nav Constant")s=i("Max Control")aX=not am.getBool("dumb launch?")P=0
af=i("Max friendlies")aG=i("Host user number")K=i("Frequency seed")R=i("Encryption seed")ax,aE=1871759,6393518
r={}b.randomseed(K)aZ=b.random(ax,aE)b.randomseed(K)for u=1,af do
M=b.random(-605791,605791)for bf,aO in ipairs(r)do
while aO==M do
M=b.random(-605791,605791)end
end
r[u]=M
end
aJ=r[aG]+aZ
r,af,K,ax,aE=m,m,m,m,m
function ay(D)return g(D.f*(3.81*R),D.d*(3.57*R),D.c*(4.19*R))end
function onTick()A(3,aJ)aK=ay(g(e(11),e(12),e(13)))bn=ay(g(e(14),e(15),e(16)))if aX then
if e(17)==1 then
if P<10 then
P=P+1
ai()else
V=g(e(1),e(3),e(2))ak,aD,as=e(4),e(5),e(6)Z,S,N=E(ak),E(aD),E(as)ag,H,L=X(ak),X(aD),X(as)I=g(S*N,-H,S*L)U=g(ag*L+Z*H*N,Z*S,-ag*N+Z*H*L)ab=aM(I,U)aV=e(7)*aB
ad=e(8)*aB
aH=e(9)al=e(10)av=b.sin(aV)*aH
aP=b.sin(ad)*al
ba=b.cos(ad)*al
be=(ba^2-av^2)^.5
ac=g(av,be,aP)bc=q(ac)>0
if bc then
au=k(V,aW(ac,I,U,ab))if q(l(aK,au))<=35 then
aL()else
aj=au
B=l(aj,V)Y=o(B)at=q(B)bd=w(V,"myvel")ar=w(aj,"tgtvel")ap=w(ar,"tgtacc")aQ=w(ap,"tgtjer")aN=l(ar,bd)b_=-aT(at,"cv")aA=G(at/b_,-70,70)aI=v(ap,Y)aS=v(aQ,Y)an=k(B,h(aN,aA))bj=v(an,Y)aR=k(k(W(h(an,F),aA^2),W(h(aI,F),2)),W(h(aS,F),6))aF=aU(aR,I,U,ab)A(1,G(-aF.d,-s,s)+ae)A(2,G(-aF.c,-s,s)+az)end
end
end
end
else
ai()end
end
