-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 270 (602 with comment) chars

c=output
e=input
j,f,k,i=e.getBool,c.setBool,e.getNumber,c.setNumber
b=1
a={[1]=0,[2]=1,[3]=8,[4]=2,[5]=7,[6]=3,[7]=6,[8]=4,[9]=5}function onTick()d=j(1)if d and not h then
b=b%(#a)+1
end
h=d
f(a[b],true)_=0
for g=1,(#a-1)do
if not(k(g)==0)then
_=_+1
end
end
i(1,_)end
