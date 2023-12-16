-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2777 (3082 with comment) chars

o=nil
ay=property
ai=output
aa=math
C=aa.sin
M=aa.cos
v=ai.setNumber
b,q,ak,aA=aa,input,ai,ay
e,F,bl,bm=q.getNumber,ak.setNumber,q.getBool,ak.setBool
i,bi=aA.getNumber,aA.getBool
abs,cos,sin,acos,asin,tan,atan=b.abs,b.cos,b.sin,b.acos,b.asin,b.tan,b.atan
pi=b.pi
ap=pi*2
function g(c,f,d)return{c=c or 0,f=f or 0,d=d or 0}end
function h(_,m)return g(_.c*m,_.f*m,_.d*m)end
function aT(_)return h(_,-1)end
function H(_,m)return h(_,1/m)end
function k(_,a)return g(_.c+a.c,_.f+a.f,_.d+a.d)end
function l(_,a)return k(_,aT(a))end
function s(_)return b.sqrt(_.c*_.c+_.f*_.f+_.d*_.d)end
function n(_)return h(_,1/s(_))end
function aL(_,a)return g(_.f*a.d-_.d*a.f,_.d*a.c-_.c*a.d,_.c*a.f-_.f*a.c)end
function p(_,a)return _.c*a.c+_.f*a.f+_.d*a.d
end
function bj(_,a)return h(n(a),p(_,n(a)))end
function r(_,a)return l(_,h(n(a),p(_,n(a))))end
function bf(_,a,aO)return l(_,h(r(_,a),aO or 2))end
function bg(aC,K,j)local j=j or 1
return g(b.sin(aC)*b.cos(K)*j,b.cos(aC)*b.cos(K)*j,b.sin(K)*j)end
function bb(_,T,R,I)return g(p(T,_),p(R,_),p(I,_))end
function be(_,T,R,I)return k(k(h(T,_.c),h(R,_.f)),h(I,_.d))end
function V(c,f,d)return b.max(f,b.min(c,d))end
function ag()v(1,aq)v(2,an)end
function bd()v(1,0)v(2,.1)end
function aK(af,a)if not _ then _={}_[a]={X=0,E=0}elseif not _[a]then _[a]={X=0,E=0}end;_[a].E=af-_[a].X;_[a].X=af;return _[a].E end
function u(j,a)if not _ then _={}_[a]={O=g(),G=g()}elseif not _[a]then _[a]={O=g(),G=g()}end;_[a].G=l(j,_[a].O)_[a].O=j;return _[a].G end
aq=i("trim yaw")an=i("trim pitch")U=i("Nav Constant")t=i("Max Control")aH=not ay.getBool("dumb launch?")N=0
aE=i("Max friendlies")aI=i("Host user number")Z=i("Frequency seed")J=i("Encryption seed")ah,aD=1871759,6393518
w={}b.randomseed(Z)aP=b.random(ah,aD)b.randomseed(Z)for q=1,aE do
Q=b.random(-605791,605791)for bk,aJ in ipairs(w)do
while aJ==Q do
Q=b.random(-605791,605791)end
end
w[q]=Q
end
aM=w[aI]+aP
w,aE,Z,ah,aD=o,o,o,o,o
function au(L)return g(L.f*(3.81*J),L.c*(3.57*J),L.d*(4.19*J))end
function onTick()F(3,aM)b_=au(g(e(11),e(12),e(13)))bh=au(g(e(14),e(15),e(16)))if aH then
if e(17)==1 then
if N<10 then
N=N+1
ag()else
y=g(e(1),e(3),e(2))ao,am,aj=e(4),e(5),e(6)z,D,Y=M(ao),M(am),M(aj)ac,S,P=C(ao),C(am),C(aj)B=g(D*Y,-S,D*P)A=g(ac*P+z*S*Y,z*D,-ac*Y+z*S*P)al=aL(B,A)aV=e(7)*ap
ae=e(8)*ap
aY=e(9)av=e(10)aB=b.sin(aV)*aY
aX=b.sin(ae)*av
aW=b.cos(ae)*av
aS=(aW^2-aB^2)^.5
ar=g(aB,aS,aX)aQ=s(ar)>0
if aQ then
ab=k(y,be(ar,B,A,al))if s(l(b_,ab))<=35 then
bd()else
ad=ab
x=l(ad,y)W=n(x)at=s(x)aZ=u(y,"myvel")aw=u(ad,"tgtvel")az=u(aw,"tgtacc")aU=u(az,"tgtjer")aN=l(aw,aZ)aG=-aK(at,"cv")ax=V(at/aG,-70,70)bc=r(az,W)ba=r(aU,W)as=k(x,h(aN,ax))bn=r(as,W)aR=k(k(H(h(as,U),ax^2),H(h(bc,U),2)),H(h(ba,U),6))aF=bb(aR,B,A,al)F(1,V(-aF.c,-t,t)+aq)F(2,V(-aF.d,-t,t)+an)end
end
end
end
else
ag()end
end
