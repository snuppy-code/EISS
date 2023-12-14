-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 566 (869 with comment) chars

a=nil
_,h,f,b=math,input.getNumber,output.setNumber,property.getNumber
n=b("Max friendlies")w=b("User number")i=b("Frequency seed")l=b("Encryption seed")p,o=1871759,6393518
d={}_.randomseed(i)u=_.random(p,o)_.randomseed(i)for r=1,n do
m=_.random(-605791,605791)for x,s in ipairs(d)do
while s==m do
m=_.random(-605791,605791)end
end
d[r]=m
end
t=d[w]+u
d,n,i,p,o=a,a,a,a,a
function v(j)return q(j.g/(3.57*l),j.c/(3.81*l),j.e/(4.19*l))end
function q(c,g,e)return{c=c or 0,g=g or 0,e=e or 0}end
function onTick()f(4,t)k=v(q(h(1),h(2),h(3)))f(1,k.c)f(2,k.g)f(3,k.e)end
