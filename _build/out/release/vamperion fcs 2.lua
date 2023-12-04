-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2195 (2529 with comment) chars

z=false
Q=true
O,h,ab,p=math,input,output,property
m,k,ao=h.getNumber,ab.setNumber,h.getBool
e,ah=p.getNumber,p.getBool
ai={p=e("P pitch"),h=e("I pitch"),o=e("D pitch")}ae={p=e("P roll"),h=e("I roll"),o=e("D roll")}ag={p=e("P yaw"),h=e("I yaw"),o=e("D yaw")}H={_=e("Control gain pitch"),a=e("Control gain roll"),b=e("Control gain yaw")}G={_=e("Control gain pitch loaded"),a=e("Control gain roll loaded"),b=e("Control gain yaw loaded")}y={_=e("Pitch trim"),a=e("Roll trim"),b=e("Yaw trim")}D={_=e("Pitch PID activation delay ticks"),a=e("Roll PID activation delay ticks"),b=e("Yaw PID activation delay ticks")}n={}t=e("Deadzone")M=ah("Use PIDs?")function I(j,min,max)return j>min and j<max
end
function ak(j,min,max)return O.min(O.max(j,min),max)end
function X(j,u)return{_=j._+u._,a=j.a+u.a,b=j.b+u.b}end
function A(j,u,P)return j*(1-P)+u*P end
function J(Z,af,V,c)if not i then
i={}i[c]={w=0,v=0}elseif not i[c]then
i[c]={w=0,v=0}end
if Z then
if i[c].w>=af then
i[c].v=V
return Q
else
i[c].w=i[c].w+1
return z
end
else
if i[c].v==0 then
return z
else
i[c].v=i[c].v-1
return Q
end
end
end
function B(T,U,N,c)if not f then
f={}f[c]={q=0,h=0,o=0,E=0,K=0}elseif not f[c]then
f[c]={q=0,h=0,o=0,E=0,K=0}end
f[c].q=T-U
f[c].h=f[c].K+f[c].q
f[c].o=f[c].q-f[c].E
f[c].W=N.p*f[c].q+N.h*f[c].h+N.o*f[c].o
f[c].E=f[c].q
f[c].K=f[c].h
return f[c].W
end
l={_=5,a=0,b=0}s={_=-5,a=0,b=0}d={_=0,a=0,b=0}am=z
al=8
function onTick()r={_=m(2),a=m(1),b=m(3)}x={_=-m(5),a=-m(6),b=m(7)}an=m(8)F=m(9)/8
n={_=A(H._,G._,F),a=A(H.a,G.a,F),b=A(H.b,G.b,F)}g={_=y._*n._,a=y.a*n.a,b=y.b*n.b}l=X(l,x)Y=r._*n._
S=B(s._,l._,ai,"ppid")L=I(r._,-t,t)if J(not L,0,D._,"pcap")then
if L then
d._=g._-x._*10
else
d._=g._+Y
end
s._=l._
elseif M then
d._=g._+S
else
d._=g._
end
aj=r.a*n.a
aa=B(s.a,l.a,ae,"rpid")C=I(r.a,-t,t)if J(not C,0,D.a,"rcap")then
if C then
d.a=g.a-x.a*2
else
d.a=g.a+aj
end
s.a=l.a
elseif M then
d.a=g.a+aa
else
d.a=g.a
end
ad=r.b*n.b
ac=B(s.b,l.b,ag,"ypid")R=I(r.b,-t,t)if J(not R or not L or not C,0,D.b,"ycap")then
if R then
d.b=g.b-x.b*5
else
d.b=g.b+ad
end
s.b=l.b
elseif M then
d.b=g.b+ac
else
d.b=g.b
end
k(1,-d._+d.a)k(2,-d._)k(3,-d._-d.a)k(4,d._+d.a)k(5,d._)k(6,d._-d.a)k(7,d.b)k(8,-d.b)k(9,d.a/10)end
