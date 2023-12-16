-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1021 (1326 with comment) chars

m,z,y,N,b,Q,P=math,input,output,property,screen,true,false
j,S,U,R=z.getNumber,y.setNumber,z.getBool,y.setBool
pi=m.pi
O=pi*2
E,A,J,T,K,M,C=b.drawText,b.drawLine,b.drawRect,b.drawRectF,b.drawCircle,b.drawClear,b.setColor
function c(f,d,e,q)return{f=f or 0,d=d or 0,e=e or 0,q=q or 0}end
function D(_,a)return c(_.f+a.f,_.d+a.d,_.e+a.e)end
function n(_,o)return c(_.f*o,_.d*o,_.e*o)end
function G(_)return n(_,-1)end
function I(_,a)return D(_,G(a))end
function r(_)return m.sqrt(_.f*_.f+_.d*_.d+_.e*_.e)end
function L(s,a)if not _ then _={}_[a]={p=0,l=0}elseif not _[a]then _[a]={p=0,l=0}end;_[a].l=s-_[a].p;_[a].p=s;return _[a].l end
function w(v,a)if not _ then _={}_[a]={k=c(),i=c()}elseif not _[a]then _[a]={k=c(),i=c()}end;_[a].i=I(v,_[a].k)_[a].k=v;return _[a].i end
H=23
g=0
u=c()function onTick()u=c(j(1),j(2),j(3))x=n(w(u,"myvel"),60)B=n(w(x,"myacc"),60)g=r(x)g=g
F=r(B)V=F/9.81
end
function onDraw()q,t=b.getWidth(),b.getHeight()C(75,25,60)h=(1-g/H)*(t-1)A(0,t-1,0,h)A(0,h,4,h)E(2,h+2,"Spd:"..m.floor(g+.5))end
