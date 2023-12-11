-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 270 (573 with comment) chars

d=output
c=input
g,f,h,j=c.getBool,d.setBool,c.getNumber,d.setNumber
_=1
a={[1]=0,[2]=1,[3]=8,[4]=2,[5]=7,[6]=3,[7]=6,[8]=4,[9]=5}function onTick()e=g(1)if e and not i then
_=_%(#a)+1
end
i=e
f(a[_],true)b=0
for k=1,(#a-1)do
if not(h(k)==0)then
b=b+1
end
end
j(1,b)end
