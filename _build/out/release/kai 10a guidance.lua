-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2782 (3087 with comment) chars
bm="FOX1"
bl="PITBULL"
bk="MADDOG"
bj="LASTKNOWN"
bi=","

G=true
aB=false
ac=property
av=output
as=input
N=math
af=N.sin
ab=N.cos
f=debug.log
K=as.getNumber
g=K; C=av.setNumber; bc=as.getBool; bh=av.setBool;
o=ac.getNumber; bb=ac.getBool; be=ac.getText; j=N; pi=j.pi; az=pi*2
function e(a,d,c)return{a=a or 0,d=d or 0,c=c or 0}end
function n(_,b)return e(_.a+b.a,_.d+b.d,_.c+b.c)end
function bf(_,b)return e(_.a*b.a,_.d*b.d,_.c*b.c)end
function h(_,x)return e(_.a*x,_.d*x,_.c*x)end
function aH(_)return h(_,-1)end
function B(_,b)return n(_,aH(b))end
function m(_)return j.sqrt(_.a*_.a+_.d*_.d+_.c*_.c)end
function aD(_,x)return h(_,1/x)end
function D(_)return aD(_,m(_))end
function r(_,b)return _.a*b.a+_.d*b.d+_.c*b.c
end
function z(_,b)return e(_.d*b.c-_.c*b.d,_.c*b.a-_.a*b.c,_.a*b.d-_.d*b.a)end
function aw(_,b)return B(_,h(D(b),r(_,D(b))))end
function bg(ap,M,y)local y=y or 1
return e(j.sin(ap)*j.cos(M)*y,j.cos(ap)*j.cos(M)*y,j.sin(M)*y)end
function F(_,p)if not l then
l={}l[p]={W=e(),S=e()}elseif not l[p]then
l[p]={W=e(),S=e()}end
l[p].S=B(_,l[p].W)l[p].W=_
return l[p].S
end
function aP(_,R,T,X)return e(r(R,_),r(T,_),r(X,_))end
function an(_,R,T,X)return n(n(h(R,_.a),h(T,_.d)),h(X,_.c))end
function aE(a,aC,J)return a<aC and aC or a>J and J or a
end
function bd(ag,aM)f("VECTOR "..aM.." COMPONENTS:")f(ag.a)f(ag.d)f(ag.c)f("------------------")end
function aJ()return((Q<=2495 or Q>=2505)and Q>=aZ and aY)end
A=o("Navigation Constant")b_=o("Pure Pursuit Navigation Constant")H=o("Max Control")aZ=o("Minimum Mass")aF=o("Horizontal Offset")au=o("Vertical Offset")aL=o("Max Distance from radio")u=aB
function onTick()ar,aq,at=K(4),K(5),K(6)Y,V,ah=ab(ar),ab(aq),ab(at)al,ae,ad=af(ar),af(aq),af(at)L=e(V*ah,-ae,V*ad)I=e(al*ad+Y*ae*ah,Y*V,-al*ah+Y*ae*ad)aa=z(L,I)P=e(g(1),g(3),g(2))U=F(P,"m_vel")aU=n(P,aH(an(e(0,1.25,0),L,I,aa)))k=e(g(7),g(8),g(9))f("radio pos: "..k.a..bi..k.d..bi..k.c)ax=g(12)ak=g(13)aK=g(14)or 0
Q=aK*ax
aX=g(10)*az
ai=g(11)*az
aj=j.sin(aX)*ax
aS=j.sin(ai)*ak
aI=j.cos(ai)*ak
J=(aI^2-aj^2)^.5
ao=e(aj,J,aS)aY=m(ao)>0
aR=i or e()if aJ()then
s=n(aU,an(ao,L,I,aa))f("tgt_pos_global: "..s.a..bi..s.d..bi..s.c)if m(k)>0 then
if m(B(s,k))<=aL then
f(bl)u=G
i=s
q=bl
else
f(bm)u=G
i=k
q=bm
end
else
f(bk)u=G
i=s
q=bk
end
elseif m(k)>0 then
f(bm)u=G
i=k
q=bm
else
f("LAST KNOWN")i=aR
q=bj
end
f("tgt_pos: "..i.a..bi..i.d..bi..i.c)ay=F(i,"tgt_vel")aA=F(ay,"tgt_acc")aO=F(aA,"tgt_jer")w=B(i,P)v=D(w)E=B(ay,U)aV=aw(aA,v)aQ=aw(aO,v)Z=aD(z(w,E),r(w,w))O=h(z(E,Z),A)O=h(z(v,Z),-A*m(E))aN=D(U)O=h(z(aN,Z),-A*m(E))aW=h(aV,A/2)aT=h(aQ,A/6)aG=n(O,n(aW,aT))if m(w)<1000 and r(v,U)>1 and not(q==bm)and not(q==bj)then
t=1
else
aG=h(v,b_)t=3
end
am=aP(aG,L,I,aa)ba=g(15)>0 or aB
if ba and u then
C(1,aE(-am.a,-H/t,H/t)+aF)C(2,aE(-am.c,-H/t,H/t)+au)else
C(1,aF)C(2,au)end
end
