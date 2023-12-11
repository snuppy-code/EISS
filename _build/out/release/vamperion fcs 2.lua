-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2316 (2621 with comment) chars

F=false
Q=true
R,h,V,s=math,input,output,property
n,k,am=h.getNumber,V.setNumber,h.getBool
e,ag=s.getNumber,s.getBool
X={s=e("P pitch"),h=e("I pitch"),o=e("D pitch")}ak={s=e("P roll"),h=e("I roll"),o=e("D roll")}aj={s=e("P yaw"),h=e("I yaw"),o=e("D yaw")}y={_=e("Control gain pitch"),a=e("Control gain roll"),b=e("Control gain yaw")}B={_=e("Control gain pitch loaded"),a=e("Control gain roll loaded"),b=e("Control gain yaw loaded")}C={_=e("Pitch trim"),a=e("Roll trim"),b=e("Yaw trim")}z={_=e("Pitch PID activation delay ticks"),a=e("Roll PID activation delay ticks"),b=e("Yaw PID activation delay ticks")}l={}r=e("Deadzone")E=ag("Use PIDs?")P={[0]=-.045,[1]=-.18,[2]=-.04,[3]=-.2,[4]=-.045,[5]=-.215,[6]=-.04,[7]=-.225,[8]=-.045}function H(j,min,max)return j>min and j<max
end
function ao(j,min,max)return R.min(R.max(j,min),max)end
function ah(j,v)return{_=j._+v._,a=j.a+v.a,b=j.b+v.b}end
function L(j,v,S)return j*(1-S)+v*S end
function J(Z,aa,U,c)if not i then
i={}i[c]={w=0,u=0}elseif not i[c]then
i[c]={w=0,u=0}end
if Z then
if i[c].w>=aa then
i[c].u=U
return Q
else
i[c].w=i[c].w+1
return F
end
else
if i[c].u==0 then
return F
else
i[c].u=i[c].u-1
return Q
end
end
end
function O(al,W,N,c)if not f then
f={}f[c]={q=0,h=0,o=0,I=0,M=0}elseif not f[c]then
f[c]={q=0,h=0,o=0,I=0,M=0}end
f[c].q=al-W
f[c].h=f[c].M+f[c].q
f[c].o=f[c].q-f[c].I
f[c].ae=N.s*f[c].q+N.h*f[c].h+N.o*f[c].o
f[c].I=f[c].q
f[c].M=f[c].h
return f[c].ae
end
m={_=5,a=0,b=0}t={_=-5,a=0,b=0}d={_=0,a=0,b=0}an=F
ap=8
function onTick()p={_=n(2),a=n(1),b=n(3)}x={_=-n(4),a=-n(5),b=n(6)}A=n(8)G=A/8
l={_=L(y._,B._,G),a=L(y.a,B.a,G),b=L(y.b,B.b,G)}g={_=C._*l._,a=C.a*l.a,b=C.b*l.b}if P[A]then
g.b=g.b+P[A]*l.b
end
m=ah(m,x)ad=p._*l._
Y=O(t._,m._,X,"ppid")K=H(p._,-r,r)if J(not K,0,z._,"pcap")then
if K then
d._=g._-x._*10
else
d._=g._+ad
end
t._=m._
elseif E then
d._=g._+Y
else
d._=g._
end
ac=p.a*l.a
ab=O(t.a,m.a,ak,"rpid")D=H(p.a,-r,r)if J(not D,0,z.a,"rcap")then
if D then
d.a=g.a-x.a*2
else
d.a=g.a+ac
end
t.a=m.a
elseif E then
d.a=g.a+ab
else
d.a=g.a
end
ai=p.b*l.b
af=O(t.b,m.b,aj,"ypid")T=H(p.b,-r,r)if J(not T or not K or not D,0,z.b,"ycap")then
if T then
d.b=g.b-x.b*5
else
d.b=g.b+ai
end
t.b=m.b
elseif E then
d.b=g.b+af
else
d.b=g.b
end
k(1,-d._+d.a)k(2,-d._)k(3,-d._-d.a)k(4,d._+d.a)k(5,d._)k(6,d._-d.a)k(7,d.b)k(8,-d.b)k(9,d.a/10)end
