-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2777 (3082 with comment) chars

n=nil
aj=property
an=output
z=math
K=z.sin
A=z.cos
w=an.setNumber
b,s,ad,aC=z,input,an,aj
e,T,bm,bl=s.getNumber,ad.setNumber,s.getBool,ad.setBool
i,bg=aC.getNumber,aC.getBool
abs,cos,sin,acos,asin,tan,atan=b.abs,b.cos,b.sin,b.acos,b.asin,b.tan,b.atan
pi=b.pi
ar=pi*2
function g(c,f,d)return{c=c or 0,f=f or 0,d=d or 0}end
function h(_,m)return g(_.c*m,_.f*m,_.d*m)end
function aZ(_)return h(_,-1)end
function C(_,m)return h(_,1/m)end
function k(_,a)return g(_.c+a.c,_.f+a.f,_.d+a.d)end
function l(_,a)return k(_,aZ(a))end
function q(_)return b.sqrt(_.c*_.c+_.f*_.f+_.d*_.d)end
function o(_)return h(_,1/q(_))end
function aG(_,a)return g(_.f*a.d-_.d*a.f,_.d*a.c-_.c*a.d,_.c*a.f-_.f*a.c)end
function p(_,a)return _.c*a.c+_.f*a.f+_.d*a.d
end
function bi(_,a)return h(o(a),p(_,o(a)))end
function t(_,a)return l(_,h(o(a),p(_,o(a))))end
function bh(_,a,bb)return l(_,h(t(_,a),bb or 2))end
function bn(aw,Z,j)local j=j or 1
return g(b.sin(aw)*b.cos(Z)*j,b.cos(aw)*b.cos(Z)*j,b.sin(Z)*j)end
function aJ(_,G,J,R)return g(p(G,_),p(J,_),p(R,_))end
function aU(_,G,J,R)return k(k(h(G,_.c),h(J,_.f)),h(R,_.d))end
function I(c,f,d)return b.max(f,b.min(c,d))end
function ah()w(1,aB)w(2,ae)end
function aN()w(1,0)w(2,.1)end
function aH(ak,a)if not _ then _={}_[a]={U=0,D=0}elseif not _[a]then _[a]={U=0,D=0}end;_[a].D=ak-_[a].U;_[a].U=ak;return _[a].D end
function r(j,a)if not _ then _={}_[a]={S=g(),W=g()}elseif not _[a]then _[a]={S=g(),W=g()}end;_[a].W=l(j,_[a].S)_[a].S=j;return _[a].W end
aB=i("trim yaw")ae=i("trim pitch")N=i("Nav Constant")v=i("Max Control")aI=not aj.getBool("dumb launch?")P=0
ac=i("Max friendlies")aY=i("Host user number")aa=i("Frequency seed")L=i("Encryption seed")ap,ag=1871759,6393518
u={}b.randomseed(aa)bd=b.random(ap,ag)b.randomseed(aa)for s=1,ac do
X=b.random(-605791,605791)for bk,aO in ipairs(u)do
while aO==X do
X=b.random(-605791,605791)end
end
u[s]=X
end
aP=u[aY]+bd
u,ac,aa,ap,ag=n,n,n,n,n
function av(F)return g(F.f*(3.81*L),F.c*(3.57*L),F.d*(4.19*L))end
function onTick()T(3,aP)bc=av(g(e(11),e(12),e(13)))bj=av(g(e(14),e(15),e(16)))if aI then
if e(17)==1 then
if P<10 then
P=P+1
ah()else
x=g(e(1),e(3),e(2))ay,aA,aE=e(4),e(5),e(6)Q,O,H=A(ay),A(aA),A(aE)af,B,E=K(ay),K(aA),K(aE)y=g(O*H,-B,O*E)Y=g(af*E+Q*B*H,Q*O,-af*H+Q*B*E)ax=aG(y,Y)b_=e(7)*ar
as=e(8)*ar
ba=e(9)au=e(10)ai=b.sin(b_)*ba
aM=b.sin(as)*au
be=b.cos(as)*au
aS=(be^2-ai^2)^.5
aD=g(ai,aS,aM)aL=q(aD)>0
if aL then
aq=k(x,aU(aD,y,Y,ax))if q(l(bc,aq))<=35 then
aN()else
ab=aq
V=l(ab,x)M=o(V)at=q(V)aX=r(x,"myvel")aF=r(ab,"tgtvel")az=r(aF,"tgtacc")aV=r(az,"tgtjer")aQ=l(aF,aX)aK=-aH(at,"cv")am=I(at/aK,-70,70)aT=t(az,M)aR=t(aV,M)al=k(V,h(aQ,am))bf=t(al,M)aW=k(k(C(h(al,N),am^2),C(h(aT,N),2)),C(h(aR,N),6))ao=aJ(aW,y,Y,ax)T(1,I(-ao.c,-v,v)+aB)T(2,I(-ao.d,-v,v)+ae)end
end
end
end
else
ah()end
end
