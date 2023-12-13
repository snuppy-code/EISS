-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2782 (3087 with comment) chars
bm="PITBULL"
bl="MADDOG"
bk="LASTKNOWN"
bj=","
bi="FOX1"

F=true
ai=false
N=property
av=output
aw=input
O=math
P=O.sin
ad=O.cos
f=debug.log
D=aw.getNumber
h=D; H=av.setNumber; bd=aw.getBool; bc=av.setBool;
o=N.getNumber; bf=N.getBool; bh=N.getText; j=O; pi=j.pi; aj=pi*2
function e(a,d,c)return{a=a or 0,d=d or 0,c=c or 0}end
function n(_,b)return e(_.a+b.a,_.d+b.d,_.c+b.c)end
function bg(_,b)return e(_.a*b.a,_.d*b.d,_.c*b.c)end
function g(_,u)return e(_.a*u,_.d*u,_.c*u)end
function aG(_)return g(_,-1)end
function v(_,b)return n(_,aG(b))end
function m(_)return j.sqrt(_.a*_.a+_.d*_.d+_.c*_.c)end
function aH(_,u)return g(_,1/u)end
function I(_)return aH(_,m(_))end
function r(_,b)return _.a*b.a+_.d*b.d+_.c*b.c
end
function z(_,b)return e(_.d*b.c-_.c*b.d,_.c*b.a-_.a*b.c,_.a*b.d-_.d*b.a)end
function aq(_,b)return v(_,g(I(b),r(_,I(b))))end
function bb(ay,Z,w)local w=w or 1
return e(j.sin(ay)*j.cos(Z)*w,j.cos(ay)*j.cos(Z)*w,j.sin(Z)*w)end
function G(_,p)if not k then
k={}k[p]={af=e(),ab=e()}elseif not k[p]then
k[p]={af=e(),ab=e()}end
k[p].ab=v(_,k[p].af)k[p].af=_
return k[p].ab
end
function aQ(_,R,aa,W)return e(r(R,_),r(aa,_),r(W,_))end
function ao(_,R,aa,W)return n(n(g(R,_.a),g(aa,_.d)),g(W,_.c))end
function an(a,aA,E)return a<aA and aA or a>E and E or a
end
function be(Y,aL)f("VECTOR "..aL.." COMPONENTS:")f(Y.a)f(Y.d)f(Y.c)f("------------------")end
function aR()return((V<=2495 or V>=2505)and V>=aZ and aV)end
A=o("Navigation Constant")aI=o("Pure Pursuit Navigation Constant")L=o("Max Control")aZ=o("Minimum Mass")ak=o("Horizontal Offset")at=o("Vertical Offset")ba=o("Max Distance from radio")t=ai
function onTick()ax,au,ar=D(4),D(5),D(6)Q,ae,X=ad(ax),ad(au),ad(ar)aC,ag,M=P(ax),P(au),P(ar)J=e(ae*X,-ag,ae*M)K=e(aC*M+Q*ag*X,Q*ae,-aC*X+Q*ag*M)ah=z(J,K)S=e(h(1),h(3),h(2))T=G(S,"m_vel")aM=n(S,aG(ao(e(0,1.25,0),J,K,ah)))l=e(h(7),h(8),h(9))f("radio pos: "..l.a..bj..l.d..bj..l.c)ap=h(12)am=h(13)b_=h(14)or 0
V=b_*ap
aY=h(10)*aj
aE=h(11)*aj
az=j.sin(aY)*ap
aS=j.sin(aE)*am
aX=j.cos(aE)*am
E=(aX^2-az^2)^.5
as=e(az,E,aS)aV=m(as)>0
aW=i or e()if aR()then
s=n(aM,ao(as,J,K,ah))f("tgt_pos_global: "..s.a..bj..s.d..bj..s.c)if m(l)>0 then
if m(v(s,l))<=ba then
f(bm)t=F
i=s
q=bm
else
f(bi)t=F
i=l
q=bi
end
else
f(bl)t=F
i=s
q=bl
end
elseif m(l)>0 then
f(bi)t=F
i=l
q=bi
else
f("LAST KNOWN")i=aW
q=bk
end
f("tgt_pos: "..i.a..bj..i.d..bj..i.c)aF=G(i,"tgt_vel")aD=G(aF,"tgt_acc")aP=G(aD,"tgt_jer")x=v(i,S)B=I(x)C=v(aF,T)aK=aq(aD,B)aJ=aq(aP,B)ac=aH(z(x,C),r(x,x))U=g(z(C,ac),A)U=g(z(B,ac),-A*m(C))aN=I(T)U=g(z(aN,ac),-A*m(C))aO=g(aK,A/2)aT=g(aJ,A/6)aB=n(U,n(aO,aT))if m(x)<1000 and r(B,T)>1 and not(q==bi)and not(q==bk)then
y=1
else
aB=g(B,aI)y=3
end
al=aQ(aB,J,K,ah)aU=h(15)>0 or ai
if aU and t then
H(1,an(-al.a,-L/y,L/y)+ak)H(2,an(-al.c,-L/y,L/y)+at)else
H(1,ak)H(2,at)end
end
