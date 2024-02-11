-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1220 (1525 with comment) chars

j,x,F,Q,d,V,T=math,input,output,property,screen,true,false
u,Y,P,S=x.getNumber,F.setNumber,x.getBool,F.setBool
pi=j.pi
R=pi*2
q,k,aa,X,U,W,y=d.drawText,d.drawLine,d.drawRect,d.drawRectF,d.drawCircle,d.drawClear,d.setColor
function e(i,f,c,b)return{i=i or 0,f=f or 0,c=c or 0,b=b or 0}end
function I(_,a)return e(_.i+a.i,_.f+a.f,_.c+a.c)end
function p(_,w)return e(_.i*w,_.f*w,_.c*w)end
function H(_)return p(_,-1)end
function L(_,a)return I(_,H(a))end
function B(_)return j.sqrt(_.i*_.i+_.f*_.f+_.c*_.c)end
function Z(A,a)if not _ then _={}_[a]={o=0,v=0}elseif not _[a]then _[a]={o=0,v=0}end;_[a].v=A-_[a].o;_[a].o=A;return _[a].v end
function C(G,a)if not _ then _={}_[a]={s=e(),t=e()}elseif not _[a]then _[a]={s=e(),t=e()}end;_[a].t=L(G,_[a].s)_[a].s=G;return _[a].t end
N=297
K=4000
J=22
h=0
m=e()function onTick()m=e(u(1),u(2),u(3))z=p(C(m,"myvel"),60)M=p(C(z,"myacc"),60)h=B(z)h=h+h/(h/2)O=B(M)E=O/9.81
end
function onDraw()b,g=d.getWidth(),d.getHeight()y(75,25,60)n=(1-h/N)*(g-1)k(0,g-1,0,n)k(0,n,4,n)q(2,n+2,"Spd:"..j.floor(h+.5))l=(1-m.c/K)*(g-1)k(b-1,g-1,b-1,l)k(b-1,l,b-5,l)D="Alt:"..j.floor(m.c+.5)q(b-#D*5-1,l+2,D)r=(E/J)*34
y(40,4,4,255)k(b/2-1-r,g-1,b/2+r,g-1)q(b/2+r-12,g-7,"G:"..j.floor(E*10+.5)/10)end
