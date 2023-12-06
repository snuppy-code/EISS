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
h,g,i,f=c.getBool,e.setBool,c.getNumber,e.setNumber
_=1
a={[1]=0,[2]=1,[3]=8,[4]=2,[5]=7,[6]=3,[7]=6,[8]=4,[9]=5}function onTick()d=h(1)if d and not k then
_=_%(#a)+1
end
k=d
g(a[_],true)b=0
for j=1,(#a-1)do
if not(i(j)==0)then
b=b+1
end
end
f(1,b)end
