-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1220 (1525 with comment) chars

j,x,A,Q,c,Y,aa=math,input,output,property,screen,true,false
u,Z,W,U=x.getNumber,A.setNumber,x.getBool,A.setBool
pi=j.pi
X=pi*2
r,k,R,P,T,V,D=c.drawText,c.drawLine,c.drawRect,c.drawRectF,c.drawCircle,c.drawClear,c.setColor
function e(h,f,d,b)return{h=h or 0,f=f or 0,d=d or 0,b=b or 0}end
function O(_,a)return e(_.h+a.h,_.f+a.f,_.d+a.d)end
function v(_,s)return e(_.h*s,_.f*s,_.d*s)end
function J(_)return v(_,-1)end
function K(_,a)return O(_,J(a))end
function B(_)return j.sqrt(_.h*_.h+_.f*_.f+_.d*_.d)end
function S(z,a)if not _ then _={}_[a]={t=0,w=0}elseif not _[a]then _[a]={t=0,w=0}end;_[a].w=z-_[a].t;_[a].t=z;return _[a].w end
function y(F,a)if not _ then _={}_[a]={q=e(),p=e()}elseif not _[a]then _[a]={q=e(),p=e()}end;_[a].p=K(F,_[a].q)_[a].q=F;return _[a].p end
H=297
N=4000
M=22
i=0
n=e()function onTick()n=e(u(1),u(2),u(3))E=v(y(n,"myvel"),60)I=v(y(E,"myacc"),60)i=B(E)i=i+i/(i/2)L=B(I)C=L/9.81
end
function onDraw()b,g=c.getWidth(),c.getHeight()D(75,25,60)m=(1-i/H)*(g-1)k(0,g-1,0,m)k(0,m,4,m)r(2,m+2,"Spd:"..j.floor(i+.5))l=(1-n.d/N)*(g-1)k(b-1,g-1,b-1,l)k(b-1,l,b-5,l)G="Alt:"..j.floor(n.d+.5)r(b-#G*5-1,l+2,G)o=(C/M)*34
D(40,4,4,255)k(b/2-1-o,g-1,b/2+o,g-1)r(b/2+o-12,g-7,"G:"..j.floor(C*10+.5)/10)end
