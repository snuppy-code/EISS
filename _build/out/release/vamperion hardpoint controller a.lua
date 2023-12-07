-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 270 (602 with comment) chars

d=output
e=input
g,j,h,k=e.getBool,d.setBool,e.getNumber,d.setNumber
b=1
a={[1]=0,[2]=1,[3]=8,[4]=2,[5]=7,[6]=3,[7]=6,[8]=4,[9]=5}function onTick()c=g(1)if c and not f then
b=b%(#a)+1
end
f=c
j(a[b],true)_=0
for i=1,(#a-1)do
if not(h(i)==0)then
_=_+1
end
end
k(1,_)end
