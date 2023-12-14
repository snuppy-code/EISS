-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1220 (1525 with comment) chars

j,F,G,Z,d,U,W=math,input,output,property,screen,true,false
w,X,P,T=F.getNumber,G.setNumber,F.getBool,G.setBool
pi=j.pi
Y=pi*2
t,k,aa,Q,S,R,z=d.drawText,d.drawLine,d.drawRect,d.drawRectF,d.drawCircle,d.drawClear,d.setColor
function e(i,h,c,b)return{i=i or 0,h=h or 0,c=c or 0,b=b or 0}end
function M(_,a)return e(_.i+a.i,_.h+a.h,_.c+a.c)end
function p(_,r)return e(_.i*r,_.h*r,_.c*r)end
function K(_)return p(_,-1)end
function N(_,a)return M(_,K(a))end
function x(_)return j.sqrt(_.i*_.i+_.h*_.h+_.c*_.c)end
function V(A,a)if not _ then _={}_[a]={s=0,v=0}elseif not _[a]then _[a]={s=0,v=0}end;_[a].v=A-_[a].s;_[a].s=A;return _[a].v end
function B(y,a)if not _ then _={}_[a]={q=e(),o=e()}elseif not _[a]then _[a]={q=e(),o=e()}end;_[a].o=N(y,_[a].q)_[a].q=y;return _[a].o end
I=297
J=4000
L=22
f=0
m=e()function onTick()m=e(w(1),w(2),w(3))D=p(B(m,"myvel"),60)H=p(B(D,"myacc"),60)f=x(D)f=f+f/(f/2)O=x(H)C=O/9.81
end
function onDraw()b,g=d.getWidth(),d.getHeight()z(75,25,60)l=(1-f/I)*(g-1)k(0,g-1,0,l)k(0,l,4,l)t(2,l+2,"Spd:"..j.floor(f+.5))n=(1-m.c/J)*(g-1)k(b-1,g-1,b-1,n)k(b-1,n,b-5,n)E="Alt:"..j.floor(m.c+.5)t(b-#E*5-1,n+2,E)u=(C/L)*34
z(40,4,4,255)k(b/2-1-u,g-1,b/2+u,g-1)t(b/2+u-12,g-7,"G:"..j.floor(C*10+.5)/10)end
