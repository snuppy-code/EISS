-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 270 (573 with comment) chars

d=output
e=input
i,f,g,h=e.getBool,d.setBool,e.getNumber,d.setNumber
b=1
_={[1]=0,[2]=1,[3]=8,[4]=2,[5]=7,[6]=3,[7]=6,[8]=4,[9]=5}function onTick()c=i(1)if c and not k then
b=b%(#_)+1
end
k=c
f(_[b],true)a=0
for j=1,(#_-1)do
if not(g(j)==0)then
a=a+1
end
end
h(1,a)end
