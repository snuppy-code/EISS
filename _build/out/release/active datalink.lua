-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 842 (1145 with comment) chars

u=ipairs
g,a,i,k=math,input.getNumber,output.setNumber,property.getNumber
o=k("Max friendlies")s=k("User number")t=k("Frequency seed")c=k("Encryption seed")G,B=1871759,6393518
g.randomseed(t)w=g.random(G,B)b={}g.randomseed(t)for l=1,o do
q=g.random(-605791,605791)for J,F in u(b)do
while F==q do
q=g.random(-605791,605791)end
end
b[l]=q
end
for r in u(b)do
b[r]=b[r]+w
end
_=1
C=7
j={}v=8
A={}function z(p)return h(p.f/(3.57*c),p.d/(3.81*c),p.e/(4.19*c))end
function D(m)return h(m.f*(3.81*c),m.d*(3.57*c),m.e*(4.19*c))end
function h(d,f,e)return{d=d or 0,f=f or 0,e=e or 0}end
function onTick()E=h(a(1),a(2),a(3))_=(_==o)and 1 or _+1
_=(_==s)and((_==o)and 1 or _+1)or _
x=b[_]for l=v,2,-1 do
j[l]=j[l-1]end
j[1]={H=L,y=_}if#j==v then
A[j[C].y]={K=D(h(a(4),a(5),a(6)))}end
n=z(E)i(1,n.d)i(2,n.f)i(3,n.e)i(4,x)i(5,b[s])I=h(a(7),a(8),a(9))end
