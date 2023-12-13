-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2316 (2621 with comment) chars

B=false
P=true
R,h,ad,p=math,input,output,property
n,k,ap=h.getNumber,ad.setNumber,h.getBool
e,ac=p.getNumber,p.getBool
ae={p=e("P pitch"),h=e("I pitch"),o=e("D pitch")}aj={p=e("P roll"),h=e("I roll"),o=e("D roll")}Y={p=e("P yaw"),h=e("I yaw"),o=e("D yaw")}z={_=e("Control gain pitch"),b=e("Control gain roll"),a=e("Control gain yaw")}J={_=e("Control gain pitch loaded"),b=e("Control gain roll loaded"),a=e("Control gain yaw loaded")}G={_=e("Pitch trim"),b=e("Roll trim"),a=e("Yaw trim")}C={_=e("Pitch PID activation delay ticks"),b=e("Roll PID activation delay ticks"),a=e("Yaw PID activation delay ticks")}l={}r=e("Deadzone")y=ac("Use PIDs?")T={[0]=-.045,[1]=-.18,[2]=-.04,[3]=-.2,[4]=-.045,[5]=-.215,[6]=-.04,[7]=-.225,[8]=-.045}function M(j,min,max)return j>min and j<max
end
function ao(j,min,max)return R.min(R.max(j,min),max)end
function Z(j,u)return{_=j._+u._,b=j.b+u.b,a=j.a+u.a}end
function N(j,u,S)return j*(1-S)+u*S end
function A(V,U,ak,c)if not i then
i={}i[c]={x=0,v=0}elseif not i[c]then
i[c]={x=0,v=0}end
if V then
if i[c].x>=U then
i[c].v=ak
return P
else
i[c].x=i[c].x+1
return B
end
else
if i[c].v==0 then
return B
else
i[c].v=i[c].v-1
return P
end
end
end
function K(aa,ab,I,c)if not f then
f={}f[c]={s=0,h=0,o=0,O=0,H=0}elseif not f[c]then
f[c]={s=0,h=0,o=0,O=0,H=0}end
f[c].s=aa-ab
f[c].h=f[c].H+f[c].s
f[c].o=f[c].s-f[c].O
f[c].ag=I.p*f[c].s+I.h*f[c].h+I.o*f[c].o
f[c].O=f[c].s
f[c].H=f[c].h
return f[c].ag
end
m={_=5,b=0,a=0}t={_=-5,b=0,a=0}d={_=0,b=0,a=0}an=B
am=8
function onTick()q={_=n(2),b=n(1),a=n(3)}w={_=-n(4),b=-n(5),a=n(6)}F=n(8)E=F/8
l={_=N(z._,J._,E),b=N(z.b,J.b,E),a=N(z.a,J.a,E)}g={_=G._*l._,b=G.b*l.b,a=G.a*l.a}if T[F]then
g.a=g.a+T[F]*l.a
end
m=Z(m,w)al=q._*l._
ai=K(t._,m._,ae,"ppid")L=M(q._,-r,r)if A(not L,0,C._,"pcap")then
if L then
d._=g._-w._*10
else
d._=g._+al
end
t._=m._
elseif y then
d._=g._+ai
else
d._=g._
end
ah=q.b*l.b
W=K(t.b,m.b,aj,"rpid")D=M(q.b,-r,r)if A(not D,0,C.b,"rcap")then
if D then
d.b=g.b-w.b*2
else
d.b=g.b+ah
end
t.b=m.b
elseif y then
d.b=g.b+W
else
d.b=g.b
end
af=q.a*l.a
X=K(t.a,m.a,Y,"ypid")Q=M(q.a,-r,r)if A(not Q or not L or not D,0,C.a,"ycap")then
if Q then
d.a=g.a-w.a*5
else
d.a=g.a+af
end
t.a=m.a
elseif y then
d.a=g.a+X
else
d.a=g.a
end
k(1,-d._+d.b)k(2,-d._)k(3,-d._-d.b)k(4,d._+d.b)k(5,d._)k(6,d._-d.b)k(7,d.a)k(8,-d.a)k(9,d.b/10)end
