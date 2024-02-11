-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2777 (3082 with comment) chars

m=nil
aE=property
ap=output
Q=math
Y=Q.sin
aa=Q.cos
r=ap.setNumber
b,q,an,av=Q,input,ap,aE
e,U,bm,bf=q.getNumber,an.setNumber,q.getBool,an.setBool
j,bj=av.getNumber,av.getBool
abs,cos,sin,acos,asin,tan,atan=b.abs,b.cos,b.sin,b.acos,b.asin,b.tan,b.atan
pi=b.pi
ay=pi*2
function g(d,f,c)return{d=d or 0,f=f or 0,c=c or 0}end
function h(_,p)return g(_.d*p,_.f*p,_.c*p)end
function b_(_)return h(_,-1)end
function H(_,p)return h(_,1/p)end
function k(_,a)return g(_.d+a.d,_.f+a.f,_.c+a.c)end
function l(_,a)return k(_,b_(a))end
function u(_)return b.sqrt(_.d*_.d+_.f*_.f+_.c*_.c)end
function n(_)return h(_,1/u(_))end
function aI(_,a)return g(_.f*a.c-_.c*a.f,_.c*a.d-_.d*a.c,_.d*a.f-_.f*a.d)end
function o(_,a)return _.d*a.d+_.f*a.f+_.c*a.c
end
function bg(_,a)return h(n(a),o(_,n(a)))end
function t(_,a)return l(_,h(n(a),o(_,n(a))))end
function bl(_,a,aM)return l(_,h(t(_,a),aM or 2))end
function bn(aq,C,i)local i=i or 1
return g(b.sin(aq)*b.cos(C)*i,b.cos(aq)*b.cos(C)*i,b.sin(C)*i)end
function aR(_,z,Z,W)return g(o(z,_),o(Z,_),o(W,_))end
function aT(_,z,Z,W)return k(k(h(z,_.d),h(Z,_.f)),h(W,_.c))end
function F(d,f,c)return b.max(f,b.min(d,c))end
function aD()r(1,am)r(2,ac)end
function aJ()r(1,0)r(2,.1)end
function aO(au,a)if not _ then _={}_[a]={N=0,X=0}elseif not _[a]then _[a]={N=0,X=0}end;_[a].X=au-_[a].N;_[a].N=au;return _[a].X end
function s(i,a)if not _ then _={}_[a]={O=g(),R=g()}elseif not _[a]then _[a]={O=g(),R=g()}end;_[a].R=l(i,_[a].O)_[a].O=i;return _[a].R end
am=j("trim yaw")ac=j("trim pitch")A=j("Nav Constant")v=j("Max Control")aV=not aE.getBool("dumb launch?")K=0
ab=j("Max friendlies")aG=j("Host user number")J=j("Frequency seed")E=j("Encryption seed")ag,aC=1871759,6393518
w={}b.randomseed(J)aW=b.random(ag,aC)b.randomseed(J)for q=1,ab do
I=b.random(-605791,605791)for bi,aK in ipairs(w)do
while aK==I do
I=b.random(-605791,605791)end
end
w[q]=I
end
aN=w[aG]+aW
w,ab,J,ag,aC=m,m,m,m,m
function ax(S)return g(S.f*(3.81*E),S.d*(3.57*E),S.c*(4.19*E))end
function onTick()U(3,aN)aP=ax(g(e(11),e(12),e(13)))bk=ax(g(e(14),e(15),e(16)))if aV then
if e(17)==1 then
if K<10 then
K=K+1
aD()else
P=g(e(1),e(3),e(2))ao,ai,aj=e(4),e(5),e(6)M,D,y=aa(ao),aa(ai),aa(aj)aF,G,V=Y(ao),Y(ai),Y(aj)L=g(D*y,-G,D*V)x=g(aF*V+M*G*y,M*D,-aF*y+M*G*V)ad=aI(L,x)aY=e(7)*ay
af=e(8)*ay
aU=e(9)al=e(10)at=b.sin(aY)*aU
be=b.sin(af)*al
ba=b.cos(af)*al
bd=(ba^2-at^2)^.5
az=g(at,bd,be)aZ=u(az)>0
if aZ then
aw=k(P,aT(az,L,x,ad))if u(l(aP,aw))<=35 then
aJ()else
as=aw
B=l(as,P)T=n(B)aB=u(B)bb=s(P,"myvel")ar=s(as,"tgtvel")aA=s(ar,"tgtacc")aX=s(aA,"tgtjer")aH=l(ar,bb)aQ=-aO(aB,"cv")ae=F(aB/aQ,-70,70)aS=t(aA,T)bc=t(aX,T)ah=k(B,h(aH,ae))bh=t(ah,T)aL=k(k(H(h(ah,A),ae^2),H(h(aS,A),2)),H(h(bc,A),6))ak=aR(aL,L,x,ad)U(1,F(-ak.d,-v,v)+am)U(2,F(-ak.c,-v,v)+ac)end
end
end
end
else
aD()end
end
