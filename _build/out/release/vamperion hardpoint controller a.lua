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
j,h,g,i=c.getBool,e.setBool,c.getNumber,e.setNumber
b=1
a={[1]=0,[2]=1,[3]=8,[4]=2,[5]=7,[6]=3,[7]=6,[8]=4,[9]=5}function onTick()d=j(1)if d and not k then
b=b%(#a)+1
end
k=d
h(a[b],true)_=0
for f=1,(#a-1)do
if not(g(f)==0)then
_=_+1
end
end
i(1,_)end
