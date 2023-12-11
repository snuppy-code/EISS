-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2525 (2830 with comment) chars
bg="FOX1"

G=true
aq=false
af=property
al=output
as=input
aa=math
M=aa.sin
T=aa.cos
h=debug.log
I=as.getNumber
f=I; H=al.setNumber; bd=as.getBool; bf=al.setBool;
o=af.getNumber; ba=af.getBool; b_=af.getText; i=aa; pi=i.pi; au=pi*2
function d(b,e,c)return{b=b or 0,e=e or 0,c=c or 0}end
function m(_,a)return d(_.b+a.b,_.e+a.e,_.c+a.c)end
function be(_,a)return d(_.b*a.b,_.e*a.e,_.c*a.c)end
function g(_,r)return d(_.b*r,_.e*r,_.c*r)end
function ah(_)return g(_,-1)end
function t(_,a)return m(_,ah(a))end
function j(_)return i.sqrt(_.b*_.b+_.e*_.e+_.c*_.c)end
function aG(_,r)return g(_,1/r)end
function J(_)return aG(_,j(_))end
function p(_,a)return _.b*a.b+_.e*a.e+_.c*a.c
end
function y(_,a)return d(_.e*a.c-_.c*a.e,_.c*a.b-_.b*a.c,_.b*a.e-_.e*a.b)end
function az(_,a)return t(_,g(J(a),p(_,J(a))))end
function bb(ax,U,v)local v=v or 1
return d(i.sin(ax)*i.cos(U)*v,i.cos(ax)*i.cos(U)*v,i.sin(U)*v)end
function C(_,n)if not l then
l={}l[n]={P=d(),ad=d()}elseif not l[n]then
l[n]={P=d(),ad=d()}end
l[n].ad=t(_,l[n].P)l[n].P=_
return l[n].ad
end
function aM(_,Q,ab,ac)return d(p(Q,_),p(ab,_),p(ac,_))end
function aC(_,Q,ab,ac)return m(m(g(Q,_.b),g(ab,_.e)),g(ac,_.c))end
function at(b,aD,B)return b<aD and aD or b>B and B or b
end
function bc(Z,aJ)h("VECTOR "..aJ.." COMPONENTS:")h(Z.b)h(Z.e)h(Z.c)h("------------------")end
function aI()return((X<=2495 or X>=2505)and X>=aK and aU)end
s=o("Navigation Constant")A=o("Max Control")aK=o("Minimum Mass")ak=o("Horizontal Offset")av=o("Vertical Offset")aT=o("Max Distance from radio")w=aq
function onTick()ay,aj,am=I(4),I(5),I(6)L,R,O=T(ay),T(aj),T(am)an,N,S=M(ay),M(aj),M(am)E=d(R*O,-N,R*S)F=d(an*S+L*N*O,L*R,-an*O+L*N*S)V=y(E,F)K=d(f(1),f(3),f(2))Y=C(K,"m_vel")aP=m(K,ah(aC(d(0,1.25,0),E,F,V)))x=d(f(7),f(8),f(9))ai=f(12)aw=f(13)aR=f(14)or 0
X=aR*ai
aO=f(10)*au
aF=f(11)*au
aE=i.sin(aO)*ai
aQ=i.sin(aF)*aw
aV=i.cos(aF)*aw
B=(aV^2-aE^2)^.5
aA=d(aE,B,aQ)aU=j(aA)>0
aN=k or d()if aI()then
ag=m(aP,aC(aA,E,F,V))if j(x)>0 then
if j(t(k,x))<=aT then
h("PITBULL")w=G
k=ag
else
h(bg)w=G
k=x
end
else
h("MADDOG")w=G
k=ag
end
elseif j(x)>0 then
h(bg)w=G
k=x
else
h("LAST KNOWN")k=aN
end
ao=C(k,"tgt_vel")ap=C(ao,"tgt_acc")aZ=C(ap,"tgt_jer")u=t(k,K)q=J(u)D=t(ao,Y)aL=az(ap,q)aS=az(aZ,q)W=aG(y(u,D),p(u,u))ae=g(y(D,W),s)ae=g(y(q,W),-s*j(D))aH=J(Y)ae=g(y(aH,W),-s*j(D))aW=g(aL,s/2)aX=g(aS,s/6)ar=m(ae,m(aW,aX))if j(u)<1000 and p(q,Y)>1 then
z=1
else
ar=q
z=4
end
aB=aM(ar,E,F,V)aY=f(15)>0 or aq
if aY and w then
H(1,at(-aB.b,-A/z,A/z)+ak)H(2,at(-aB.c,-A/z,A/z)+av)else
H(1,ak)H(2,av)end
end
