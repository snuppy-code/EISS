-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 509 (812 with comment) chars

l=ipairs
k=true
j=false
r=output
t=input
o,m,i,s=t.getBool,r.setBool,t.getNumber,r.setNumber
d=1
f=1
b={_={[1]=1,[2]=2,[3]=3,[4]=6,[5]=7,[6]=8},g={[1]=0,[2]=1,[3]=8,[4]=2,[5]=7,[6]=3,[7]=6}}h={_={[1]=4,[2]=5},g={[1]=0,[2]=4,[3]=5}}n,u=j,j
function onTick()p=o(1)if p and not n then
d=d%(#b._+1)+1
end
n=p
m(b.g[d],k)a=0
for v,e in l(b._)do
if not(i(e)==0)then
a=a+1
end
end
s(1,a)q=o(2)if q and not u then
f=f%(#h._+1)+1
end
u=q
m(h.g[f],k)c=0
for v,e in l(h._)do
if not(i(e)==0)then
c=c+1
end
end
s(2,c)end
