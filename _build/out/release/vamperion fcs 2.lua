-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2188 (2522 with comment) chars

F=false
R=true
O,i,S,q=math,input,output,property
o,k,an=i.getNumber,S.setNumber,i.getBool
e,V=q.getNumber,q.getBool
aj={q=e("P pitch"),i=e("I pitch"),n=e("D pitch")}af={q=e("P roll"),i=e("I roll"),n=e("D roll")}ah={q=e("P yaw"),i=e("I yaw"),n=e("D yaw")}J={_=e("Control gain pitch"),a=e("Control gain roll"),b=e("Control gain yaw")}C={_=e("Control gain pitch loaded"),a=e("Control gain roll loaded"),b=e("Control gain yaw loaded")}z={_=e("Pitch trim"),a=e("Roll trim"),b=e("Yaw trim")}M={_=e("Pitch PID activation delay ticks"),a=e("Roll PID activation delay ticks"),b=e("Yaw PID activation delay ticks")}m={}p=e("Deadzone")A=V("Use PIDs?")function N(j,min,max)return j>min and j<max
end
function ak(j,min,max)return O.min(O.max(j,min),max)end
function T(j,u)return{_=j._+u._,a=j.a+u.a,b=j.b+u.b}end
function G(j,u,P)return j*(1-P)+u*P end
function L(aa,X,ag,c)if not h then
h={}h[c]={x=0,v=0}elseif not h[c]then
h[c]={x=0,v=0}end
if aa then
if h[c].x>=X then
h[c].v=ag
return R
else
h[c].x=h[c].x+1
return F
end
else
if h[c].v==0 then
return F
else
h[c].v=h[c].v-1
return R
end
end
end
function K(W,ai,I,c)if not f then
f={}f[c]={s=0,i=0,n=0,H=0,y=0}elseif not f[c]then
f[c]={s=0,i=0,n=0,H=0,y=0}end
f[c].s=W-ai
f[c].i=f[c].y+f[c].s
f[c].n=f[c].s-f[c].H
f[c].U=I.q*f[c].s+I.i*f[c].i+I.n*f[c].n
f[c].H=f[c].s
f[c].y=f[c].i
return f[c].U
end
l={_=5,a=0,b=0}t={_=-5,a=0,b=0}d={_=0,a=0,b=0}al=F
am=8
function onTick()r={_=o(2),a=o(1),b=o(3)}w={_=-o(4),a=-o(5),b=o(6)}D=o(8)/8
m={_=G(J._,C._,D),a=G(J.a,C.a,D),b=G(J.b,C.b,D)}g={_=z._*m._,a=z.a*m.a,b=z.b*m.b}l=T(l,w)ac=r._*m._
ae=K(t._,l._,aj,"ppid")B=N(r._,-p,p)if L(not B,0,M._,"pcap")then
if B then
d._=g._-w._*10
else
d._=g._+ac
end
t._=l._
elseif A then
d._=g._+ae
else
d._=g._
end
Y=r.a*m.a
ab=K(t.a,l.a,af,"rpid")E=N(r.a,-p,p)if L(not E,0,M.a,"rcap")then
if E then
d.a=g.a-w.a*2
else
d.a=g.a+Y
end
t.a=l.a
elseif A then
d.a=g.a+ab
else
d.a=g.a
end
ad=r.b*m.b
Z=K(t.b,l.b,ah,"ypid")Q=N(r.b,-p,p)if L(not Q or not B or not E,0,M.b,"ycap")then
if Q then
d.b=g.b-w.b*5
else
d.b=g.b+ad
end
t.b=l.b
elseif A then
d.b=g.b+Z
else
d.b=g.b
end
k(1,-d._+d.a)k(2,-d._)k(3,-d._-d.a)k(4,d._+d.a)k(5,d._)k(6,d._-d.a)k(7,d.b)k(8,-d.b)k(9,d.a/10)end
