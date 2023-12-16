-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2559 (2864 with comment) chars
at="Control gain yaw"
as="Control gain roll"
ar="Control gain pitch"

M=false
Q=true
S,k,ad,u=math,input,output,property
l,n,an=k.getNumber,ad.setNumber,k.getBool
e,ac=u.getNumber,u.getBool
function F(m,min,max)return m>min and m<max
end
function aq(m,min,max)return S.min(S.max(m,min),max)end
function aj(m,x)return{_=m._+x._,b=m.b+x.b,a=m.a+x.a}end
function ao(m,x,N)return m*(1-N)+x*N end
function D(T,V,ab,c)if not j then
j={}j[c]={y=0,w=0}elseif not j[c]then
j[c]={y=0,w=0}end
if T then
if j[c].y>=V then
j[c].w=ab
return Q
else
j[c].y=j[c].y+1
return M
end
else
if j[c].w==0 then
return M
else
j[c].w=j[c].w-1
return Q
end
end
end
function B(ai,af,L,c)if not f then
f={}f[c]={r=0,k=0,p=0,H=0,I=0}elseif not f[c]then
f[c]={r=0,k=0,p=0,H=0,I=0}end
f[c].r=ai-af
f[c].k=f[c].I+f[c].r
f[c].p=f[c].r-f[c].H
f[c].al=L.u*f[c].r+L.k*f[c].k+L.p*f[c].p
f[c].H=f[c].r
f[c].I=f[c].k
return f[c].al
end
U={u=e("P pitch"),k=e("I pitch"),p=e("D pitch")}am={u=e("P roll"),k=e("I roll"),p=e("D roll")}ah={u=e("P yaw"),k=e("I yaw"),p=e("D yaw")}ak={_=e(ar),b=e(as),a=e(at)}K={_=e("Pitch trim"),b=e("Roll trim"),a=e("Yaw trim")}E={_=e("Pitch PID activation delay ticks"),b=e("Roll PID activation delay ticks"),a=e("Yaw PID activation delay ticks")}t=e("Deadzone")J=ac("Use PIDs?")o={_=5,b=0,a=0}q={_=-5,b=0,a=0}d={_=0,b=0,a=0}h={}ap=M
z={a={[1]=-.14,[2]=0,[3]=-.17,[4]=0,[5]=-.19,[6]=0},_={[1]=.01,[2]=-.01,[3]=-.03,[4]=-.06,[5]=-.09,[6]=-.11}}R={[1]=-.04}function Z(i)if i>=0 and i<3 then
return(.008*i^3-.055*i^2+.127*i+1.1)elseif i>=3 and i<4 then
return(.065*i+1.015)elseif i>=4 and i<=6 then
return .012*i^2-.097*i+1.465
else
return 0
end
end
h={_=e(ar),b=e(as),a=e(at)}function onTick()s={_=l(2),b=l(1),a=l(3)}A={_=-l(4),b=-l(5),a=l(6)}v=l(8)O=l(9)h._=0
h._=Z(v)+l(13)*.3
h.b=ak.b+(v*.34+l(13)*.3)g={_=K._*h._,b=K.b*h.b,a=K.a*h.a}if z.a[v]then
g.a=g.a+z.a[v]*h.a
end
if z._[v]then
g._=g._+z._[v]*h._
end
if R[O]then
g.a=g.a+R[O]*h.a
end
o=aj(o,A)W=s._*h._
aa=B(q._,o._,U,"ppid")G=F(s._,-t,t)if D(not G,0,E._,"pcap")then
if G then
d._=g._-A._*10
else
d._=g._+W
end
q._=o._
elseif J then
d._=g._+aa
else
d._=g._
end
ag=s.b*h.b
ae=B(q.b,o.b,am,"rpid")C=F(s.b,-t,t)if D(not C,0,E.b,"rcap")then
if C then
d.b=g.b-A.b*2
else
d.b=g.b+ag
end
q.b=o.b
elseif J then
d.b=g.b+ae
else
d.b=g.b
end
Y=s.a*h.a
X=B(q.a,o.a,ah,"ypid")P=F(s.a,-t,t)if D(not P or not G or not C,0,E.a,"ycap")then
if P then
d.a=g.a-A.a*5
else
d.a=g.a+Y
end
q.a=o.a
elseif J then
d.a=g.a+X
else
d.a=g.a
end
n(1,-d._+d.b)n(2,-d._)n(3,-d._-d.b)n(4,d._+d.b)n(5,d._)n(6,d._-d.b)n(7,d.a)n(8,-d.a)n(9,d.b/10)end
