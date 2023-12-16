-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 509 (812 with comment) chars

m=ipairs
l=true
o=false
u=output
t=input
q,j,s,n=t.getBool,u.setBool,t.getNumber,u.setNumber
b=1
a=1
g={_={[1]=1,[2]=2,[3]=3,[4]=6,[5]=7,[6]=8},f={[1]=0,[2]=1,[3]=8,[4]=2,[5]=7,[6]=3,[7]=6}}h={_={[1]=4,[2]=5},f={[1]=0,[2]=4,[3]=5}}r,k=o,o
function onTick()p=q(1)if p and not r then
b=b%(#g._+1)+1
end
r=p
j(g.f[b],l)e=0
for v,d in m(g._)do
if not(s(d)==0)then
e=e+1
end
end
n(1,e)i=q(2)if i and not k then
a=a%(#h._+1)+1
end
k=i
j(h.f[a],l)c=0
for v,d in m(h._)do
if not(s(d)==0)then
c=c+1
end
end
n(2,c)end
