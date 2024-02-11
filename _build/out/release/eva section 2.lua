-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1220 (1525 with comment) chars

j,F,A,Q,d,U,Y=math,input,output,property,screen,true,false
o,P,T,W=F.getNumber,A.setNumber,F.getBool,A.setBool
pi=j.pi
X=pi*2
t,k,aa,S,Z,R,C=d.drawText,d.drawLine,d.drawRect,d.drawRectF,d.drawCircle,d.drawClear,d.setColor
function e(i,g,c,b)return{i=i or 0,g=g or 0,c=c or 0,b=b or 0}end
function I(_,a)return e(_.i+a.i,_.g+a.g,_.c+a.c)end
function u(_,v)return e(_.i*v,_.g*v,_.c*v)end
function O(_)return u(_,-1)end
function M(_,a)return I(_,O(a))end
function y(_)return j.sqrt(_.i*_.i+_.g*_.g+_.c*_.c)end
function V(G,a)if not _ then _={}_[a]={q=0,p=0}elseif not _[a]then _[a]={q=0,p=0}end;_[a].p=G-_[a].q;_[a].q=G;return _[a].p end
function x(B,a)if not _ then _={}_[a]={w=e(),s=e()}elseif not _[a]then _[a]={w=e(),s=e()}end;_[a].s=M(B,_[a].w)_[a].w=B;return _[a].s end
N=297
K=4000
L=22
f=0
m=e()function onTick()m=e(o(1),o(2),o(3))E=u(x(m,"myvel"),60)H=u(x(E,"myacc"),60)f=y(E)f=f+f/(f/2)J=y(H)z=J/9.81
end
function onDraw()b,h=d.getWidth(),d.getHeight()C(75,25,60)n=(1-f/N)*(h-1)k(0,h-1,0,n)k(0,n,4,n)t(2,n+2,"Spd:"..j.floor(f+.5))l=(1-m.c/K)*(h-1)k(b-1,h-1,b-1,l)k(b-1,l,b-5,l)D="Alt:"..j.floor(m.c+.5)t(b-#D*5-1,l+2,D)r=(z/L)*34
C(40,4,4,255)k(b/2-1-r,h-1,b/2+r,h-1)t(b/2+r-12,h-7,"G:"..j.floor(z*10+.5)/10)end
