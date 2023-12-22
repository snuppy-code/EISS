-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 842 (1145 with comment) chars

t=ipairs
h,a,i,l=math,input.getNumber,output.setNumber,property.getNumber
p=l("Max friendlies")v=l("User number")r=l("Frequency seed")c=l("Encryption seed")E,B=1871759,6393518
h.randomseed(r)D=h.random(E,B)b={}h.randomseed(r)for k=1,p do
q=h.random(-605791,605791)for K,C in t(b)do
while C==q do
q=h.random(-605791,605791)end
end
b[k]=q
end
for u in t(b)do
b[u]=b[u]+D
end
_=1
G=7
e={}s=8
A={}function z(o)return d(o.f/(3.57*c),o.j/(3.81*c),o.g/(4.19*c))end
function w(m)return d(m.f*(3.81*c),m.j*(3.57*c),m.g*(4.19*c))end
function d(j,f,g)return{j=j or 0,f=f or 0,g=g or 0}end
function onTick()y=d(a(1),a(2),a(3))_=(_==p)and 1 or _+1
_=(_==v)and((_==p)and 1 or _+1)or _
F=b[_]for k=s,2,-1 do
e[k]=e[k-1]end
e[1]={J=L,x=_}if#e==s then
A[e[G].x]={H=w(d(a(4),a(5),a(6)))}end
n=z(y)i(1,n.j)i(2,n.f)i(3,n.g)i(4,F)i(5,b[v])I=d(a(7),a(8),a(9))end
