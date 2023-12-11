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
bk=","
bj="LASTKNOWN"
bi="MADDOG"

J=true
ao=false
O=property
aG=output
ay=input
M=math
N=M.sin
Q=M.cos
f=debug.log
L=ay.getNumber
g=L; G=aG.setNumber; bc=ay.getBool; bd=aG.setBool;
o=O.getNumber; bg=O.getBool; bh=O.getText; j=M; pi=j.pi; au=pi*2
function e(a,d,c)return{a=a or 0,d=d or 0,c=c or 0}end
function p(_,b)return e(_.a+b.a,_.d+b.d,_.c+b.c)end
function bf(_,b)return e(_.a*b.a,_.d*b.d,_.c*b.c)end
function h(_,A)return e(_.a*A,_.d*A,_.c*A)end
function ai(_)return h(_,-1)end
function x(_,b)return p(_,ai(b))end
function m(_)return j.sqrt(_.a*_.a+_.d*_.d+_.c*_.c)end
function az(_,A)return h(_,1/A)end
function K(_)return az(_,m(_))end
function r(_,b)return _.a*b.a+_.d*b.d+_.c*b.c
end
function u(_,b)return e(_.d*b.c-_.c*b.d,_.c*b.a-_.a*b.c,_.a*b.d-_.d*b.a)end
function aF(_,b)return x(_,h(K(b),r(_,K(b))))end
function be(am,R,y)local y=y or 1
return e(j.sin(am)*j.cos(R)*y,j.cos(am)*j.cos(R)*y,j.sin(R)*y)end
function H(_,n)if not k then
k={}k[n]={ac=e(),ab=e()}elseif not k[n]then
k[n]={ac=e(),ab=e()}end
k[n].ab=x(_,k[n].ac)k[n].ac=_
return k[n].ab
end
function aJ(_,P,aa,Z)return e(r(P,_),r(aa,_),r(Z,_))end
function aD(_,P,aa,Z)return p(p(h(P,_.a),h(aa,_.d)),h(Z,_.c))end
function an(a,ap,I)return a<ap and ap or a>I and I or a
end
function bb(ae,aM)f("VECTOR "..aM.." COMPONENTS:")f(ae.a)f(ae.d)f(ae.c)f("------------------")end
function aY()return((U<=2495 or U>=2505)and U>=aX and aS)end
B=o("Navigation Constant")aZ=o("Pure Pursuit Navigation Constant")F=o("Max Control")aX=o("Minimum Mass")ar=o("Horizontal Offset")aA=o("Vertical Offset")b_=o("Max Distance from radio")z=ao
function onTick()as,aj,aH=L(4),L(5),L(6)ah,ad,V=Q(as),Q(aj),Q(aH)al,S,T=N(as),N(aj),N(aH)C=e(ad*V,-S,ad*T)E=e(al*T+ah*S*V,ah*ad,-al*V+ah*S*T)X=u(C,E)af=e(g(1),g(3),g(2))Y=H(af,"m_vel")aT=p(af,ai(aD(e(0,1.25,0),C,E,X)))l=e(g(7),g(8),g(9))f("radio pos: "..l.a..bk..l.d..bk..l.c)ax=g(12)aq=g(13)aV=g(14)or 0
U=aV*ax
aW=g(10)*au
at=g(11)*au
av=j.sin(aW)*ax
aP=j.sin(at)*aq
aK=j.cos(at)*aq
I=(aK^2-av^2)^.5
aC=e(av,I,aP)aS=m(aC)>0
ba=i or e()if aY()then
s=p(aT,aD(aC,C,E,X))f("tgt_pos_global: "..s.a..bk..s.d..bk..s.c)if m(l)>0 then
if m(x(s,l))<=b_ then
f(bl)z=J
i=s
q=bl
else
f(bm)z=J
i=l
q=bm
end
else
f(bi)z=J
i=s
q=bi
end
elseif m(l)>0 then
f(bm)z=J
i=l
q=bm
else
f("LAST KNOWN")i=ba
q=bj
end
f("tgt_pos: "..i.a..bk..i.d..bk..i.c)ak=H(i,"tgt_vel")aw=H(ak,"tgt_acc")aO=H(aw,"tgt_jer")w=x(i,af)t=K(w)D=x(ak,Y)aU=aF(aw,t)aL=aF(aO,t)ag=az(u(w,D),r(w,w))W=h(u(D,ag),B)W=h(u(t,ag),-B*m(D))aQ=K(Y)W=h(u(aQ,ag),-B*m(D))aN=h(aU,B/2)aR=h(aL,B/6)aE=p(W,p(aN,aR))if m(w)<1000 and r(t,Y)>1 and not(q==bm)and not(q==bj)then
v=1
else
aE=h(t,aZ)v=3
end
aB=aJ(aE,C,E,X)aI=g(15)>0 or ao
if aI and z then
G(1,an(-aB.a,-F/v,F/v)+ar)G(2,an(-aB.c,-F/v,F/v)+aA)else
G(1,ar)G(2,aA)end
end
