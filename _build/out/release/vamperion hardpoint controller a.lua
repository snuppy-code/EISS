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
j,f,i,g=c.getBool,d.setBool,c.getNumber,d.setNumber
a=1
b={[1]=0,[2]=1,[3]=8,[4]=2,[5]=7,[6]=3,[7]=6,[8]=4,[9]=5}function onTick()e=j(1)if e and not k then
a=a%(#b)+1
end
k=e
f(b[a],true)_=0
for h=1,(#b-1)do
if not(i(h)==0)then
_=_+1
end
end
g(1,_)end
