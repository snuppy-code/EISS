-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2559 (2864 with comment) chars
at="Control gain roll"
as="Control gain pitch"
ar="Control gain yaw"

F=false
S=true
P,k,al,t=math,input,output,property
m,n,aq=k.getNumber,al.setNumber,k.getBool
e,aj=t.getNumber,t.getBool
function J(l,min,max)return l>min and l<max
end
function ap(l,min,max)return P.min(P.max(l,min),max)end
function ae(l,x)return{_=l._+x._,b=l.b+x.b,a=l.a+x.a}end
function an(l,x,R)return l*(1-R)+x*R end
function E(ag,V,ah,c)if not j then
j={}j[c]={z=0,w=0}elseif not j[c]then
j[c]={z=0,w=0}end
if ag then
if j[c].z>=V then
j[c].w=ah
return S
else
j[c].z=j[c].z+1
return F
end
else
if j[c].w==0 then
return F
else
j[c].w=j[c].w-1
return S
end
end
end
function C(aa,ak,G,c)if not f then
f={}f[c]={q=0,k=0,p=0,B=0,H=0}elseif not f[c]then
f[c]={q=0,k=0,p=0,B=0,H=0}end
f[c].q=aa-ak
f[c].k=f[c].H+f[c].q
f[c].p=f[c].q-f[c].B
f[c].af=G.t*f[c].q+G.k*f[c].k+G.p*f[c].p
f[c].B=f[c].q
f[c].H=f[c].k
return f[c].af
end
am={t=e("P pitch"),k=e("I pitch"),p=e("D pitch")}X={t=e("P roll"),k=e("I roll"),p=e("D roll")}U={t=e("P yaw"),k=e("I yaw"),p=e("D yaw")}ac={_=e(as),b=e(at),a=e(ar)}I={_=e("Pitch trim"),b=e("Roll trim"),a=e("Yaw trim")}L={_=e("Pitch PID activation delay ticks"),b=e("Roll PID activation delay ticks"),a=e("Yaw PID activation delay ticks")}s=e("Deadzone")D=aj("Use PIDs?")o={_=5,b=0,a=0}r={_=-5,b=0,a=0}d={_=0,b=0,a=0}h={}ao=F
A={a={[1]=-.14,[2]=0,[3]=-.17,[4]=0,[5]=-.19,[6]=0},_={[1]=.01,[2]=-.01,[3]=-.03,[4]=-.06,[5]=-.09,[6]=-.11}}N={[1]=-.04}function ad(i)if i>=0 and i<3 then
return(.008*i^3-.055*i^2+.127*i+1.1)elseif i>=3 and i<4 then
return(.065*i+1.015)elseif i>=4 and i<=6 then
return .012*i^2-.097*i+1.465
else
return 0
end
end
h={_=e(as),b=e(at),a=e(ar)}function onTick()v={_=m(2),b=m(1),a=m(3)}y={_=-m(4),b=-m(5),a=m(6)}u=m(8)O=m(9)h._=0
h._=ad(u)+m(13)*.3
h.b=ac.b+(u*.34+m(13)*.3)g={_=I._*h._,b=I.b*h.b,a=I.a*h.a}if A.a[u]then
g.a=g.a+A.a[u]*h.a
end
if A._[u]then
g._=g._+A._[u]*h._
end
if N[O]then
g.a=g.a+N[O]*h.a
end
o=ae(o,y)ab=v._*h._
ai=C(r._,o._,am,"ppid")M=J(v._,-s,s)if E(not M,0,L._,"pcap")then
if M then
d._=g._-y._*10
else
d._=g._+ab
end
r._=o._
elseif D then
d._=g._+ai
else
d._=g._
end
W=v.b*h.b
T=C(r.b,o.b,X,"rpid")K=J(v.b,-s,s)if E(not K,0,L.b,"rcap")then
if K then
d.b=g.b-y.b*2
else
d.b=g.b+W
end
r.b=o.b
elseif D then
d.b=g.b+T
else
d.b=g.b
end
Y=v.a*h.a
Z=C(r.a,o.a,U,"ypid")Q=J(v.a,-s,s)if E(not Q or not M or not K,0,L.a,"ycap")then
if Q then
d.a=g.a-y.a*5
else
d.a=g.a+Y
end
r.a=o.a
elseif D then
d.a=g.a+Z
else
d.a=g.a
end
n(1,-d._+d.b)n(2,-d._)n(3,-d._-d.b)n(4,d._+d.b)n(5,d._)n(6,d._-d.b)n(7,d.a)n(8,-d.a)n(9,d.b/10)end
