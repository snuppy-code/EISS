-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 842 (1145 with comment) chars

s=ipairs
f,a,g,l=math,input.getNumber,output.setNumber,property.getNumber
n=l("Max friendlies")u=l("User number")r=l("Frequency seed")c=l("Encryption seed")y,B=1871759,6393518
f.randomseed(r)z=f.random(y,B)b={}f.randomseed(r)for k=1,n do
q=f.random(-605791,605791)for I,G in s(b)do
while G==q do
q=f.random(-605791,605791)end
end
b[k]=q
end
for v in s(b)do
b[v]=b[v]+z
end
_=1
E=7
d={}t=8
F={}function x(m)return j(m.h/(3.57*c),m.e/(3.81*c),m.i/(4.19*c))end
function C(o)return j(o.h*(3.81*c),o.e*(3.57*c),o.i*(4.19*c))end
function j(e,h,i)return{e=e or 0,h=h or 0,i=i or 0}end
function onTick()D=j(a(1),a(2),a(3))_=(_==n)and 1 or _+1
_=(_==u)and((_==n)and 1 or _+1)or _
A=b[_]for k=t,2,-1 do
d[k]=d[k-1]end
d[1]={J=H,w=_}if#d==t then
F[d[E].w]={L=C(j(a(4),a(5),a(6)))}end
p=x(D)g(1,p.e)g(2,p.h)g(3,p.i)g(4,A)g(5,b[u])K=j(a(7),a(8),a(9))end
