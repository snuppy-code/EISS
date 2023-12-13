-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2316 (2621 with comment) chars

B=false
Q=true
T,i,W,r=math,input,output,property
o,k,an=i.getNumber,W.setNumber,i.getBool
e,Y=r.getNumber,r.getBool
ae={r=e("P pitch"),i=e("I pitch"),n=e("D pitch")}Z={r=e("P roll"),i=e("I roll"),n=e("D roll")}ag={r=e("P yaw"),i=e("I yaw"),n=e("D yaw")}N={_=e("Control gain pitch"),b=e("Control gain roll"),a=e("Control gain yaw")}D={_=e("Control gain pitch loaded"),b=e("Control gain roll loaded"),a=e("Control gain yaw loaded")}F={_=e("Pitch trim"),b=e("Roll trim"),a=e("Yaw trim")}J={_=e("Pitch PID activation delay ticks"),b=e("Roll PID activation delay ticks"),a=e("Yaw PID activation delay ticks")}l={}p=e("Deadzone")K=Y("Use PIDs?")P={[0]=-.045,[1]=-.18,[2]=-.04,[3]=-.2,[4]=-.045,[5]=-.215,[6]=-.04,[7]=-.225,[8]=-.045}function A(j,min,max)return j>min and j<max
end
function am(j,min,max)return T.min(T.max(j,min),max)end
function aj(j,u)return{_=j._+u._,b=j.b+u.b,a=j.a+u.a}end
function O(j,u,R)return j*(1-R)+u*R end
function E(ad,ac,ak,c)if not h then
h={}h[c]={w=0,v=0}elseif not h[c]then
h[c]={w=0,v=0}end
if ad then
if h[c].w>=ac then
h[c].v=ak
return Q
else
h[c].w=h[c].w+1
return B
end
else
if h[c].v==0 then
return B
else
h[c].v=h[c].v-1
return Q
end
end
end
function M(af,al,C,c)if not f then
f={}f[c]={s=0,i=0,n=0,H=0,L=0}elseif not f[c]then
f[c]={s=0,i=0,n=0,H=0,L=0}end
f[c].s=af-al
f[c].i=f[c].L+f[c].s
f[c].n=f[c].s-f[c].H
f[c].ab=C.r*f[c].s+C.i*f[c].i+C.n*f[c].n
f[c].H=f[c].s
f[c].L=f[c].i
return f[c].ab
end
m={_=5,b=0,a=0}q={_=-5,b=0,a=0}d={_=0,b=0,a=0}ap=B
ao=8
function onTick()t={_=o(2),b=o(1),a=o(3)}x={_=-o(4),b=-o(5),a=o(6)}G=o(8)z=G/8
l={_=O(N._,D._,z),b=O(N.b,D.b,z),a=O(N.a,D.a,z)}g={_=F._*l._,b=F.b*l.b,a=F.a*l.a}if P[G]then
g.a=g.a+P[G]*l.a
end
m=aj(m,x)ah=t._*l._
ai=M(q._,m._,ae,"ppid")I=A(t._,-p,p)if E(not I,0,J._,"pcap")then
if I then
d._=g._-x._*10
else
d._=g._+ah
end
q._=m._
elseif K then
d._=g._+ai
else
d._=g._
end
aa=t.b*l.b
U=M(q.b,m.b,Z,"rpid")y=A(t.b,-p,p)if E(not y,0,J.b,"rcap")then
if y then
d.b=g.b-x.b*2
else
d.b=g.b+aa
end
q.b=m.b
elseif K then
d.b=g.b+U
else
d.b=g.b
end
X=t.a*l.a
V=M(q.a,m.a,ag,"ypid")S=A(t.a,-p,p)if E(not S or not I or not y,0,J.a,"ycap")then
if S then
d.a=g.a-x.a*5
else
d.a=g.a+X
end
q.a=m.a
elseif K then
d.a=g.a+V
else
d.a=g.a
end
k(1,-d._+d.b)k(2,-d._)k(3,-d._-d.b)k(4,d._+d.b)k(5,d._)k(6,d._-d.b)k(7,d.a)k(8,-d.a)k(9,d.b/10)end
