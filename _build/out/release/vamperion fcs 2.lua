-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2188 (2522 with comment) chars

N=false
R=true
Q,i,U,q=math,input,output,property
o,k,al=i.getNumber,U.setNumber,i.getBool
e,ae=q.getNumber,q.getBool
ac={q=e("P pitch"),i=e("I pitch"),n=e("D pitch")}ai={q=e("P roll"),i=e("I roll"),n=e("D roll")}ad={q=e("P yaw"),i=e("I yaw"),n=e("D yaw")}I={_=e("Control gain pitch"),a=e("Control gain roll"),b=e("Control gain yaw")}C={_=e("Control gain pitch loaded"),a=e("Control gain roll loaded"),b=e("Control gain yaw loaded")}z={_=e("Pitch trim"),a=e("Roll trim"),b=e("Yaw trim")}B={_=e("Pitch PID activation delay ticks"),a=e("Roll PID activation delay ticks"),b=e("Yaw PID activation delay ticks")}m={}t=e("Deadzone")A=ae("Use PIDs?")function K(j,min,max)return j>min and j<max
end
function an(j,min,max)return Q.min(Q.max(j,min),max)end
function Y(j,v)return{_=j._+v._,a=j.a+v.a,b=j.b+v.b}end
function J(j,v,P)return j*(1-P)+v*P end
function M(aa,V,X,c)if not h then
h={}h[c]={w=0,u=0}elseif not h[c]then
h[c]={w=0,u=0}end
if aa then
if h[c].w>=V then
h[c].u=X
return R
else
h[c].w=h[c].w+1
return N
end
else
if h[c].u==0 then
return N
else
h[c].u=h[c].u-1
return R
end
end
end
function y(ag,af,E,c)if not f then
f={}f[c]={p=0,i=0,n=0,L=0,D=0}elseif not f[c]then
f[c]={p=0,i=0,n=0,L=0,D=0}end
f[c].p=ag-af
f[c].i=f[c].D+f[c].p
f[c].n=f[c].p-f[c].L
f[c].aj=E.q*f[c].p+E.i*f[c].i+E.n*f[c].n
f[c].L=f[c].p
f[c].D=f[c].i
return f[c].aj
end
l={_=5,a=0,b=0}r={_=-5,a=0,b=0}d={_=0,a=0,b=0}ak=N
am=8
function onTick()s={_=o(2),a=o(1),b=o(3)}x={_=-o(4),a=-o(5),b=o(6)}F=o(8)/8
m={_=J(I._,C._,F),a=J(I.a,C.a,F),b=J(I.b,C.b,F)}g={_=z._*m._,a=z.a*m.a,b=z.b*m.b}l=Y(l,x)ah=s._*m._
W=y(r._,l._,ac,"ppid")G=K(s._,-t,t)if M(not G,0,B._,"pcap")then
if G then
d._=g._-x._*10
else
d._=g._+ah
end
r._=l._
elseif A then
d._=g._+W
else
d._=g._
end
ab=s.a*m.a
T=y(r.a,l.a,ai,"rpid")H=K(s.a,-t,t)if M(not H,0,B.a,"rcap")then
if H then
d.a=g.a-x.a*2
else
d.a=g.a+ab
end
r.a=l.a
elseif A then
d.a=g.a+T
else
d.a=g.a
end
Z=s.b*m.b
S=y(r.b,l.b,ad,"ypid")O=K(s.b,-t,t)if M(not O or not G or not H,0,B.b,"ycap")then
if O then
d.b=g.b-x.b*5
else
d.b=g.b+Z
end
r.b=l.b
elseif A then
d.b=g.b+S
else
d.b=g.b
end
k(1,-d._+d.a)k(2,-d._)k(3,-d._-d.a)k(4,d._+d.a)k(5,d._)k(6,d._-d.a)k(7,d.b)k(8,-d.b)k(9,d.a/10)end
