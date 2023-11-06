-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1367 (1701 with comment) chars

D=property
e,C,F,H,Z,U,ae=math,input,output,D,screen,true,false
m,ai,P,S=C.getNumber,F.setNumber,C.getBool,F.setBool
o,Y=H.getNumber,H.getBool
abs,cos,sin,floor,atan=e.abs,e.cos,e.sin,e.floor,e.atan
pi=e.pi
R=pi*2
function f(c,d,b)return{c=c or 0,d=d or 0,b=b or 0}end
function p(_,a)return f(_.c+a.c,_.d+a.d,_.b+a.b)end
function am(_,a)return f(_.c*a.c,_.d*a.d,_.b*a.b)end
function h(_,g)return f(_.c*g,_.d*g,_.b*g)end
function N(_)return h(_,-1)end
function ab(_,a)return p(_,N(a))end
function J(_)return e.sqrt(_.c*_.c+_.d*_.d+_.b*_.b)end
function L(_,g)return h(_,1/g)end
function Q(_)return L(_,J(_))end
function s(_,a)return _.c*a.c+_.d*a.d+_.b*a.b
end
function I(_,a)return f(_.d*a.b-_.b*a.d,_.b*a.c-_.c*a.b,_.c*a.d-_.d*a.c)end
function W(z,j,i)local i=i or 1
return f(e.sin(z)*e.cos(j)*i,e.cos(z)*e.cos(j)*i,e.sin(j)*i)end
function ag(_,q,w,r)return f(s(q,_),s(w,_),s(r,_))end
function aj(_,q,w,r)return p(p(h(q,_.c),h(w,_.d)),h(r,_.b))end
function af(G,a)if not _ then _={}_[a]={v=0,u=0}elseif not _[a]then _[a]={v=0,u=0}end;_[a].u=G-_[a].v;_[a].v=G;return _[a].u end
function T(_,min,max)return e.max(min,e.min(_,max))end
O=o("VL Strt Frq")an=o("VL You Frq")ac=o("VL End Frq")V=D.getText("VL User")ak={}X={}function onTick()E,y,A=m(ad),m(aa),m(ah)k,t,l=cos(E),cos(y),cos(A)B,x,n=sin(E),sin(y),sin(A)M=f(t*l,-x,t*n)K=f(B*n+k*x*l,k*t,-B*l+k*x*n)al=I(M,K)end
