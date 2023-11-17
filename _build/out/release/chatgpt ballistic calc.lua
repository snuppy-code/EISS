-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1814 (2148 with comment) chars

b,P,H,E=math,input,output,property
h,K,ar,au=P.getNumber,H.setNumber,P.getBool,H.setBool
at,ay=E.getNumber,E.getBool
abs,cos,sin,acos,asin,tan,atan=b.abs,b.cos,b.sin,b.acos,b.asin,b.tan,b.atan
pi=b.pi
aD=pi*2
function f(d,c,e)return{d=d or 0,c=c or 0,e=e or 0}end
function g(_,l)return f(_.d*l,_.c*l,_.e*l)end
function ab(_)return g(_,-1)end
function aC(_,l)return g(_,1/l)end
function n(_,a)return f(_.d+a.d,_.c+a.c,_.e+a.e)end
function m(_,a)return n(_,ab(a))end
function G(_)return b.sqrt(_.d*_.d+_.c*_.c+_.e*_.e)end
function j(_)return g(_,1/G(_))end
function ag(_,a)return f(_.c*a.e-_.e*a.c,_.e*a.d-_.d*a.e,_.d*a.c-_.c*a.d)end
function k(_,a)return _.d*a.d+_.c*a.c+_.e*a.e
end
function ap(_,a)return g(j(a),k(_,j(a)))end
function ak(_,a)return m(_,g(j(a),k(_,j(a))))end
function aB(_,a,am)return m(_,g(ak(_,a),am or 2))end
function ax(R,u,i)local i=i or 1
return f(b.sin(R)*b.cos(u)*i,b.cos(R)*b.cos(u)*i,b.sin(u)*i)end
function aq(_,q,v,A)return f(k(q,_),k(v,_),k(A,_))end
function aA(_,q,v,A)return n(n(g(q,_.d),g(v,_.c)),g(A,_.e))end
function az(ad,min,max)return b.min(max,b.max(ad,min))end
function ac(aj,an)return acos(k(j(aj),j(an)))end
function V(ae,w)return ae/w
end
function al(aa,af,Y,C)return n(n(aa,g(af,C)),g(Y,C*C*.5))end
function as(J,a)if not _ then _={}_[a]={o=0,D=0}elseif not _[a]then _[a]={o=0,D=0}end;_[a].D=J-_[a].o;_[a].o=J;return _[a].D end
function I(i,a)if not _ then _={}_[a]={s=f(),B=f()}elseif not _[a]then _[a]={s=f(),B=f()}end;_[a].B=m(i,_[a].s)_[a].s=i;return _[a].B end
function onTick()S=f(h(1),h(3),h(2))L=f(h(7),h(8),h(9))O,N,F=h(4),h(5),h(6)t,y,r=cos(O),cos(N),cos(F)M,p,z=sin(O),sin(N),sin(F)Z=f(y*r,-p,y*z)T=f(M*z+t*p*r,t*y,-M*r+t*p*z)aw=ag(Z,T)Q=I(av,"tgtvel")U=I(Q,"tgtacc")w=500
W=V(G(m(L,S)),w)ai=al(L,Q,U,W)x=m(ai,S)ah=ao(x.c,x.d)X=ac(x,f(1,0,0))K(1,ah)K(2,X)end
