-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 566 (869 with comment) chars

_=nil
a,i,b,d=math,input.getNumber,output.setNumber,property.getNumber
p=d("Max friendlies")s=d("User number")j=d("Frequency seed")m=d("Encryption seed")q,n=1871759,6393518
c={}a.randomseed(j)t=a.random(q,n)a.randomseed(j)for u=1,p do
k=a.random(-605791,605791)for x,r in ipairs(c)do
while r==k do
k=a.random(-605791,605791)end
end
c[u]=k
end
v=c[s]+t
c,p,j,q,n=_,_,_,_,_
function w(h)return o(h.f/(3.57*m),h.e/(3.81*m),h.g/(4.19*m))end
function o(e,f,g)return{e=e or 0,f=f or 0,g=g or 0}end
function onTick()b(4,v)l=w(o(i(1),i(2),i(3)))b(1,l.e)b(2,l.f)b(3,l.g)end
