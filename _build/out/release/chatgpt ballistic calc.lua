-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1814 (2148 with comment) chars

b,I,J,P=math,input,output,property
h,E,au,ax=I.getNumber,J.setNumber,I.getBool,J.setBool
aA,ao=P.getNumber,P.getBool
abs,cos,sin,acos,asin,tan,atan=b.abs,b.cos,b.sin,b.acos,b.asin,b.tan,b.atan
pi=b.pi
aq=pi*2
function f(c,d,e)return{c=c or 0,d=d or 0,e=e or 0}end
function g(_,m)return f(_.c*m,_.d*m,_.e*m)end
function Z(_)return g(_,-1)end
function av(_,m)return g(_,1/m)end
function l(_,a)return f(_.c+a.c,_.d+a.d,_.e+a.e)end
function n(_,a)return l(_,Z(a))end
function L(_)return b.sqrt(_.c*_.c+_.d*_.d+_.e*_.e)end
function k(_)return g(_,1/L(_))end
function ah(_,a)return f(_.d*a.e-_.e*a.d,_.e*a.c-_.c*a.e,_.c*a.d-_.d*a.c)end
function j(_,a)return _.c*a.c+_.d*a.d+_.e*a.e
end
function aw(_,a)return g(k(a),j(_,k(a)))end
function al(_,a)return n(_,g(k(a),j(_,k(a))))end
function aD(_,a,an)return n(_,g(al(_,a),an or 2))end
function ap(Q,A,i)local i=i or 1
return f(b.sin(Q)*b.cos(A)*i,b.cos(Q)*b.cos(A)*i,b.sin(A)*i)end
function ay(_,r,o,C)return f(j(r,_),j(o,_),j(C,_))end
function as(_,r,o,C)return l(l(g(r,_.c),g(o,_.d)),g(C,_.e))end
function ar(aa,min,max)return b.min(max,b.max(aa,min))end
function Y(ab,af)return acos(j(k(ab),k(af)))end
function X(U,D)return U/D
end
function W(aj,ad,V,v)return l(l(aj,g(ad,v)),g(V,v*v*.5))end
function aC(M,a)if not _ then _={}_[a]={u=0,z=0}elseif not _[a]then _[a]={u=0,z=0}end;_[a].z=M-_[a].u;_[a].u=M;return _[a].z end
function O(i,a)if not _ then _={}_[a]={y=f(),q=f()}elseif not _[a]then _[a]={y=f(),q=f()}end;_[a].q=n(i,_[a].y)_[a].y=i;return _[a].q end
function onTick()F=f(h(1),h(3),h(2))R=f(h(7),h(8),h(9))N,H,S=h(4),h(5),h(6)B,t,w=cos(N),cos(H),cos(S)K,x,p=sin(N),sin(H),sin(S)ak=f(t*w,-x,t*p)ag=f(K*p+B*x*w,B*t,-K*w+B*x*p)aB=ah(ak,ag)G=O(at,"tgtvel")ai=O(G,"tgtacc")D=500
am=X(L(n(R,F)),D)ae=W(R,G,ai,am)s=n(ae,F)T=az(s.d,s.c)ac=Y(s,f(1,0,0))E(1,T)E(2,ac)end
