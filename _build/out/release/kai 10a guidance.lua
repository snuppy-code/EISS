-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2440 (2774 with comment) chars

J=true
am=false
V=property
at=output
ax=input
R=math
ae=R.sin
N=R.cos
q=debug.log
A=ax.getNumber
f=A; H=at.setNumber; ba=ax.getBool; be=at.setBool;
o=V.getNumber; bd=V.getBool; bb=V.getText; h=R; pi=h.pi; aE=pi*2
function d(b,e,c)return{b=b or 0,e=e or 0,c=c or 0}end
function j(_,a)return d(_.b+a.b,_.e+a.e,_.c+a.c)end
function bc(_,a)return d(_.b*a.b,_.e*a.e,_.c*a.c)end
function g(_,p)return d(_.b*p,_.e*p,_.c*p)end
function aG(_)return g(_,-1)end
function r(_,a)return j(_,aG(a))end
function k(_)return h.sqrt(_.b*_.b+_.e*_.e+_.c*_.c)end
function aB(_,p)return g(_,1/p)end
function E(_)return aB(_,k(_))end
function n(_,a)return _.b*a.b+_.e*a.e+_.c*a.c
end
function w(_,a)return d(_.e*a.c-_.c*a.e,_.c*a.b-_.b*a.c,_.b*a.e-_.e*a.b)end
function au(_,a)return r(_,g(E(a),n(_,E(a))))end
function bf(aj,Q,t)local t=t or 1
return d(h.sin(aj)*h.cos(Q)*t,h.cos(aj)*h.cos(Q)*t,h.sin(Q)*t)end
function D(_,m)if not i then
i={}i[m]={S=d(),aa=d()}elseif not i[m]then
i[m]={S=d(),aa=d()}end
i[m].aa=r(_,i[m].S)i[m].S=_
return i[m].aa
end
function aP(_,I,O,Y)return d(n(I,_),n(O,_),n(Y,_))end
function ai(_,I,O,Y)return j(j(g(I,_.b),g(O,_.e)),g(Y,_.c))end
function an(b,al,y)return b<al and al or b>y and y or b
end
function b_(K,aJ)q("VECTOR "..aJ.." COMPONENTS:")q(K.b)q(K.e)q(K.c)q("------------------")end
function aS()return((M<=2495 or M>=2505)and M>=aK and aU)end
v=o("Navigation Constant")G=o("Max Control")aK=o("Minimum Mass")ay=o("Horizontal Offset")az=o("Vertical Offset")aI=o("Max Distance from radio")B=am
function onTick()aw,aq,as=A(4),A(5),A(6)L,X,ab=N(aw),N(aq),N(as)ap,ac,Z=ae(aw),ae(aq),ae(as)C=d(X*ab,-ac,X*Z)z=d(ap*Z+L*ac*ab,L*X,-ap*ab+L*ac*Z)ad=w(C,z)af=d(f(1),f(3),f(2))W=D(af,"m_vel")aN=j(af,aG(ai(d(0,1.25,0),C,z,ad)))P=d(f(7),f(8),f(9))ah=f(12)aA=f(13)aR=f(14)or 0
M=aR*ah
aL=f(10)*aE
ak=f(11)*aE
ar=h.sin(aL)*ah
aQ=h.sin(ak)*aA
aV=h.cos(ak)*aA
y=(aV^2-ar^2)^.5
ag=d(ar,y,aQ)aU=k(ag)>0
aW=l or d()if aS()then
aD=j(aN,ai(ag,C,z,ad))if k(P)>0 then
if k(r(l,P))<=aI then
B=J
l=aD
else
B=J
l=P
end
else
B=J
l=aD
end
else
l=aW
end
ao=D(l,"tgt_vel")aC=D(ao,"tgt_acc")aX=D(aC,"tgt_jer")u=r(l,af)x=E(u)F=r(ao,W)aY=au(aC,x)aM=au(aX,x)U=aB(w(u,F),n(u,u))T=g(w(F,U),v)T=g(w(x,U),-v*k(F))aT=E(W)T=g(w(aT,U),-v*k(F))aH=g(aY,v/2)aZ=g(aM,v/6)av=j(T,j(aH,aZ))if k(u)<1000 and n(x,W)>1 then
s=1
else
av=x
s=4
end
aF=aP(av,C,z,ad)aO=f(15)>0 or am
if aO and B then
H(1,an(-aF.b,-G/s,G/s)+ay)H(2,an(-aF.c,-G/s,G/s)+az)else
H(1,ay)H(2,az)end
end
