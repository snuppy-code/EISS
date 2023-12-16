-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 566 (869 with comment) chars

_=nil
a,h,b,f=math,input.getNumber,output.setNumber,property.getNumber
n=f("Max friendlies")w=f("User number")j=f("Frequency seed")m=f("Encryption seed")o,p=1871759,6393518
g={}a.randomseed(j)v=a.random(o,p)a.randomseed(j)for t=1,n do
k=a.random(-605791,605791)for x,u in ipairs(g)do
while u==k do
k=a.random(-605791,605791)end
end
g[t]=k
end
r=g[w]+v
g,n,j,o,p=_,_,_,_,_
function s(l)return q(l.e/(3.57*m),l.d/(3.81*m),l.c/(4.19*m))end
function q(d,e,c)return{d=d or 0,e=e or 0,c=c or 0}end
function onTick()b(4,r)i=s(q(h(1),h(2),h(3)))b(1,i.d)b(2,i.e)b(3,i.c)end
