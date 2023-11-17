-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1814 (2148 with comment) chars

b,G,Q,S=math,input,output,property
h,P,ap,aD=G.getNumber,Q.setNumber,G.getBool,Q.setBool
aB,ax=S.getNumber,S.getBool
abs,cos,sin,acos,asin,tan,atan=b.abs,b.cos,b.sin,b.acos,b.asin,b.tan,b.atan
pi=b.pi
at=pi*2
function f(d,c,e)return{d=d or 0,c=c or 0,e=e or 0}end
function g(_,m)return f(_.d*m,_.c*m,_.e*m)end
function ah(_)return g(_,-1)end
function au(_,m)return g(_,1/m)end
function n(_,a)return f(_.d+a.d,_.c+a.c,_.e+a.e)end
function l(_,a)return n(_,ah(a))end
function M(_)return b.sqrt(_.d*_.d+_.c*_.c+_.e*_.e)end
function k(_)return g(_,1/M(_))end
function ai(_,a)return f(_.c*a.e-_.e*a.c,_.e*a.d-_.d*a.e,_.d*a.c-_.c*a.d)end
function j(_,a)return _.d*a.d+_.c*a.c+_.e*a.e
end
function ar(_,a)return g(k(a),j(_,k(a)))end
function ag(_,a)return l(_,g(k(a),j(_,k(a))))end
function aw(_,a,V)return l(_,g(ag(_,a),V or 2))end
function aC(F,v,i)local i=i or 1
return f(b.sin(F)*b.cos(v)*i,b.cos(F)*b.cos(v)*i,b.sin(v)*i)end
function az(_,t,C,q)return f(j(t,_),j(C,_),j(q,_))end
function aq(_,t,C,q)return n(n(g(t,_.d),g(C,_.c)),g(q,_.e))end
function av(ae,min,max)return b.min(max,b.max(ae,min))end
function aj(al,T)return acos(j(k(al),k(T)))end
function ac(ab,p)return ab/p
end
function Z(an,ad,U,y)return n(n(an,g(ad,y)),g(U,y*y*.5))end
function ay(H,a)if not _ then _={}_[a]={s=0,D=0}elseif not _[a]then _[a]={s=0,D=0}end;_[a].D=H-_[a].s;_[a].s=H;return _[a].D end
function E(i,a)if not _ then _={}_[a]={o=f(),w=f()}elseif not _[a]then _[a]={o=f(),w=f()}end;_[a].w=l(i,_[a].o)_[a].o=i;return _[a].w end
function onTick()K=f(h(1),h(3),h(2))L=f(h(7),h(8),h(9))R,O,N=h(4),h(5),h(6)u,z,x=cos(R),cos(O),cos(N)J,B,r=sin(R),sin(O),sin(N)X=f(z*x,-B,z*r)aa=f(J*r+u*B*x,u*z,-J*x+u*B*r)as=ai(X,aa)I=E(ao,"tgtvel")am=E(I,"tgtacc")p=500
Y=ac(M(l(L,K)),p)ak=Z(L,I,am,Y)A=l(ak,K)W=aA(A.c,A.d)af=aj(A,f(1,0,0))P(1,W)P(2,af)end
