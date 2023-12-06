-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2314 (2648 with comment) chars

O=false
Q=true
T,h,af,q=math,input,output,property
n,l,ao=h.getNumber,af.setNumber,h.getBool
e,Z=q.getNumber,q.getBool
ah={q=e("P pitch"),h=e("I pitch"),o=e("D pitch")}al={q=e("P roll"),h=e("I roll"),o=e("D roll")}aj={q=e("P yaw"),h=e("I yaw"),o=e("D yaw")}B={_=e("Control gain pitch"),a=e("Control gain roll"),b=e("Control gain yaw")}D={_=e("Control gain pitch loaded"),a=e("Control gain roll loaded"),b=e("Control gain yaw loaded")}N={_=e("Pitch trim"),a=e("Roll trim"),b=e("Yaw trim")}z={_=e("Pitch PID activation delay ticks"),a=e("Roll PID activation delay ticks"),b=e("Yaw PID activation delay ticks")}j={}r=e("Deadzone")E=Z("Use PIDs?")function M(k,min,max)return k>min and k<max
end
function ap(k,min,max)return T.min(T.max(k,min),max)end
function W(k,v)return{_=k._+v._,a=k.a+v.a,b=k.b+v.b}end
function A(k,v,P)return k*(1-P)+v*P end
function I(ad,ab,ae,c)if not i then
i={}i[c]={y=0,u=0}elseif not i[c]then
i[c]={y=0,u=0}end
if ad then
if i[c].y>=ab then
i[c].u=ae
return Q
else
i[c].y=i[c].y+1
return O
end
else
if i[c].u==0 then
return O
else
i[c].u=i[c].u-1
return Q
end
end
end
function G(ac,Y,L,c)if not f then
f={}f[c]={p=0,h=0,o=0,F=0,C=0}elseif not f[c]then
f[c]={p=0,h=0,o=0,F=0,C=0}end
f[c].p=ac-Y
f[c].h=f[c].C+f[c].p
f[c].o=f[c].p-f[c].F
f[c].aa=L.q*f[c].p+L.h*f[c].h+L.o*f[c].o
f[c].F=f[c].p
f[c].C=f[c].h
return f[c].aa
end
m={_=5,a=0,b=0}t={_=-5,a=0,b=0}d={_=0,a=0,b=0}an=O
am=8
function onTick()s={_=n(2),a=n(1),b=n(3)}x={_=-n(5),a=-n(6),b=n(7)}S=n(8)if S<=145 then
w=20
else
w=.51/(1-3.64*(2.71828^(-.01*S)))end
debug.log("spdfactor: "..w)K=n(9)/8
j={_=A(B._,D._,K),a=A(B.a,D.a,K),b=A(B.b,D.b,K)}g={_=N._*j._,a=N.a*j.a,b=N.b*j.b}j={_=j._*w,a=j.a*w,b=j.b*w}m=W(m,x)U=s._*j._
ai=G(t._,m._,ah,"ppid")J=M(s._,-r,r)if I(not J,0,z._,"pcap")then
if J then
d._=g._-x._*10
else
d._=g._+U
end
t._=m._
elseif E then
d._=g._+ai
else
d._=g._
end
X=s.a*j.a
ag=G(t.a,m.a,al,"rpid")H=M(s.a,-r,r)if I(not H,0,z.a,"rcap")then
if H then
d.a=g.a-x.a*2
else
d.a=g.a+X
end
t.a=m.a
elseif E then
d.a=g.a+ag
else
d.a=g.a
end
ak=s.b*j.b
V=G(t.b,m.b,aj,"ypid")R=M(s.b,-r,r)if I(not R or not J or not H,0,z.b,"ycap")then
if R then
d.b=g.b-x.b*5
else
d.b=g.b+ak
end
t.b=m.b
elseif E then
d.b=g.b+V
else
d.b=g.b
end
l(1,-d._+d.a)l(2,-d._)l(3,-d._-d.a)l(4,d._+d.a)l(5,d._)l(6,d._-d.a)l(7,d.b)l(8,-d.b)l(9,d.a/10)end
