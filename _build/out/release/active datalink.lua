-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 842 (1145 with comment) chars

u=ipairs
i,a,f,l=math,input.getNumber,output.setNumber,property.getNumber
o=l("Max friendlies")t=l("User number")s=l("Frequency seed")c=l("Encryption seed")E,x=1871759,6393518
i.randomseed(s)G=i.random(E,x)b={}i.randomseed(s)for k=1,o do
m=i.random(-605791,605791)for J,C in u(b)do
while C==m do
m=i.random(-605791,605791)end
end
b[k]=m
end
for v in u(b)do
b[v]=b[v]+G
end
_=1
y=7
h={}r=8
B={}function D(p)return d(p.e/(3.57*c),p.j/(3.81*c),p.g/(4.19*c))end
function z(q)return d(q.e*(3.81*c),q.j*(3.57*c),q.g*(4.19*c))end
function d(j,e,g)return{j=j or 0,e=e or 0,g=g or 0}end
function onTick()F=d(a(1),a(2),a(3))_=(_==o)and 1 or _+1
_=(_==t)and((_==o)and 1 or _+1)or _
A=b[_]for k=r,2,-1 do
h[k]=h[k-1]end
h[1]={L=K,w=_}if#h==r then
B[h[y].w]={H=z(d(a(4),a(5),a(6)))}end
n=D(F)f(1,n.j)f(2,n.e)f(3,n.g)f(4,A)f(5,b[t])I=d(a(7),a(8),a(9))end
