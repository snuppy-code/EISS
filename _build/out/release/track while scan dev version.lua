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

u=ipairs
K=math
W=table.remove
n=debug.log
J=K.sin
F=K.cos
f,U,T,Z,as,ar,an=K,input,output,property,screen,true,false
j,aq,au,am=U.getNumber,T.setNumber,U.getBool,T.setBool
y,av=Z.getNumber,Z.getBool
abs,cos,sin,floor,atan=f.abs,f.cos,f.sin,f.floor,f.atan
pi=f.pi
P=pi*2
function i(d,c,b)return{d=d or 0,c=c or 0,b=b or 0}end
function x(_,e)return i(_.d+e.d,_.c+e.c,_.b+e.b)end
function aw(_,e)return i(_.d*e.d,_.c*e.c,_.b*e.b)end
function s(_,o)return i(_.d*o,_.c*o,_.b*o)end
function ah(_)return s(_,-1)end
function N(_,e)return x(_,ah(e))end
function p(_)return f.sqrt(_.d*_.d+_.c*_.c+_.b*_.b)end
function ag(_,o)return s(_,1/o)end
function ao(_)return ag(_,p(_))end
function D(_,e)return _.d*e.d+_.c*e.c+_.b*e.b
end
function ae(_,e)return i(_.c*e.b-_.b*e.c,_.b*e.d-_.d*e.b,_.d*e.c-_.c*e.d)end
function ad(S,C,r)local r=r or 1
return i(f.sin(S)*f.cos(C)*r,f.cos(S)*f.cos(C)*r,f.sin(C)*r)end
function ap(_,L,H,B)return i(D(L,_),D(H,_),D(B,_))end
function al(_,L,H,B)return x(x(s(L,_.d),s(H,_.c)),s(B,_.b))end
function at(_,min,max)return f.max(min,f.min(_,max))end
ab=y("Merge Dist")ac=y("Cull Time")ax=y("Self ignore dist")l={{}}h={}function onTick()af=i(j(1),j(2),j(3))X,R,V=j(4),j(5),j(6)G,z,E=F(X),F(R),F(V)aa,I,A=J(X),J(R),J(V)Y=i(z*E,-I,z*A)Q=i(aa*A+G*I*E,G*z,-aa*E+G*I*A)ak=ae(Y,Q)n("pos,rot done")l[1].v=ad(j(19)*P,j(20)*P,j(18))l[1].m=al(l[1].v,Y,Q,ak)l[1].g=x(l[1].m,af)l[1].O=j(31)for k,a in u(l)do
n("for k:"..k..",type:"..type(a).." ipairs(rawradartargets) do\nlength(v.rel) = "..p(a.m).." v.tsd = "..a.O)if(p(a.m)>10)and not(a.O>0)then
local w=a.g
n("loc x: "..a.v.d..az..a.v.c..ay..a.v.b.."\nrel x: "..a.m.d..az..a.m.c..ay..a.m.b.."\nglo x: "..a.g.d..az..a.g.c..ay..a.g.b)local match=0
for q,M in u(h)do
n("filindex: "..q.." match: "..match)if not match==0 then
if p(N(M.g,w))<=ab then
match=q
h[q]={g=w,aj=i(),t=0}end
else
if p(N(M.g,w))<=ab and not(q==ai)then
W(h,q)end
end
end
if match==0 then
h[#h+1]={g=w,aj=i(),t=0}end
end
end
for k,a in u(h)do
h[k].t=a.t+1
if(a.t>=ac)and not(k==ai)then
W(h,k)elseif a.g.b<=-1 then
h[k].g.b=5
end
end
n(#h.." target files")for k,a in u(h)do
if k<=3 then
n("x: "..a.g.d..az..a.g.c..ay..a.g.b)end
end
end
