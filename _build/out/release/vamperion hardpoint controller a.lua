-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 270 (573 with comment) chars

c=output
e=input
k,j,g,i=e.getBool,c.setBool,e.getNumber,c.setNumber
a=1
b={[1]=0,[2]=1,[3]=8,[4]=2,[5]=7,[6]=3,[7]=6,[8]=4,[9]=5}function onTick()d=k(1)if d and not h then
a=a%(#b)+1
end
h=d
j(b[a],true)_=0
for f=1,(#b-1)do
if not(g(f)==0)then
_=_+1
end
end
i(1,_)end
