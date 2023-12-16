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
l=false
j=output
k=input
o,i,n,r=k.getBool,j.setBool,k.getNumber,j.setNumber
e=1
c=1
g={_={[1]=1,[2]=2,[3]=3,[4]=6,[5]=7,[6]=8},b={[1]=0,[2]=1,[3]=8,[4]=2,[5]=7,[6]=3,[7]=6}}d={_={[1]=4,[2]=5},b={[1]=0,[2]=4,[3]=5}}u,q=l,l
function onTick()t=o(1)if t and not u then
e=e%(#g._+1)+1
end
u=t
i(g.b[e],m)a=0
for v,h in p(g._)do
if not(n(h)==0)then
a=a+1
end
end
r(1,a)s=o(2)if s and not q then
c=c%(#d._+1)+1
end
q=s
i(d.b[c],m)f=0
for v,h in p(d._)do
if not(n(h)==0)then
f=f+1
end
end
r(2,f)end
