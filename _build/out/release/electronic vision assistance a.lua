-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 640 (972 with comment) chars

c=screen
a,m,n,l,_,x,B=math,input,output,property,c,true,false
h,v,D,w=m.getNumber,n.setNumber,m.getBool,n.setBool
z,E=l.getNumber,l.getBool
abs,cos,sin,floor,atan=a.abs,a.cos,a.sin,a.floor,a.atan
pi=a.pi
A=pi*2
_=c
F,u,t,s,e,C,y,k=_.drawText,_.drawTextBox,_.drawLine,_.drawRect,_.drawRectF,_.drawCircle,_.drawClear,_.setColor
function r(d,f,g)return{d=d or 0,f=f or 0,g=g or 0}end
function o(b)return a.sqrt(b.d*b.d+b.f*b.f+b.g*b.g)end
function onTick()q=r(h(23),h(24),h(25))p=h(28)==1
end
function onDraw()i,j=c.getWidth(),c.getHeight()if p then
k(255,0,0)e(0,0,1,j)e(i-1,0,1,j)end
if o(q)>0 then
k(80,13,1)e(0,0,i,3)e(0,j-3,i,3)end
end
