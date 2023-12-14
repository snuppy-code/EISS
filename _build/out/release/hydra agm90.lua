-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2118 (2423 with comment) chars

ak=property
T=output
y=math
N=y.sin
A=y.cos
S=T.setNumber
d,X,al,W=y,input,T,ak
h,ad,aJ,aK=X.getNumber,al.setNumber,X.getBool,al.setBool
q,aN=W.getNumber,W.getBool
abs,cos,sin,acos,asin,tan,atan=d.abs,d.cos,d.sin,d.acos,d.asin,d.tan,d.atan
pi=d.pi
aO=pi*2
function f(c,e,b)return{c=c or 0,e=e or 0,b=b or 0}end
function g(_,l)return f(_.c*l,_.e*l,_.b*l)end
function at(_)return g(_,-1)end
function t(_,l)return g(_,1/l)end
function k(_,a)return f(_.c+a.c,_.e+a.e,_.b+a.b)end
function o(_,a)return k(_,at(a))end
function F(_)return d.sqrt(_.c*_.c+_.e*_.e+_.b*_.b)end
function m(_)return g(_,1/F(_))end
function ap(_,a)return f(_.e*a.b-_.b*a.e,_.b*a.c-_.c*a.b,_.c*a.e-_.e*a.c)end
function n(_,a)return _.c*a.c+_.e*a.e+_.b*a.b
end
function aM(_,a)return g(m(a),n(_,m(a)))end
function p(_,a)return o(_,g(m(a),n(_,m(a))))end
function aQ(_,a,az)return o(_,g(p(_,a),az or 2))end
function aR(ah,L,i)local i=i or 1
return f(d.sin(ah)*d.cos(L)*i,d.cos(ah)*d.cos(L)*i,d.sin(L)*i)end
function aw(_,J,C,B)return f(n(J,_),n(C,_),n(B,_))end
function aL(_,J,C,B)return k(k(g(J,_.c),g(C,_.e)),g(B,_.b))end
function K(c,e,b)return d.max(e,d.min(c,b))end
function Q()S(1,ac)S(2,ao)end
function as(ab,a)if not _ then _={}_[a]={I=0,E=0}elseif not _[a]then _[a]={I=0,E=0}end;_[a].E=ab-_[a].I;_[a].I=ab;return _[a].E end
function r(i,a)if not _ then _={}_[a]={x=f(),D=f()}elseif not _[a]then _[a]={x=f(),D=f()}end;_[a].D=o(i,_[a].x)_[a].x=i;return _[a].D end
ac=q("trim yaw")ao=q("trim pitch")M=q("Nav Constant")s=q("Max Control")ay=ak.getBool("dumb launch?")function onTick()if ay then
j={ar=h(4),aC=h(5),aD=h(6),ax=h(7),aq=h(8),aH=h(9)}Y,R,ae=j.ax,j.aq,j.aH
H,w,z=A(Y),A(R),A(ae)aj,G,O=N(Y),N(R),N(ae)U=f(w*z,-G,w*O)af=f(aj*O+H*G*z,H*w,-aj*z+H*G*O)av=ap(U,af)if F(f(h(1),h(2),h(3)))>0 then
am=f(h(1),h(2),h(3))aa=f(j.ar,j.aD,j.aC)u=o(am,aa)v=m(u)V=F(u)aA=r(aa,"myvel")P=r(am,"tgtvel")ai=r(P,"tgtacc")aF=r(ai,"tgtjer")aE=o(P,aA)aG=-as(V,"cv")Z=K(V/aG,-70,70)aB=p(ai,v)aI=p(aF,v)an=k(u,g(aE,Z))aP=p(an,v)au=k(k(t(g(an,M),Z^2),t(g(aB,M),2)),t(g(aI,M),6))ag=aw(au,U,af,av)ad(1,K(ag.c,-s,s)+ac)ad(2,K(ag.b,-s,s)+ao)else
Q()end
else
Q()end
end
