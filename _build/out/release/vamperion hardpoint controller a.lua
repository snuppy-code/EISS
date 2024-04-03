-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 509 (812 with comment) chars

p=ipairs
m=true
u=false
j=output
k=input
q,r,l,i=k.getBool,j.setBool,k.getNumber,j.setNumber
b=1
a=1
e={_={[1]=1,[2]=2,[3]=3,[4]=6,[5]=7,[6]=8},d={[1]=0,[2]=1,[3]=8,[4]=2,[5]=7,[6]=3,[7]=6}}h={_={[1]=4,[2]=5},d={[1]=0,[2]=4,[3]=5}}t,s=u,u
function onTick()n=q(1)if n and not t then
b=b%(#e._+1)+1
end
t=n
r(e.d[b],m)c=0
for v,g in p(e._)do
if not(l(g)==0)then
c=c+1
end
end
i(1,c)o=q(2)if o and not s then
a=a%(#h._+1)+1
end
s=o
r(h.d[a],m)f=0
for v,g in p(h._)do
if not(l(g)==0)then
f=f+1
end
end
i(2,f)end
