-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 270 (602 with comment) chars

e=output
c=input
g,i,k,f=c.getBool,e.setBool,c.getNumber,e.setNumber
b=1
_={[1]=0,[2]=1,[3]=8,[4]=2,[5]=7,[6]=3,[7]=6,[8]=4,[9]=5}function onTick()d=g(1)if d and not j then
b=b%(#_)+1
end
j=d
i(_[b],true)a=0
for h=1,(#_-1)do
if not(k(h)==0)then
a=a+1
end
end
f(1,a)end
