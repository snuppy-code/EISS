-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 566 (869 with comment) chars

_=nil
a,k,b,g=math,input.getNumber,output.setNumber,property.getNumber
n=g("Max friendlies")s=g("User number")i=g("Frequency seed")l=g("Encryption seed")p,o=1871759,6393518
f={}a.randomseed(i)v=a.random(p,o)a.randomseed(i)for w=1,n do
h=a.random(-605791,605791)for x,t in ipairs(f)do
while t==h do
h=a.random(-605791,605791)end
end
f[w]=h
end
r=f[s]+v
f,n,i,p,o=_,_,_,_,_
function u(m)return q(m.e/(3.57*l),m.c/(3.81*l),m.d/(4.19*l))end
function q(c,e,d)return{c=c or 0,e=e or 0,d=d or 0}end
function onTick()b(4,r)j=u(q(k(1),k(2),k(3)))b(1,j.c)b(2,j.e)b(3,j.d)end
