-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 270 (602 with comment) chars

d=output
c=input
j,h,f,g=c.getBool,d.setBool,c.getNumber,d.setNumber
b=1
_={[1]=0,[2]=1,[3]=8,[4]=2,[5]=7,[6]=3,[7]=6,[8]=4,[9]=5}function onTick()e=j(1)if e and not i then
b=b%(#_)+1
end
i=e
h(_[b],true)a=0
for k=1,(#_-1)do
if not(f(k)==0)then
a=a+1
end
end
g(1,a)end
