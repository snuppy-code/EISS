-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1220 (1525 with comment) chars

j,y,B,X,d,U,aa=math,input,output,property,screen,true,false
w,Y,W,R=y.getNumber,B.setNumber,y.getBool,B.setBool
pi=j.pi
S=pi*2
r,k,Q,V,P,Z,F=d.drawText,d.drawLine,d.drawRect,d.drawRectF,d.drawCircle,d.drawClear,d.setColor
function e(h,i,c,b)return{h=h or 0,i=i or 0,c=c or 0,b=b or 0}end
function K(_,a)return e(_.h+a.h,_.i+a.i,_.c+a.c)end
function s(_,v)return e(_.h*v,_.i*v,_.c*v)end
function O(_)return s(_,-1)end
function M(_,a)return K(_,O(a))end
function A(_)return j.sqrt(_.h*_.h+_.i*_.i+_.c*_.c)end
function T(x,a)if not _ then _={}_[a]={t=0,u=0}elseif not _[a]then _[a]={t=0,u=0}end;_[a].u=x-_[a].t;_[a].t=x;return _[a].u end
function D(C,a)if not _ then _={}_[a]={q=e(),p=e()}elseif not _[a]then _[a]={q=e(),p=e()}end;_[a].p=M(C,_[a].q)_[a].q=C;return _[a].p end
L=297
N=4000
I=22
f=0
l=e()function onTick()l=e(w(1),w(2),w(3))z=s(D(l,"myvel"),60)J=s(D(z,"myacc"),60)f=A(z)f=f+f/(f/2)H=A(J)G=H/9.81
end
function onDraw()b,g=d.getWidth(),d.getHeight()F(75,25,60)m=(1-f/L)*(g-1)k(0,g-1,0,m)k(0,m,4,m)r(2,m+2,"Spd:"..j.floor(f+.5))n=(1-l.c/N)*(g-1)k(b-1,g-1,b-1,n)k(b-1,n,b-5,n)E="Alt:"..j.floor(l.c+.5)r(b-#E*5-1,n+2,E)o=(G/I)*34
F(40,4,4,255)k(b/2-1-o,g-1,b/2+o,g-1)r(b/2+o-12,g-7,"G:"..j.floor(G*10+.5)/10)end
