-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1021 (1326 with comment) chars

n,v,u,L,b,S,P=math,input,output,property,screen,true,false
q,K,R,J=v.getNumber,u.setNumber,v.getBool,u.setBool
pi=n.pi
M=pi*2
G,t,U,T,O,V,D=b.drawText,b.drawLine,b.drawRect,b.drawRectF,b.drawCircle,b.drawClear,b.setColor
function c(d,f,e,j)return{d=d or 0,f=f or 0,e=e or 0,j=j or 0}end
function B(_,a)return c(_.d+a.d,_.f+a.f,_.e+a.e)end
function p(_,o)return c(_.d*o,_.f*o,_.e*o)end
function F(_)return p(_,-1)end
function C(_,a)return B(_,F(a))end
function s(_)return n.sqrt(_.d*_.d+_.f*_.f+_.e*_.e)end
function Q(z,a)if not _ then _={}_[a]={l=0,k=0}elseif not _[a]then _[a]={l=0,k=0}end;_[a].k=z-_[a].l;_[a].l=z;return _[a].k end
function A(w,a)if not _ then _={}_[a]={i=c(),m=c()}elseif not _[a]then _[a]={i=c(),m=c()}end;_[a].m=C(w,_[a].i)_[a].i=w;return _[a].m end
H=23
g=0
y=c()function onTick()y=c(q(1),q(2),q(3))r=p(A(y,"myvel"),60)E=p(A(r,"myacc"),60)g=s(r)g=g
I=s(E)N=I/9.81
end
function onDraw()j,x=b.getWidth(),b.getHeight()D(75,25,60)h=(1-g/H)*(x-1)t(0,x-1,0,h)t(0,h,4,h)G(2,h+2,"Spd:"..n.floor(g+.5))end
