-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2188 (2522 with comment) chars

B=false
O=true
R,i,T,p=math,input,output,property
m,k,al=i.getNumber,T.setNumber,i.getBool
e,S=p.getNumber,p.getBool
ai={p=e("P pitch"),i=e("I pitch"),o=e("D pitch")}ag={p=e("P roll"),i=e("I roll"),o=e("D roll")}Y={p=e("P yaw"),i=e("I yaw"),o=e("D yaw")}L={_=e("Control gain pitch"),a=e("Control gain roll"),b=e("Control gain yaw")}G={_=e("Control gain pitch loaded"),a=e("Control gain roll loaded"),b=e("Control gain yaw loaded")}F={_=e("Pitch trim"),a=e("Roll trim"),b=e("Yaw trim")}E={_=e("Pitch PID activation delay ticks"),a=e("Roll PID activation delay ticks"),b=e("Yaw PID activation delay ticks")}n={}r=e("Deadzone")M=S("Use PIDs?")function I(j,min,max)return j>min and j<max
end
function an(j,min,max)return R.min(R.max(j,min),max)end
function aa(j,u)return{_=j._+u._,a=j.a+u.a,b=j.b+u.b}end
function z(j,u,P)return j*(1-P)+u*P end
function K(ad,ac,aj,c)if not h then
h={}h[c]={w=0,v=0}elseif not h[c]then
h[c]={w=0,v=0}end
if ad then
if h[c].w>=ac then
h[c].v=aj
return O
else
h[c].w=h[c].w+1
return B
end
else
if h[c].v==0 then
return B
else
h[c].v=h[c].v-1
return O
end
end
end
function y(V,Z,C,c)if not f then
f={}f[c]={t=0,i=0,o=0,J=0,A=0}elseif not f[c]then
f[c]={t=0,i=0,o=0,J=0,A=0}end
f[c].t=V-Z
f[c].i=f[c].A+f[c].t
f[c].o=f[c].t-f[c].J
f[c].X=C.p*f[c].t+C.i*f[c].i+C.o*f[c].o
f[c].J=f[c].t
f[c].A=f[c].i
return f[c].X
end
l={_=5,a=0,b=0}q={_=-5,a=0,b=0}d={_=0,a=0,b=0}ak=B
am=8
function onTick()s={_=m(2),a=m(1),b=m(3)}x={_=-m(4),a=-m(5),b=m(6)}D=m(8)/8
n={_=z(L._,G._,D),a=z(L.a,G.a,D),b=z(L.b,G.b,D)}g={_=F._*n._,a=F.a*n.a,b=F.b*n.b}l=aa(l,x)W=s._*n._
ah=y(q._,l._,ai,"ppid")N=I(s._,-r,r)if K(not N,0,E._,"pcap")then
if N then
d._=g._-x._*10
else
d._=g._+W
end
q._=l._
elseif M then
d._=g._+ah
else
d._=g._
end
ae=s.a*n.a
ab=y(q.a,l.a,ag,"rpid")H=I(s.a,-r,r)if K(not H,0,E.a,"rcap")then
if H then
d.a=g.a-x.a*2
else
d.a=g.a+ae
end
q.a=l.a
elseif M then
d.a=g.a+ab
else
d.a=g.a
end
af=s.b*n.b
U=y(q.b,l.b,Y,"ypid")Q=I(s.b,-r,r)if K(not Q or not N or not H,0,E.b,"ycap")then
if Q then
d.b=g.b-x.b*5
else
d.b=g.b+af
end
q.b=l.b
elseif M then
d.b=g.b+U
else
d.b=g.b
end
k(1,-d._+d.a)k(2,-d._)k(3,-d._-d.a)k(4,d._+d.a)k(5,d._)k(6,d._-d.a)k(7,d.b)k(8,-d.b)k(9,d.a/10)end
