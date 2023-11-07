-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1414 (1748 with comment) chars

C=property
e,G,F,B,S,Y,ai=math,input,output,C,screen,true,false
r,aj,R,V=G.getNumber,F.setNumber,G.getBool,F.setBool
i,ar=B.getNumber,B.getBool
abs,cos,sin,floor,atan=e.abs,e.cos,e.sin,e.floor,e.atan
pi=e.pi
af=pi*2
function f(b,c,d)return{b=b or 0,c=c or 0,d=d or 0}end
function v(_,a)return f(_.b+a.b,_.c+a.c,_.d+a.d)end
function ah(_,a)return f(_.b*a.b,_.c*a.c,_.d*a.d)end
function h(_,g)return f(_.b*g,_.c*g,_.d*g)end
function I(_)return h(_,-1)end
function U(_,a)return v(_,I(a))end
function M(_)return e.sqrt(_.b*_.b+_.c*_.c+_.d*_.d)end
function L(_,g)return h(_,1/g)end
function ae(_)return L(_,M(_))end
function s(_,a)return _.b*a.b+_.c*a.c+_.d*a.d
end
function K(_,a)return f(_.c*a.d-_.d*a.c,_.d*a.b-_.b*a.d,_.b*a.c-_.c*a.b)end
function W(z,k,j)local j=j or 1
return f(e.sin(z)*e.cos(k)*j,e.cos(z)*e.cos(k)*j,e.sin(k)*j)end
function ab(_,n,p,u)return f(s(n,_),s(p,_),s(u,_))end
function ad(_,n,p,u)return v(v(h(n,_.b),h(p,_.c)),h(u,_.d))end
function an(E,a)if not _ then _={}_[a]={t=0,m=0}elseif not _[a]then _[a]={t=0,m=0}end;_[a].m=E-_[a].t;_[a].t=E;return _[a].m end
function ap(_,min,max)return e.max(min,e.min(_,max))end
al=i("VL Strt Frq")Q=i("VL You Frq")am=i("VL End Frq")X=C.getText("VL User")ak=i("ML Strt Frq")aq=i("ML End Frq")O={}aa={}ag={}Z={}function onTick()H,D,y=r(T),r(P),r(ao)x,o,q=cos(H),cos(D),cos(y)A,w,l=sin(H),sin(D),sin(y)N=f(o*q,-w,o*l)J=f(A*l+x*w*q,x*o,-A*q+x*w*l)ac=K(N,J)end
