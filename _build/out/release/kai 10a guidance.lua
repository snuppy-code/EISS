-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2782 (3087 with comment) chars
bm=","
bl="PITBULL"
bk="FOX1"
bj="LASTKNOWN"
bi="MADDOG"

D=true
aA=false
X=property
aw=output
aB=input
ag=math
aa=ag.sin
P=ag.cos
f=debug.log
I=aB.getNumber
g=I; K=aw.setNumber; bb=aB.getBool; bf=aw.setBool;
p=X.getNumber; bd=X.getBool; bh=X.getText; j=ag; pi=j.pi; ap=pi*2
function e(a,d,c)return{a=a or 0,d=d or 0,c=c or 0}end
function o(_,b)return e(_.a+b.a,_.d+b.d,_.c+b.c)end
function be(_,b)return e(_.a*b.a,_.d*b.d,_.c*b.c)end
function h(_,y)return e(_.a*y,_.d*y,_.c*y)end
function al(_)return h(_,-1)end
function v(_,b)return o(_,al(b))end
function m(_)return j.sqrt(_.a*_.a+_.d*_.d+_.c*_.c)end
function aG(_,y)return h(_,1/y)end
function G(_)return aG(_,m(_))end
function q(_,b)return _.a*b.a+_.d*b.d+_.c*b.c
end
function t(_,b)return e(_.d*b.c-_.c*b.d,_.c*b.a-_.a*b.c,_.a*b.d-_.d*b.a)end
function au(_,b)return v(_,h(G(b),q(_,G(b))))end
function bg(aj,S,z)local z=z or 1
return e(j.sin(aj)*j.cos(S)*z,j.cos(aj)*j.cos(S)*z,j.sin(S)*z)end
function F(_,n)if not l then
l={}l[n]={ac=e(),W=e()}elseif not l[n]then
l[n]={ac=e(),W=e()}end
l[n].W=v(_,l[n].ac)l[n].ac=_
return l[n].W
end
function aW(_,ab,U,Y)return e(q(ab,_),q(U,_),q(Y,_))end
function at(_,ab,U,Y)return o(o(h(ab,_.a),h(U,_.d)),h(Y,_.c))end
function aF(a,as,L)return a<as and as or a>L and L or a
end
function bc(Q,aI)f("VECTOR "..aI.." COMPONENTS:")f(Q.a)f(Q.d)f(Q.c)f("------------------")end
function aL()return((M<=2495 or M>=2505)and M>=aO and aP)end
x=p("Navigation Constant")aK=p("Pure Pursuit Navigation Constant")C=p("Max Control")aO=p("Minimum Mass")aC=p("Horizontal Offset")aD=p("Vertical Offset")aJ=p("Max Distance from radio")u=aA
function onTick()ao,ak,am=I(4),I(5),I(6)T,R,O=P(ao),P(ak),P(am)an,V,af=aa(ao),aa(ak),aa(am)H=e(R*O,-V,R*af)J=e(an*af+T*V*O,T*R,-an*O+T*V*af)ad=t(H,J)N=e(g(1),g(3),g(2))ae=F(N,"m_vel")aU=o(N,al(at(e(0,1.25,0),H,J,ad)))k=e(g(7),g(8),g(9))f("radio pos: "..k.a..bm..k.d..bm..k.c)aH=g(12)ay=g(13)aM=g(14)or 0
M=aM*aH
ba=g(10)*ap
az=g(11)*ap
ai=j.sin(ba)*aH
b_=j.sin(az)*ay
aR=j.cos(az)*ay
L=(aR^2-ai^2)^.5
aq=e(ai,L,b_)aP=m(aq)>0
aV=i or e()if aL()then
r=o(aU,at(aq,H,J,ad))f("tgt_pos_global: "..r.a..bm..r.d..bm..r.c)if m(k)>0 then
if m(v(r,k))<=aJ then
f(bl)u=D
i=r
s=bl
else
f(bk)u=D
i=k
s=bk
end
else
f(bi)u=D
i=r
s=bi
end
elseif m(k)>0 then
f(bk)u=D
i=k
s=bk
else
f("LAST KNOWN")i=aV
s=bj
end
f("tgt_pos: "..i.a..bm..i.d..bm..i.c)ar=F(i,"tgt_vel")ax=F(ar,"tgt_acc")aZ=F(ax,"tgt_jer")B=v(i,N)w=G(B)E=v(ar,ae)aX=au(ax,w)aY=au(aZ,w)Z=aG(t(B,E),q(B,B))ah=h(t(E,Z),x)ah=h(t(w,Z),-x*m(E))aN=G(ae)ah=h(t(aN,Z),-x*m(E))aQ=h(aX,x/2)aS=h(aY,x/6)aE=o(ah,o(aQ,aS))if m(B)<1000 and q(w,ae)>1 and not(s==bk)and not(s==bj)then
A=1
else
aE=h(w,aK)A=3
end
av=aW(aE,H,J,ad)aT=g(15)>0 or aA
if aT and u then
K(1,aF(-av.a,-C/A,C/A)+aC)K(2,aF(-av.c,-C/A,C/A)+aD)else
K(1,aC)K(2,aD)end
end
