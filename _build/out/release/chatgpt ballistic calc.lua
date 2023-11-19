-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1814 (2148 with comment) chars

b,N,E,K=math,input,output,property
h,O,ax,aw=N.getNumber,E.setNumber,N.getBool,E.setBool
au,ar=K.getNumber,K.getBool
abs,cos,sin,acos,asin,tan,atan=b.abs,b.cos,b.sin,b.acos,b.asin,b.tan,b.atan
pi=b.pi
av=pi*2
function f(c,d,e)return{c=c or 0,d=d or 0,e=e or 0}end
function g(_,n)return f(_.c*n,_.d*n,_.e*n)end
function an(_)return g(_,-1)end
function ao(_,n)return g(_,1/n)end
function m(_,a)return f(_.c+a.c,_.d+a.d,_.e+a.e)end
function l(_,a)return m(_,an(a))end
function F(_)return b.sqrt(_.c*_.c+_.d*_.d+_.e*_.e)end
function k(_)return g(_,1/F(_))end
function ak(_,a)return f(_.d*a.e-_.e*a.d,_.e*a.c-_.c*a.e,_.c*a.d-_.d*a.c)end
function j(_,a)return _.c*a.c+_.d*a.d+_.e*a.e
end
function ap(_,a)return g(k(a),j(_,k(a)))end
function ac(_,a)return l(_,g(k(a),j(_,k(a))))end
function az(_,a,am)return l(_,g(ac(_,a),am or 2))end
function aD(J,u,i)local i=i or 1
return f(b.sin(J)*b.cos(u)*i,b.cos(J)*b.cos(u)*i,b.sin(u)*i)end
function at(_,D,t,q)return f(j(D,_),j(t,_),j(q,_))end
function aC(_,D,t,q)return m(m(g(D,_.c),g(t,_.d)),g(q,_.e))end
function ay(af,min,max)return b.min(max,b.max(af,min))end
function ad(al,X)return acos(j(k(al),k(X)))end
function ab(V,s)return V/s
end
function U(T,W,ae,B)return m(m(T,g(W,B)),g(ae,B*B*.5))end
function aq(R,a)if not _ then _={}_[a]={A=0,x=0}elseif not _[a]then _[a]={A=0,x=0}end;_[a].x=R-_[a].A;_[a].A=R;return _[a].x end
function G(i,a)if not _ then _={}_[a]={w=f(),v=f()}elseif not _[a]then _[a]={w=f(),v=f()}end;_[a].v=l(i,_[a].w)_[a].w=i;return _[a].v end
function onTick()P=f(h(1),h(3),h(2))Q=f(h(7),h(8),h(9))S,M,I=h(4),h(5),h(6)y,z,p=cos(S),cos(M),cos(I)H,r,C=sin(S),sin(M),sin(I)Z=f(z*p,-r,z*C)ai=f(H*C+y*r*p,y*z,-H*p+y*r*C)as=ak(Z,ai)L=G(aB,"tgtvel")ah=G(L,"tgtacc")s=500
ag=ab(F(l(Q,P)),s)aa=U(Q,L,ah,ag)o=l(aa,P)Y=aA(o.d,o.c)aj=ad(o,f(1,0,0))O(1,Y)O(2,aj)end
