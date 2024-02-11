-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 509 (812 with comment) chars

u=ipairs
o=true
t=false
q=output
n=input
r,l,m,j=n.getBool,q.setBool,n.getNumber,q.setNumber
g=1
f=1
e={_={[1]=1,[2]=2,[3]=3,[4]=6,[5]=7,[6]=8},a={[1]=0,[2]=1,[3]=8,[4]=2,[5]=7,[6]=3,[7]=6}}b={_={[1]=4,[2]=5},a={[1]=0,[2]=4,[3]=5}}p,k=t,t
function onTick()i=r(1)if i and not p then
g=g%(#e._+1)+1
end
p=i
l(e.a[g],o)d=0
for v,c in u(e._)do
if not(m(c)==0)then
d=d+1
end
end
j(1,d)s=r(2)if s and not k then
f=f%(#b._+1)+1
end
k=s
l(b.a[f],o)h=0
for v,c in u(b._)do
if not(m(c)==0)then
h=h+1
end
end
j(2,h)end
