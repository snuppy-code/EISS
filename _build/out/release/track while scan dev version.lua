-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2181 (2515 with comment) chars
az=" y: "
ay=" z: "

v=ipairs
E=math
ab=table.remove
m=debug.log
B=E.sin
J=E.cos
f,V,aa,N,aw,as,au=E,input,output,property,screen,true,false
j,av,ao,am=V.getNumber,aa.setNumber,V.getBool,aa.setBool
y,ax=N.getNumber,N.getBool
abs,cos,sin,floor,atan=f.abs,f.cos,f.sin,f.floor,f.atan
pi=f.pi
X=pi*2
function i(c,e,b)return{c=c or 0,e=e or 0,b=b or 0}end
function x(_,d)return i(_.c+d.c,_.e+d.e,_.b+d.b)end
function aq(_,d)return i(_.c*d.c,_.e*d.e,_.b*d.b)end
function s(_,o)return i(_.c*o,_.e*o,_.b*o)end
function ak(_)return s(_,-1)end
function Q(_,d)return x(_,ak(d))end
function p(_)return f.sqrt(_.c*_.c+_.e*_.e+_.b*_.b)end
function ag(_,o)return s(_,1/o)end
function an(_)return ag(_,p(_))end
function F(_,d)return _.c*d.c+_.e*d.e+_.b*d.b
end
function ah(_,d)return i(_.e*d.b-_.b*d.e,_.b*d.c-_.c*d.b,_.c*d.e-_.e*d.c)end
function ae(Y,I,r)local r=r or 1
return i(f.sin(Y)*f.cos(I)*r,f.cos(Y)*f.cos(I)*r,f.sin(I)*r)end
function at(_,D,K,L)return i(F(D,_),F(K,_),F(L,_))end
function al(_,D,K,L)return x(x(s(D,_.c),s(K,_.e)),s(L,_.b))end
function ar(_,min,max)return f.max(min,f.min(_,max))end
P=y("Merge Dist")ad=y("Cull Time")ap=y("Self ignore dist")l={{}}h={}function onTick()aj=i(j(1),j(2),j(3))M,O,T=j(4),j(5),j(6)G,z,C=J(M),J(O),J(T)S,H,A=B(M),B(O),B(T)R=i(z*C,-H,z*A)W=i(S*A+G*H*C,G*z,-S*C+G*H*A)ac=ah(R,W)m("pos,rot done")l[1].t=ae(j(19)*X,j(20)*X,j(18))l[1].n=al(l[1].t,R,W,ac)l[1].g=x(l[1].n,aj)l[1].U=j(31)for k,a in v(l)do
m("for k:"..k..",type:"..type(a).." ipairs(rawradartargets) do\nlength(v.rel) = "..p(a.n).." v.tsd = "..a.U)if(p(a.n)>10)and not(a.U>0)then
local w=a.g
m("loc x: "..a.t.c..az..a.t.e..ay..a.t.b.."\nrel x: "..a.n.c..az..a.n.e..ay..a.n.b.."\nglo x: "..a.g.c..az..a.g.e..ay..a.g.b)local match=0
for q,Z in v(h)do
m("filindex: "..q.." match: "..match)if not match==0 then
if p(Q(Z.g,w))<=P then
match=q
h[q]={g=w,af=i(),u=0}end
else
if p(Q(Z.g,w))<=P and not(q==ai)then
ab(h,q)end
end
end
if match==0 then
h[#h+1]={g=w,af=i(),u=0}end
end
end
for k,a in v(h)do
h[k].u=a.u+1
if(a.u>=ad)and not(k==ai)then
ab(h,k)elseif a.g.b<=-1 then
h[k].g.b=5
end
end
m(#h.." target files")for k,a in v(h)do
if k<=3 then
m("x: "..a.g.c..az..a.g.e..ay..a.g.b)end
end
end
