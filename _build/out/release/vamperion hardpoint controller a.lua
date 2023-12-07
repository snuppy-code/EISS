-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 270 (602 with comment) chars

e=output
d=input
j,f,g,h=d.getBool,e.setBool,d.getNumber,e.setNumber
a=1
_={[1]=0,[2]=1,[3]=8,[4]=2,[5]=7,[6]=3,[7]=6,[8]=4,[9]=5}function onTick()c=j(1)if c and not i then
a=a%(#_)+1
end
i=c
f(_[a],true)b=0
for k=1,(#_-1)do
if not(g(k)==0)then
b=b+1
end
end
h(1,b)end
