-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2559 (2864 with comment) chars
at="Control gain pitch"
as="Control gain roll"
ar="Control gain yaw"

D=false
R=true
S,j,V,u=math,input,output,property
l,n,an=j.getNumber,V.setNumber,j.getBool
e,ad=u.getNumber,u.getBool
function J(m,min,max)return m>min and m<max
end
function aq(m,min,max)return S.min(S.max(m,min),max)end
function aj(m,w)return{_=m._+w._,b=m.b+w.b,a=m.a+w.a}end
function ao(m,w,P)return m*(1-P)+w*P end
function C(ai,aa,ak,c)if not k then
k={}k[c]={z=0,x=0}elseif not k[c]then
k[c]={z=0,x=0}end
if ai then
if k[c].z>=aa then
k[c].x=ak
return R
else
k[c].z=k[c].z+1
return D
end
else
if k[c].x==0 then
return D
else
k[c].x=k[c].x-1
return R
end
end
end
function K(ac,ae,G,c)if not f then
f={}f[c]={r=0,j=0,p=0,F=0,I=0}elseif not f[c]then
f[c]={r=0,j=0,p=0,F=0,I=0}end
f[c].r=ac-ae
f[c].j=f[c].I+f[c].r
f[c].p=f[c].r-f[c].F
f[c].Y=G.u*f[c].r+G.j*f[c].j+G.p*f[c].p
f[c].F=f[c].r
f[c].I=f[c].j
return f[c].Y
end
ah={u=e("P pitch"),j=e("I pitch"),p=e("D pitch")}am={u=e("P roll"),j=e("I roll"),p=e("D roll")}ag={u=e("P yaw"),j=e("I yaw"),p=e("D yaw")}al={_=e(at),b=e(as),a=e(ar)}M={_=e("Pitch trim"),b=e("Roll trim"),a=e("Yaw trim")}B={_=e("Pitch PID activation delay ticks"),b=e("Roll PID activation delay ticks"),a=e("Yaw PID activation delay ticks")}q=e("Deadzone")H=ad("Use PIDs?")o={_=5,b=0,a=0}s={_=-5,b=0,a=0}d={_=0,b=0,a=0}h={}ap=D
A={a={[1]=-.14,[2]=0,[3]=-.17,[4]=0,[5]=-.19,[6]=0},_={[1]=.01,[2]=-.01,[3]=-.03,[4]=-.06,[5]=-.09,[6]=-.11}}Q={[1]=-.04}function U(i)if i>=0 and i<3 then
return(.008*i^3-.055*i^2+.127*i+1.1)elseif i>=3 and i<4 then
return(.065*i+1.015)elseif i>=4 and i<=6 then
return .012*i^2-.097*i+1.465
else
return 0
end
end
h={_=e(at),b=e(as),a=e(ar)}function onTick()t={_=l(2),b=l(1),a=l(3)}y={_=-l(4),b=-l(5),a=l(6)}v=l(8)N=l(9)h._=0
h._=U(v)+l(13)*.3
h.b=al.b+(v*.34+l(13)*.3)g={_=M._*h._,b=M.b*h.b,a=M.a*h.a}if A.a[v]then
g.a=g.a+A.a[v]*h.a
end
if A._[v]then
g._=g._+A._[v]*h._
end
if Q[N]then
g.a=g.a+Q[N]*h.a
end
o=aj(o,y)X=t._*h._
ab=K(s._,o._,ah,"ppid")L=J(t._,-q,q)if C(not L,0,B._,"pcap")then
if L then
d._=g._-y._*10
else
d._=g._+X
end
s._=o._
elseif H then
d._=g._+ab
else
d._=g._
end
Z=t.b*h.b
af=K(s.b,o.b,am,"rpid")E=J(t.b,-q,q)if C(not E,0,B.b,"rcap")then
if E then
d.b=g.b-y.b*2
else
d.b=g.b+Z
end
s.b=o.b
elseif H then
d.b=g.b+af
else
d.b=g.b
end
W=t.a*h.a
T=K(s.a,o.a,ag,"ypid")O=J(t.a,-q,q)if C(not O or not L or not E,0,B.a,"ycap")then
if O then
d.a=g.a-y.a*5
else
d.a=g.a+W
end
s.a=o.a
elseif H then
d.a=g.a+T
else
d.a=g.a
end
n(1,-d._+d.b)n(2,-d._)n(3,-d._-d.b)n(4,d._+d.b)n(5,d._)n(6,d._-d.b)n(7,d.a)n(8,-d.a)n(9,d.b/10)end
