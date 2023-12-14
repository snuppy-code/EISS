-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 270 (573 with comment) chars

c=output
d=input
g,h,k,j=d.getBool,c.setBool,d.getNumber,c.setNumber
b=1
_={[1]=0,[2]=1,[3]=8,[4]=2,[5]=7,[6]=3,[7]=6,[8]=4,[9]=5}function onTick()e=g(1)if e and not f then
b=b%(#_)+1
end
f=e
h(_[b],true)a=0
for i=1,(#_-1)do
if not(k(i)==0)then
a=a+1
end
end
j(1,a)end
