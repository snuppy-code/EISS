-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 270 (573 with comment) chars

e=output
c=input
i,g,k,f=c.getBool,e.setBool,c.getNumber,e.setNumber
a=1
b={[1]=0,[2]=1,[3]=8,[4]=2,[5]=7,[6]=3,[7]=6,[8]=4,[9]=5}function onTick()d=i(1)if d and not h then
a=a%(#b)+1
end
h=d
g(b[a],true)_=0
for j=1,(#b-1)do
if not(k(j)==0)then
_=_+1
end
end
f(1,_)end
