--by judgementalbird on discord
am=property
ae=output
O=math
H=O.sin
T=O.cos
t=ae.setNumber
b,al,ag,X=O,input,ae,am
g,M,aY,aX=al.getNumber,ag.setNumber,al.getBool,ag.setBool
n,aT=X.getNumber,X.getBool
abs,cos,sin,acos,asin,tan,atan=b.abs,b.cos,b.sin,b.acos,b.asin,b.tan,b.atan
pi=b.pi
ab=pi*2
function f(c,e,d)return{c=c or 0,e=e or 0,d=d or 0}end
function h(_,o)return f(_.c*o,_.e*o,_.d*o)end
function az(_)return h(_,-1)end
function y(_,o)return h(_,1/o)end
function j(_,a)return f(_.c+a.c,_.e+a.e,_.d+a.d)end
function k(_,a)return j(_,az(a))end
function q(_)return b.sqrt(_.c*_.c+_.e*_.e+_.d*_.d)end
function m(_)return h(_,1/q(_))end
function aO(_,a)return f(_.e*a.d-_.d*a.e,_.d*a.c-_.c*a.d,_.c*a.e-_.e*a.c)end
function l(_,a)return _.c*a.c+_.e*a.e+_.d*a.d
end
function aV(_,a)return h(m(a),l(_,m(a)))end
function p(_,a)return k(_,h(m(a),l(_,m(a))))end
function aU(_,a,aC)return k(_,h(p(_,a),aC or 2))end
function aW(ao,P,i)local i=i or 1
return f(b.sin(ao)*b.cos(P)*i,b.cos(ao)*b.cos(P)*i,b.sin(P)*i)end
function ay(_,Q,B,R)return f(l(Q,_),l(B,_),l(R,_))end
function aM(_,Q,B,R)return j(j(h(Q,_.c),h(B,_.e)),h(R,_.d))end
function A(c,e,d)return b.max(e,b.min(c,d))end
function ac()t(1,aj)t(2,Y)end
function aA()t(1,0)t(2,.1)end
function aw(au,a)if not _ then _={}_[a]={N=0,L=0}elseif not _[a]then _[a]={N=0,L=0}end;_[a].L=au-_[a].N;_[a].N=au;return _[a].L end
function s(i,a)if not _ then _={}_[a]={z=f(),I=f()}elseif not _[a]then _[a]={z=f(),I=f()}end;_[a].I=k(i,_[a].z)_[a].z=i;return _[a].I end
aj=n("trim yaw")Y=n("trim pitch")w=n("Nav Constant")r=n("Max Control")aK=not am.getBool("dumb launch?")S=0
aL=n("Used freq")function onTick()M(3,aL)aD=f(g(4),g(5),g(6))if aK then
if g(17)==1 then
if S<10 then
S=S+1
ac()else
J=f(g(1),g(3),g(2))Z,aa,av=g(4),g(5),g(6)u,C,v=T(Z),T(aa),T(av)ar,F,K=H(Z),H(aa),H(av)x=f(C*v,-F,C*K)E=f(ar*K+u*F*v,u*C,-ar*v+u*F*K)at=aO(x,E)aH=g(7)*ab
an=g(8)*ab
aJ=g(9)ad=g(10)ap=b.sin(aH)*aJ
aI=b.sin(an)*ad
aS=b.cos(an)*ad
aN=(aS^2-ap^2)^.5
W=f(ap,aN,aI)aF=q(W)>0
if aF then
ak=j(J,aM(W,x,E,at))if q(k(aD,ak))<=35 then
aA()else
as=ak
G=k(as,J)D=m(G)V=q(G)aG=s(J,"myvel")U=s(as,"tgtvel")ai=s(U,"tgtacc")aE=s(ai,"tgtjer")aQ=k(U,aG)aB=-aw(V,"cv")aq=A(V/aB,-70,70)aR=p(ai,D)ax=p(aE,D)ah=j(G,h(aQ,aq))aZ=p(ah,D)aP=j(j(y(h(ah,w),aq^2),y(h(aR,w),2)),y(h(ax,w),6))af=ay(aP,x,E,at)M(1,A(-af.c,-r,r)+aj)M(2,A(-af.d,-r,r)+Y)end
end
end
end
else
ac()end
end
