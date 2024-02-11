-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 566 (869 with comment) chars

a=nil
_,h,e,c=math,input.getNumber,output.setNumber,property.getNumber
q=c("Max friendlies")v=c("User number")i=c("Frequency seed")m=c("Encryption seed")p,n=1871759,6393518
f={}_.randomseed(i)s=_.random(p,n)_.randomseed(i)for r=1,q do
k=_.random(-605791,605791)for x,u in ipairs(f)do
while u==k do
k=_.random(-605791,605791)end
end
f[r]=k
end
t=f[v]+s
f,q,i,p,n=a,a,a,a,a
function w(j)return o(j.g/(3.57*m),j.b/(3.81*m),j.d/(4.19*m))end
function o(b,g,d)return{b=b or 0,g=g or 0,d=d or 0}end
function onTick()e(4,t)l=w(o(h(1),h(2),h(3)))e(1,l.b)e(2,l.g)e(3,l.d)end
