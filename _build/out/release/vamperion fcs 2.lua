-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2287 (2621 with comment) chars

C=false
T=true
R,j,ad,s=math,input,output,property
m,l,an=j.getNumber,ad.setNumber,j.getBool
e,V=s.getNumber,s.getBool
Z={s=e("P pitch"),j=e("I pitch"),o=e("D pitch")}Y={s=e("P roll"),j=e("I roll"),o=e("D roll")}ae={s=e("P yaw"),j=e("I yaw"),o=e("D yaw")}G={_=e("Control gain pitch"),a=e("Control gain roll"),b=e("Control gain yaw")}K={_=e("Control gain pitch loaded"),a=e("Control gain roll loaded"),b=e("Control gain yaw loaded")}F={_=e("Pitch trim"),a=e("Roll trim"),b=e("Yaw trim")}L={_=e("Pitch PID activation delay ticks"),a=e("Roll PID activation delay ticks"),b=e("Yaw PID activation delay ticks")}h={}r=e("Deadzone")D=V("Use PIDs?")function E(k,min,max)return k>min and k<max
end
function am(k,min,max)return R.min(R.max(k,min),max)end
function ag(k,u)return{_=k._+u._,a=k.a+u.a,b=k.b+u.b}end
function B(k,u,P)return k*(1-P)+u*P end
function z(ah,ak,aa,c)if not i then
i={}i[c]={x=0,v=0}elseif not i[c]then
i[c]={x=0,v=0}end
if ah then
if i[c].x>=ak then
i[c].v=aa
return T
else
i[c].x=i[c].x+1
return C
end
else
if i[c].v==0 then
return C
else
i[c].v=i[c].v-1
return T
end
end
end
function H(ac,aj,N,c)if not f then
f={}f[c]={t=0,j=0,o=0,I=0,M=0}elseif not f[c]then
f[c]={t=0,j=0,o=0,I=0,M=0}end
f[c].t=ac-aj
f[c].j=f[c].M+f[c].t
f[c].o=f[c].t-f[c].I
f[c].U=N.s*f[c].t+N.j*f[c].j+N.o*f[c].o
f[c].I=f[c].t
f[c].M=f[c].j
return f[c].U
end
n={_=5,a=0,b=0}p={_=-5,a=0,b=0}d={_=0,a=0,b=0}ao=C
ap=8
function onTick()q={_=m(2),a=m(1),b=m(3)}y={_=-m(5),a=-m(6),b=m(7)}Q=m(8)if Q<=145 then
w=20
else
w=.51/(1-3.64*(2.71828^(-.01*Q)))end
J=m(9)/8
h={_=B(G._,K._,J),a=B(G.a,K.a,J),b=B(G.b,K.b,J)}g={_=F._*h._,a=F.a*h.a,b=F.b*h.b}h={_=h._*w,a=h.a*w,b=h.b*w}n=ag(n,y)af=q._*h._
al=H(p._,n._,Z,"ppid")O=E(q._,-r,r)if z(not O,0,L._,"pcap")then
if O then
d._=g._-y._*10
else
d._=g._+af
end
p._=n._
elseif D then
d._=g._+al
else
d._=g._
end
X=q.a*h.a
ai=H(p.a,n.a,Y,"rpid")A=E(q.a,-r,r)if z(not A,0,L.a,"rcap")then
if A then
d.a=g.a-y.a*2
else
d.a=g.a+X
end
p.a=n.a
elseif D then
d.a=g.a+ai
else
d.a=g.a
end
ab=q.b*h.b
W=H(p.b,n.b,ae,"ypid")S=E(q.b,-r,r)if z(not S or not O or not A,0,L.b,"ycap")then
if S then
d.b=g.b-y.b*5
else
d.b=g.b+ab
end
p.b=n.b
elseif D then
d.b=g.b+W
else
d.b=g.b
end
l(1,-d._+d.a)l(2,-d._)l(3,-d._-d.a)l(4,d._+d.a)l(5,d._)l(6,d._-d.a)l(7,d.b)l(8,-d.b)l(9,d.a/10)end
