-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2774 (3079 with comment) chars
bo="LASTKNOWN"
bn="FOX1"

H=true
aw=false
aq=output
as=input
af=property
Z=math
ab=Z.sin
V=Z.cos
v=debug.log
ap=af.getBool
K=as.getNumber
f=K; q=aq.setNumber; bf=as.getBool; bk=aq.setBool;
l=af.getNumber; bm=ap; bg=af.getText; h=Z; pi=h.pi; aA=pi*2
function d(b,e,c)return{b=b or 0,e=e or 0,c=c or 0}end
function m(_,a)return d(_.b+a.b,_.e+a.e,_.c+a.c)end
function bj(_,a)return d(_.b*a.b,_.e*a.e,_.c*a.c)end
function g(_,s)return d(_.b*s,_.e*s,_.c*s)end
function aK(_)return g(_,-1)end
function y(_,a)return m(_,aK(a))end
function i(_)return h.sqrt(_.b*_.b+_.e*_.e+_.c*_.c)end
function aG(_,s)return g(_,1/s)end
function I(_)return aG(_,i(_))end
function o(_,a)return _.b*a.b+_.e*a.e+_.c*a.c
end
function A(_,a)return d(_.e*a.c-_.c*a.e,_.c*a.b-_.b*a.c,_.b*a.e-_.e*a.b)end
function aB(_,a)return y(_,g(I(a),o(_,I(a))))end
function bh(aC,ae,t)local t=t or 1
return d(h.sin(aC)*h.cos(ae)*t,h.cos(aC)*h.cos(ae)*t,h.sin(ae)*t)end
function D(_,n)if not j then
j={}j[n]={ah=d(),O=d()}elseif not j[n]then
j[n]={ah=d(),O=d()}end
j[n].O=y(_,j[n].ah)j[n].ah=_
return j[n].O
end
function aZ(_,P,U,L)return d(o(P,_),o(U,_),o(L,_))end
function au(_,P,U,L)return m(m(g(P,_.b),g(U,_.e)),g(L,_.c))end
function aD(b,aE,G)return b<aE and aE or b>G and G or b
end
function bi(Y,aS)v("VECTOR "..aS.." COMPONENTS:")v(Y.b)v(Y.e)v(Y.c)v("------------------")end
function aO()return((M<=2495 or M>=2505)and M>=bb and aL)end
function aj()q(1,ar)q(2,aF)end
function bl()q(1,0)q(2,1)end
B=l("Navigation Constant")aM=l("Pure Pursuit Navigation Constant")E=l("Max Control")bb=l("Minimum Mass")ar=l("Horizontal Offset")aF=l("Vertical Offset")aP=l("Max Distance from radio")u=aw
bd=not ap("dumb launch?")aa=0
function onTick()if bd then
if f(15)==1 then
if aa<10 then
aa=aa+1
aj()else
aJ,ay,at=K(4),K(5),K(6)T,S,ai=V(aJ),V(ay),V(at)ao,R,X=ab(aJ),ab(ay),ab(at)J=d(S*ai,-R,S*X)C=d(ao*X+T*R*ai,T*S,-ao*ai+T*R*X)N=A(J,C)W=d(f(1),f(3),f(2))ac=D(W,"m_vel")aU=m(W,aK(au(d(0,1.25,0),J,C,N)))z=d(f(7),f(8),f(9))ak=f(12)av=f(13)aY=f(14)or 0
M=aY*ak
ba=f(10)*aA
am=f(11)*aA
az=h.sin(ba)*ak
aN=h.sin(am)*av
aR=h.cos(am)*av
G=(aR^2-az^2)^.5
ax=d(az,G,aN)aL=i(ax)>0
aX=k or d()if aO()then
ad=m(aU,au(ax,J,C,N))if i(z)>0 then
if i(y(ad,z))<=aP then
u=H
k=ad
p="PITBULL"
else
u=H
k=z
p=bn
end
else
u=H
k=ad
p="MADDOG"
end
elseif i(z)>0 then
u=H
k=z
p=bn
else
k=aX
p=bo
end
aH=D(k,"tgt_vel")aI=D(aH,"tgt_acc")b_=D(aI,"tgt_jer")x=y(k,W)w=I(x)F=y(aH,ac)aV=aB(aI,w)aT=aB(b_,w)ag=aG(A(x,F),o(x,x))Q=g(A(F,ag),B)Q=g(A(w,ag),-B*i(F))be=I(ac)Q=g(A(be,ag),-B*i(F))aW=g(aV,B/2)bc=g(aT,B/6)al=m(Q,m(aW,bc))if i(x)<1000 and o(w,ac)>1 and not(p==bn)and not(p==bo)then
r=1
else
al=g(w,aM)r=3
end
an=aZ(al,J,C,N)aQ=f(15)>0 or aw
if aQ and u then
q(1,aD(-an.b,-E/r,E/r)+ar)q(2,aD(-an.c,-E/r,E/r)+aF)else
aj()end
end
end
else
aj()end
end
