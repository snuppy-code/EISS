-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 509 (812 with comment) chars

s=ipairs
l=true
j=false
q=output
k=input
u,i,t,r=k.getBool,q.setBool,k.getNumber,q.setNumber
f=1
g=1
e={_={[1]=1,[2]=2,[3]=3,[4]=6,[5]=7,[6]=8},c={[1]=0,[2]=1,[3]=8,[4]=2,[5]=7,[6]=3,[7]=6}}h={_={[1]=4,[2]=5},c={[1]=0,[2]=4,[3]=5}}m,p=j,j
function onTick()o=u(1)if o and not m then
f=f%(#e._+1)+1
end
m=o
i(e.c[f],l)d=0
for v,b in s(e._)do
if not(t(b)==0)then
d=d+1
end
end
r(1,d)n=u(2)if n and not p then
g=g%(#h._+1)+1
end
p=n
i(h.c[g],l)a=0
for v,b in s(h._)do
if not(t(b)==0)then
a=a+1
end
end
r(2,a)end
