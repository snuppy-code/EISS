-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1814 (2148 with comment) chars

b,L,Q,F=math,input,output,property
h,N,aB,as=L.getNumber,Q.setNumber,L.getBool,Q.setBool
az,au=F.getNumber,F.getBool
abs,cos,sin,acos,asin,tan,atan=b.abs,b.cos,b.sin,b.acos,b.asin,b.tan,b.atan
pi=b.pi
ay=pi*2
function f(c,d,e)return{c=c or 0,d=d or 0,e=e or 0}end
function g(_,l)return f(_.c*l,_.d*l,_.e*l)end
function ak(_)return g(_,-1)end
function aw(_,l)return g(_,1/l)end
function m(_,a)return f(_.c+a.c,_.d+a.d,_.e+a.e)end
function n(_,a)return m(_,ak(a))end
function O(_)return b.sqrt(_.c*_.c+_.d*_.d+_.e*_.e)end
function k(_)return g(_,1/O(_))end
function aa(_,a)return f(_.d*a.e-_.e*a.d,_.e*a.c-_.c*a.e,_.c*a.d-_.d*a.c)end
function j(_,a)return _.c*a.c+_.d*a.d+_.e*a.e
end
function ap(_,a)return g(k(a),j(_,k(a)))end
function ag(_,a)return n(_,g(k(a),j(_,k(a))))end
function ar(_,a,ae)return n(_,g(ag(_,a),ae or 2))end
function aD(K,o,i)local i=i or 1
return f(b.sin(K)*b.cos(o)*i,b.cos(K)*b.cos(o)*i,b.sin(o)*i)end
function ao(_,v,r,t)return f(j(v,_),j(r,_),j(t,_))end
function av(_,v,r,t)return m(m(g(v,_.c),g(r,_.d)),g(t,_.e))end
function at(T,min,max)return b.min(max,b.max(T,min))end
function ah(W,an)return acos(j(k(W),k(an)))end
function af(am,D)return am/D
end
function X(Y,ab,U,w)return m(m(Y,g(ab,w)),g(U,w*w*.5))end
function aC(E,a)if not _ then _={}_[a]={p=0,x=0}elseif not _[a]then _[a]={p=0,x=0}end;_[a].x=E-_[a].p;_[a].p=E;return _[a].x end
function R(i,a)if not _ then _={}_[a]={B=f(),u=f()}elseif not _[a]then _[a]={B=f(),u=f()}end;_[a].u=n(i,_[a].B)_[a].B=i;return _[a].u end
function onTick()M=f(h(1),h(3),h(2))S=f(h(7),h(8),h(9))J,G,H=h(4),h(5),h(6)q,C,A=cos(J),cos(G),cos(H)P,s,y=sin(J),sin(G),sin(H)ai=f(C*A,-s,C*y)al=f(P*y+q*s*A,q*C,-P*A+q*s*y)aq=aa(ai,al)I=R(ax,"tgtvel")Z=R(I,"tgtacc")D=500
ad=af(O(n(S,M)),D)V=X(S,I,Z,ad)z=n(V,M)aj=aA(z.d,z.c)ac=ah(z,f(1,0,0))N(1,aj)N(2,ac)end
