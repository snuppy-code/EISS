-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 270 (635 with comment) chars

e=output
c=input
j,i,f,k=c.getBool,e.setBool,c.getNumber,e.setNumber
a=1
_={[1]=0,[2]=1,[3]=8,[4]=2,[5]=7,[6]=3,[7]=6,[8]=4,[9]=5}function onTick()d=j(1)if d and not g then
a=a%(#_)+1
end
g=d
i(_[a],true)b=0
for h=1,(#_-1)do
if not(f(h)==0)then
b=b+1
end
end
k(1,b)end
