-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2188 (2522 with comment) chars

K=false
P=true
Q,h,ai,r=math,input,output,property
m,k,am=h.getNumber,ai.setNumber,h.getBool
e,ab=r.getNumber,r.getBool
af={r=e("P pitch"),h=e("I pitch"),n=e("D pitch")}V={r=e("P roll"),h=e("I roll"),n=e("D roll")}aj={r=e("P yaw"),h=e("I yaw"),n=e("D yaw")}E={_=e("Control gain pitch"),a=e("Control gain roll"),b=e("Control gain yaw")}I={_=e("Control gain pitch loaded"),a=e("Control gain roll loaded"),b=e("Control gain yaw loaded")}J={_=e("Pitch trim"),a=e("Roll trim"),b=e("Yaw trim")}y={_=e("Pitch PID activation delay ticks"),a=e("Roll PID activation delay ticks"),b=e("Yaw PID activation delay ticks")}o={}q=e("Deadzone")A=ab("Use PIDs?")function N(j,min,max)return j>min and j<max
end
function al(j,min,max)return Q.min(Q.max(j,min),max)end
function ac(j,v)return{_=j._+v._,a=j.a+v.a,b=j.b+v.b}end
function G(j,v,R)return j*(1-R)+v*R end
function B(Z,Y,ag,c)if not i then
i={}i[c]={w=0,u=0}elseif not i[c]then
i[c]={w=0,u=0}end
if Z then
if i[c].w>=Y then
i[c].u=ag
return P
else
i[c].w=i[c].w+1
return K
end
else
if i[c].u==0 then
return K
else
i[c].u=i[c].u-1
return P
end
end
end
function D(U,ae,M,c)if not f then
f={}f[c]={p=0,h=0,n=0,H=0,C=0}elseif not f[c]then
f[c]={p=0,h=0,n=0,H=0,C=0}end
f[c].p=U-ae
f[c].h=f[c].C+f[c].p
f[c].n=f[c].p-f[c].H
f[c].T=M.r*f[c].p+M.h*f[c].h+M.n*f[c].n
f[c].H=f[c].p
f[c].C=f[c].h
return f[c].T
end
l={_=5,a=0,b=0}t={_=-5,a=0,b=0}d={_=0,a=0,b=0}ak=K
an=8
function onTick()s={_=m(2),a=m(1),b=m(3)}x={_=-m(4),a=-m(5),b=m(6)}F=m(8)/8
o={_=G(E._,I._,F),a=G(E.a,I.a,F),b=G(E.b,I.b,F)}g={_=J._*o._,a=J.a*o.a,b=J.b*o.b}l=ac(l,x)X=s._*o._
W=D(t._,l._,af,"ppid")z=N(s._,-q,q)if B(not z,0,y._,"pcap")then
if z then
d._=g._-x._*10
else
d._=g._+X
end
t._=l._
elseif A then
d._=g._+W
else
d._=g._
end
aa=s.a*o.a
ad=D(t.a,l.a,V,"rpid")L=N(s.a,-q,q)if B(not L,0,y.a,"rcap")then
if L then
d.a=g.a-x.a*2
else
d.a=g.a+aa
end
t.a=l.a
elseif A then
d.a=g.a+ad
else
d.a=g.a
end
S=s.b*o.b
ah=D(t.b,l.b,aj,"ypid")O=N(s.b,-q,q)if B(not O or not z or not L,0,y.b,"ycap")then
if O then
d.b=g.b-x.b*5
else
d.b=g.b+S
end
t.b=l.b
elseif A then
d.b=g.b+ah
else
d.b=g.b
end
k(1,-d._+d.a)k(2,-d._)k(3,-d._-d.a)k(4,d._+d.a)k(5,d._)k(6,d._-d.a)k(7,d.b)k(8,-d.b)k(9,d.a/10)end
