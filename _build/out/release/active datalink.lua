-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 842 (1145 with comment) chars

r=ipairs
i,a,j,k=math,input.getNumber,output.setNumber,property.getNumber
o=k("Max friendlies")s=k("User number")t=k("Frequency seed")c=k("Encryption seed")F,D=1871759,6393518
i.randomseed(t)y=i.random(F,D)b={}i.randomseed(t)for l=1,o do
m=i.random(-605791,605791)for I,z in r(b)do
while z==m do
m=i.random(-605791,605791)end
end
b[l]=m
end
for v in r(b)do
b[v]=b[v]+y
end
_=1
C=7
d={}u=8
A={}function E(p)return h(p.f/(3.57*c),p.e/(3.81*c),p.g/(4.19*c))end
function G(q)return h(q.f*(3.81*c),q.e*(3.57*c),q.g*(4.19*c))end
function h(e,f,g)return{e=e or 0,f=f or 0,g=g or 0}end
function onTick()w=h(a(1),a(2),a(3))_=(_==o)and 1 or _+1
_=(_==s)and((_==o)and 1 or _+1)or _
x=b[_]for l=u,2,-1 do
d[l]=d[l-1]end
d[1]={H=L,B=_}if#d==u then
A[d[C].B]={J=G(h(a(4),a(5),a(6)))}end
n=E(w)j(1,n.e)j(2,n.f)j(3,n.g)j(4,x)j(5,b[s])K=h(a(7),a(8),a(9))end
