-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 842 (1145 with comment) chars

v=ipairs
g,a,h,k=math,input.getNumber,output.setNumber,property.getNumber
n=k("Max friendlies")s=k("User number")u=k("Frequency seed")c=k("Encryption seed")B,F=1871759,6393518
g.randomseed(u)E=g.random(B,F)b={}g.randomseed(u)for l=1,n do
o=g.random(-605791,605791)for J,G in v(b)do
while G==o do
o=g.random(-605791,605791)end
end
b[l]=o
end
for t in v(b)do
b[t]=b[t]+E
end
_=1
y=7
d={}r=8
w={}function D(p)return e(p.j/(3.57*c),p.i/(3.81*c),p.f/(4.19*c))end
function z(q)return e(q.j*(3.81*c),q.i*(3.57*c),q.f*(4.19*c))end
function e(i,j,f)return{i=i or 0,j=j or 0,f=f or 0}end
function onTick()x=e(a(1),a(2),a(3))_=(_==n)and 1 or _+1
_=(_==s)and((_==n)and 1 or _+1)or _
A=b[_]for l=r,2,-1 do
d[l]=d[l-1]end
d[1]={I=L,C=_}if#d==r then
w[d[y].C]={H=z(e(a(4),a(5),a(6)))}end
m=D(x)h(1,m.i)h(2,m.j)h(3,m.f)h(4,A)h(5,b[s])K=e(a(7),a(8),a(9))end
