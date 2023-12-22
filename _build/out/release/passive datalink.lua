-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 566 (869 with comment) chars

a=nil
_,h,d,b=math,input.getNumber,output.setNumber,property.getNumber
o=b("Max friendlies")r=b("User number")k=b("Frequency seed")i=b("Encryption seed")p,q=1871759,6393518
g={}_.randomseed(k)t=_.random(p,q)_.randomseed(k)for v=1,o do
j=_.random(-605791,605791)for x,u in ipairs(g)do
while u==j do
j=_.random(-605791,605791)end
end
g[v]=j
end
s=g[r]+t
g,o,k,p,q=a,a,a,a,a
function w(l)return n(l.c/(3.57*i),l.e/(3.81*i),l.f/(4.19*i))end
function n(e,c,f)return{e=e or 0,c=c or 0,f=f or 0}end
function onTick()d(4,s)m=w(n(h(1),h(2),h(3)))d(1,m.e)d(2,m.c)d(3,m.f)end
