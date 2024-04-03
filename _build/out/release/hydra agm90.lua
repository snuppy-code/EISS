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
au=output
T=math
Q=T.sin
I=T.cos
v=au.setNumber
b,r,ak,ar=T,input,au,am
e,J,bf,bl=r.getNumber,ak.setNumber,r.getBool,ak.setBool
i,bk=ar.getNumber,ar.getBool
abs,cos,sin,acos,asin,tan,atan=b.abs,b.cos,b.sin,b.acos,b.asin,b.tan,b.atan
pi=b.pi
aE=pi*2
function g(c,f,d)return{c=c or 0,f=f or 0,d=d or 0}end
function h(_,n)return g(_.c*n,_.f*n,_.d*n)end
function aH(_)return h(_,-1)end
function L(_,n)return h(_,1/n)end
function k(_,a)return g(_.c+a.c,_.f+a.f,_.d+a.d)end
function l(_,a)return k(_,aH(a))end
function q(_)return b.sqrt(_.c*_.c+_.f*_.f+_.d*_.d)end
function p(_)return h(_,1/q(_))end
function aW(_,a)return g(_.f*a.d-_.d*a.f,_.d*a.c-_.c*a.d,_.c*a.f-_.f*a.c)end
function o(_,a)return _.c*a.c+_.f*a.f+_.d*a.d
end
function bh(_,a)return h(p(a),o(_,p(a)))end
function t(_,a)return l(_,h(p(a),o(_,p(a))))end
function bn(_,a,aJ)return l(_,h(t(_,a),aJ or 2))end
function bm(az,N,j)local j=j or 1
return g(b.sin(az)*b.cos(N)*j,b.cos(az)*b.cos(N)*j,b.sin(N)*j)end
function aO(_,C,G,A)return g(o(C,_),o(G,_),o(A,_))end
function aK(_,C,G,A)return k(k(h(C,_.c),h(G,_.f)),h(A,_.d))end
function X(c,f,d)return b.max(f,b.min(c,d))end
function ay()v(1,an)v(2,aF)end
function aU()v(1,0)v(2,.1)end
function aV(ap,a)if not _ then _={}_[a]={P=0,z=0}elseif not _[a]then _[a]={P=0,z=0}end;_[a].z=ap-_[a].P;_[a].P=ap;return _[a].z end
function s(j,a)if not _ then _={}_[a]={B=g(),Y=g()}elseif not _[a]then _[a]={B=g(),Y=g()}end;_[a].Y=l(j,_[a].B)_[a].B=j;return _[a].Y end
an=i("trim yaw")aF=i("trim pitch")aa=i("Nav Constant")w=i("Max Control")aS=not am.getBool("dumb launch?")R=0
av=i("Max friendlies")aI=i("Host user number")M=i("Frequency seed")U=i("Encryption seed")ax,aj=1871759,6393518
u={}b.randomseed(M)aN=b.random(ax,aj)b.randomseed(M)for r=1,av do
O=b.random(-605791,605791)for bj,aM in ipairs(u)do
while aM==O do
O=b.random(-605791,605791)end
end
u[r]=O
end
aL=u[aI]+aN
u,av,M,ax,aj=m,m,m,m,m
function aD(V)return g(V.f*(3.81*U),V.c*(3.57*U),V.d*(4.19*U))end
function onTick()J(3,aL)aQ=aD(g(e(11),e(12),e(13)))bg=aD(g(e(14),e(15),e(16)))if aS then
if e(17)==1 then
if R<10 then
R=R+1
ay()else
Z=g(e(1),e(3),e(2))ai,ah,at=e(4),e(5),e(6)x,F,S=I(ai),I(ah),I(at)ao,D,y=Q(ai),Q(ah),Q(at)W=g(F*S,-D,F*y)K=g(ao*y+x*D*S,x*F,-ao*S+x*D*y)as=aW(W,K)b_=e(7)*aE
ag=e(8)*aE
aG=e(9)ab=e(10)aw=b.sin(b_)*aG
aX=b.sin(ag)*ab
bc=b.cos(ag)*ab
aP=(bc^2-aw^2)^.5
ae=g(aw,aP,aX)aY=q(ae)>0
if aY then
ad=k(Z,aK(ae,W,K,as))if q(l(aQ,ad))<=35 then
aU()else
af=ad
H=l(af,Z)E=p(H)ac=q(H)be=s(Z,"myvel")aq=s(af,"tgtvel")al=s(aq,"tgtacc")aT=s(al,"tgtjer")bb=l(aq,be)ba=-aV(ac,"cv")aA=X(ac/ba,-70,70)aZ=t(al,E)bd=t(aT,E)aB=k(H,h(bb,aA))bi=t(aB,E)aR=k(k(L(h(aB,aa),aA^2),L(h(aZ,aa),2)),L(h(bd,aa),6))aC=aO(aR,W,K,as)J(1,X(-aC.c,-w,w)+an)J(2,X(-aC.d,-w,w)+aF)end
end
end
end
else
ay()end
end
