-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 842 (1145 with comment) chars

s=ipairs
i,a,h,l=math,input.getNumber,output.setNumber,property.getNumber
n=l("Max friendlies")v=l("User number")u=l("Frequency seed")c=l("Encryption seed")y,z=1871759,6393518
i.randomseed(u)D=i.random(y,z)b={}i.randomseed(u)for k=1,n do
p=i.random(-605791,605791)for J,G in s(b)do
while G==p do
p=i.random(-605791,605791)end
end
b[k]=p
end
for r in s(b)do
b[r]=b[r]+D
end
_=1
B=7
f={}t=8
E={}function w(o)return j(o.e/(3.57*c),o.g/(3.81*c),o.d/(4.19*c))end
function x(m)return j(m.e*(3.81*c),m.g*(3.57*c),m.d*(4.19*c))end
function j(g,e,d)return{g=g or 0,e=e or 0,d=d or 0}end
function onTick()F=j(a(1),a(2),a(3))_=(_==n)and 1 or _+1
_=(_==v)and((_==n)and 1 or _+1)or _
A=b[_]for k=t,2,-1 do
f[k]=f[k-1]end
f[1]={H=K,C=_}if#f==t then
E[f[B].C]={L=x(j(a(4),a(5),a(6)))}end
q=w(F)h(1,q.g)h(2,q.e)h(3,q.d)h(4,A)h(5,b[v])I=j(a(7),a(8),a(9))end
