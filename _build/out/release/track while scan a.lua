-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1879 (2213 with comment) chars
aB="1"
aA=""

J=tonumber
I=string
M=tostring
K=property
f,i,S,G,af,an,az=math,input,output,K,screen,true,false
e,r,av,ai=i.getNumber,S.setNumber,i.getBool,S.setBool
k,aj=G.getNumber,G.getBool
abs,cos,sin,floor,atan=f.abs,f.cos,f.sin,f.floor,f.atan
pi=f.pi
at=pi*2
function g(d,b,c)return{d=d or 0,b=b or 0,c=c or 0}end
function A(_,a)return g(_.d+a.d,_.b+a.b,_.c+a.c)end
function au(_,a)return g(_.d*a.d,_.b*a.b,_.c*a.c)end
function j(_,l)return g(_.d*l,_.b*l,_.c*l)end
function W(_)return j(_,-1)end
function aq(_,a)return A(_,W(a))end
function P(_)return f.sqrt(_.d*_.d+_.b*_.b+_.c*_.c)end
function ac(_,l)return j(_,1/l)end
function ad(_)return ac(_,P(_))end
function B(_,a)return _.d*a.d+_.b*a.b+_.c*a.c
end
function Z(_,a)return g(_.b*a.c-_.c*a.b,_.c*a.d-_.d*a.c,_.d*a.b-_.b*a.d)end
function aw(T,s,m)local m=m or 1
return g(f.sin(T)*f.cos(s)*m,f.cos(T)*f.cos(s)*m,f.sin(s)*m)end
function as(_,q,E,x)return g(B(q,_),B(E,_),B(x,_))end
function ag(_,q,E,x)return A(A(j(q,_.d),j(E,_.b)),j(x,_.c))end
function ao(O,a)if not _ then _={}_[a]={y=0,t=0}elseif not _[a]then _[a]={y=0,t=0}end;_[a].t=O-_[a].y;_[a].y=O;return _[a].t end
function ay(_,min,max)return f.max(min,f.min(_,max))end
v=k("VL Strt Frq")ab=k("VL You Frq")N=k("VL End Frq")V=K.getText("VL User")h=v
ar=k("ML Strt Frq")am=k("ML End Frq")ap={}ax={}ae={}X={}ah={}function onTick()ak=g(e(1),e(3),e(2))U,H,Q=e(e(4)),e(e(5)),e(e(6))z,w,D=cos(U),cos(H),cos(Q)R,C,u=sin(U),sin(H),sin(Q)aa=g(w*D,-C,w*u)Y=g(R*u+z*C*D,z*w,-R*D+z*C*u)al=Z(aa,Y)L=g(e(7),e(8),e(9))if P(L)>0 then
local n={e(10),e(11)}p=aA
if n[1]>=1000000 and n[1]>=1000000 then
F=M(n[1]):sub(2,7)..M(n[2]):sub(2,7)for i=1,#F,3 do
p=p..I.char(F:sub(i,i+3-1))end
else
p="XXXX"
end
X[p]=L
end
o=aA
for i=1,#V do
o=o..I.format("%03d",V:byte(i))end
r(1,J(aB..o:sub(1,6)))r(2,J(aB..o:sub(7,12)))h=h==N and v or h+1
if h==ab then
h=h==N and v or h+1
end
r(3,h)end
