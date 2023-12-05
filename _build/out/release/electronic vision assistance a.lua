-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 640 (1005 with comment) chars

g=screen
a,m,n,l,_,w,z=math,input,output,property,g,true,false
c,y,v,x=m.getNumber,n.setNumber,m.getBool,n.setBool
A,t=l.getNumber,l.getBool
abs,cos,sin,floor,atan=a.abs,a.cos,a.sin,a.floor,a.atan
pi=a.pi
E=pi*2
_=g
B,D,C,F,h,s,u,k=_.drawText,_.drawTextBox,_.drawLine,_.drawRect,_.drawRectF,_.drawCircle,_.drawClear,_.setColor
function r(d,f,e)return{d=d or 0,f=f or 0,e=e or 0}end
function o(b)return a.sqrt(b.d*b.d+b.f*b.f+b.e*b.e)end
function onTick()q=r(c(23),c(24),c(25))p=c(28)==1
end
function onDraw()i,j=g.getWidth(),g.getHeight()if p then
k(255,0,0)h(0,0,1,j)h(i-1,0,1,j)end
if o(q)>0 then
k(80,13,1)h(0,0,i,3)h(0,j-3,i,3)end
end
