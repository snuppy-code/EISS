-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 566 (869 with comment) chars

a=nil
_,i,c,g=math,input.getNumber,output.setNumber,property.getNumber
n=g("Max friendlies")s=g("User number")k=g("Frequency seed")h=g("Encryption seed")p,q=1871759,6393518
f={}_.randomseed(k)t=_.random(p,q)_.randomseed(k)for w=1,n do
l=_.random(-605791,605791)for x,v in ipairs(f)do
while v==l do
l=_.random(-605791,605791)end
end
f[w]=l
end
u=f[s]+t
f,n,k,p,q=a,a,a,a,a
function r(j)return o(j.b/(3.57*h),j.e/(3.81*h),j.d/(4.19*h))end
function o(e,b,d)return{e=e or 0,b=b or 0,d=d or 0}end
function onTick()c(4,u)m=r(o(i(1),i(2),i(3)))c(1,m.e)c(2,m.b)c(3,m.d)end
