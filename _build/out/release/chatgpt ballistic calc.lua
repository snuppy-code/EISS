-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1814 (2148 with comment) chars

b,S,N,E=math,input,output,property
h,K,aA,ap=S.getNumber,N.setNumber,S.getBool,N.setBool
aB,aD=E.getNumber,E.getBool
abs,cos,sin,acos,asin,tan,atan=b.abs,b.cos,b.sin,b.acos,b.asin,b.tan,b.atan
pi=b.pi
aw=pi*2
function f(d,c,e)return{d=d or 0,c=c or 0,e=e or 0}end
function g(_,l)return f(_.d*l,_.c*l,_.e*l)end
function al(_)return g(_,-1)end
function as(_,l)return g(_,1/l)end
function n(_,a)return f(_.d+a.d,_.c+a.c,_.e+a.e)end
function m(_,a)return n(_,al(a))end
function O(_)return b.sqrt(_.d*_.d+_.c*_.c+_.e*_.e)end
function j(_)return g(_,1/O(_))end
function V(_,a)return f(_.c*a.e-_.e*a.c,_.e*a.d-_.d*a.e,_.d*a.c-_.c*a.d)end
function k(_,a)return _.d*a.d+_.c*a.c+_.e*a.e
end
function aq(_,a)return g(j(a),k(_,j(a)))end
function X(_,a)return m(_,g(j(a),k(_,j(a))))end
function ar(_,a,ab)return m(_,g(X(_,a),ab or 2))end
function au(P,q,i)local i=i or 1
return f(b.sin(P)*b.cos(q)*i,b.cos(P)*b.cos(q)*i,b.sin(q)*i)end
function ax(_,o,w,v)return f(k(o,_),k(w,_),k(v,_))end
function at(_,o,w,v)return n(n(g(o,_.d),g(w,_.c)),g(v,_.e))end
function ao(af,min,max)return b.min(max,b.max(af,min))end
function Z(U,ad)return acos(k(j(U),j(ad)))end
function ae(ag,A)return ag/A
end
function ah(ac,aa,Y,z)return n(n(ac,g(aa,z)),g(Y,z*z*.5))end
function aC(G,a)if not _ then _={}_[a]={x=0,r=0}elseif not _[a]then _[a]={x=0,r=0}end;_[a].r=G-_[a].x;_[a].x=G;return _[a].r end
function J(i,a)if not _ then _={}_[a]={t=f(),B=f()}elseif not _[a]then _[a]={t=f(),B=f()}end;_[a].B=m(i,_[a].t)_[a].t=i;return _[a].B end
function onTick()H=f(h(1),h(3),h(2))M=f(h(7),h(8),h(9))Q,I,L=h(4),h(5),h(6)y,C,D=cos(Q),cos(I),cos(L)R,s,p=sin(Q),sin(I),sin(L)W=f(C*D,-s,C*p)am=f(R*p+y*s*D,y*C,-R*D+y*s*p)ay=V(W,am)F=J(av,"tgtvel")T=J(F,"tgtacc")A=500
an=ae(O(m(M,H)),A)ai=ah(M,F,T,an)u=m(ai,H)aj=az(u.c,u.d)ak=Z(u,f(1,0,0))K(1,aj)K(2,ak)end
