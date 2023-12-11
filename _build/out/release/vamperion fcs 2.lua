-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2316 (2621 with comment) chars

A=false
T=true
R,i,ae,r=math,input,output,property
n,k,ao=i.getNumber,ae.setNumber,i.getBool
e,aa=r.getNumber,r.getBool
ah={r=e("P pitch"),i=e("I pitch"),o=e("D pitch")}Z={r=e("P roll"),i=e("I roll"),o=e("D roll")}Y={r=e("P yaw"),i=e("I yaw"),o=e("D yaw")}K={_=e("Control gain pitch"),b=e("Control gain roll"),a=e("Control gain yaw")}E={_=e("Control gain pitch loaded"),b=e("Control gain roll loaded"),a=e("Control gain yaw loaded")}B={_=e("Pitch trim"),b=e("Roll trim"),a=e("Yaw trim")}M={_=e("Pitch PID activation delay ticks"),b=e("Roll PID activation delay ticks"),a=e("Yaw PID activation delay ticks")}l={}s=e("Deadzone")y=aa("Use PIDs?")Q={[0]=-.045,[1]=-.18,[2]=-.04,[3]=-.2,[4]=-.045,[5]=-.215,[6]=-.04,[7]=-.225,[8]=-.045}function C(j,min,max)return j>min and j<max
end
function ap(j,min,max)return R.min(R.max(j,min),max)end
function af(j,v)return{_=j._+v._,b=j.b+v.b,a=j.a+v.a}end
function O(j,v,P)return j*(1-P)+v*P end
function N(ad,ag,al,c)if not h then
h={}h[c]={w=0,u=0}elseif not h[c]then
h[c]={w=0,u=0}end
if ad then
if h[c].w>=ag then
h[c].u=al
return T
else
h[c].w=h[c].w+1
return A
end
else
if h[c].u==0 then
return A
else
h[c].u=h[c].u-1
return T
end
end
end
function F(U,ac,G,c)if not f then
f={}f[c]={t=0,i=0,o=0,D=0,I=0}elseif not f[c]then
f[c]={t=0,i=0,o=0,D=0,I=0}end
f[c].t=U-ac
f[c].i=f[c].I+f[c].t
f[c].o=f[c].t-f[c].D
f[c].ai=G.r*f[c].t+G.i*f[c].i+G.o*f[c].o
f[c].D=f[c].t
f[c].I=f[c].i
return f[c].ai
end
m={_=5,b=0,a=0}q={_=-5,b=0,a=0}d={_=0,b=0,a=0}am=A
an=8
function onTick()p={_=n(2),b=n(1),a=n(3)}x={_=-n(4),b=-n(5),a=n(6)}L=n(8)H=L/8
l={_=O(K._,E._,H),b=O(K.b,E.b,H),a=O(K.a,E.a,H)}g={_=B._*l._,b=B.b*l.b,a=B.a*l.a}if Q[L]then
g.a=g.a+Q[L]*l.a
end
m=af(m,x)X=p._*l._
ab=F(q._,m._,ah,"ppid")z=C(p._,-s,s)if N(not z,0,M._,"pcap")then
if z then
d._=g._-x._*10
else
d._=g._+X
end
q._=m._
elseif y then
d._=g._+ab
else
d._=g._
end
W=p.b*l.b
ak=F(q.b,m.b,Z,"rpid")J=C(p.b,-s,s)if N(not J,0,M.b,"rcap")then
if J then
d.b=g.b-x.b*2
else
d.b=g.b+W
end
q.b=m.b
elseif y then
d.b=g.b+ak
else
d.b=g.b
end
V=p.a*l.a
aj=F(q.a,m.a,Y,"ypid")S=C(p.a,-s,s)if N(not S or not z or not J,0,M.a,"ycap")then
if S then
d.a=g.a-x.a*5
else
d.a=g.a+V
end
q.a=m.a
elseif y then
d.a=g.a+aj
else
d.a=g.a
end
k(1,-d._+d.b)k(2,-d._)k(3,-d._-d.b)k(4,d._+d.b)k(5,d._)k(6,d._-d.b)k(7,d.a)k(8,-d.a)k(9,d.b/10)end
