-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 566 (869 with comment) chars

a=nil
_,l,g,c=math,input.getNumber,output.setNumber,property.getNumber
o=c("Max friendlies")t=c("User number")h=c("Frequency seed")m=c("Encryption seed")p,q=1871759,6393518
e={}_.randomseed(h)s=_.random(p,q)_.randomseed(h)for v=1,o do
k=_.random(-605791,605791)for x,r in ipairs(e)do
while r==k do
k=_.random(-605791,605791)end
end
e[v]=k
end
w=e[t]+s
e,o,h,p,q=a,a,a,a,a
function u(j)return n(j.f/(3.57*m),j.d/(3.81*m),j.b/(4.19*m))end
function n(d,f,b)return{d=d or 0,f=f or 0,b=b or 0}end
function onTick()g(4,w)i=u(n(l(1),l(2),l(3)))g(1,i.d)g(2,i.f)g(3,i.b)end
