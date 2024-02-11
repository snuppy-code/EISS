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
O,j,T,r=math,input,output,property
m,n,aq=j.getNumber,T.setNumber,j.getBool
e,ae=r.getNumber,r.getBool
function G(l,min,max)return l>min and l<max
end
function ap(l,min,max)return O.min(O.max(l,min),max)end
function Y(l,x)return{_=l._+x._,b=l.b+x.b,a=l.a+x.a}end
function ao(l,x,R)return l*(1-R)+x*R end
function L(ad,aa,V,c)if not k then
k={}k[c]={z=0,w=0}elseif not k[c]then
k[c]={z=0,w=0}end
if ad then
if k[c].z>=aa then
k[c].w=V
return Q
else
k[c].z=k[c].z+1
return M
end
else
if k[c].w==0 then
return M
else
k[c].w=k[c].w-1
return Q
end
end
end
function J(ab,U,C,c)if not f then
f={}f[c]={u=0,j=0,p=0,K=0,I=0}elseif not f[c]then
f[c]={u=0,j=0,p=0,K=0,I=0}end
f[c].u=ab-U
f[c].j=f[c].I+f[c].u
f[c].p=f[c].u-f[c].K
f[c].af=C.r*f[c].u+C.j*f[c].j+C.p*f[c].p
f[c].K=f[c].u
f[c].I=f[c].j
return f[c].af
end
ac={r=e("P pitch"),j=e("I pitch"),p=e("D pitch")}X={r=e("P roll"),j=e("I roll"),p=e("D roll")}W={r=e("P yaw"),j=e("I yaw"),p=e("D yaw")}ak={_=e(ar),b=e(as),a=e(at)}F={_=e("Pitch trim"),b=e("Roll trim"),a=e("Yaw trim")}D={_=e("Pitch PID activation delay ticks"),b=e("Roll PID activation delay ticks"),a=e("Yaw PID activation delay ticks")}q=e("Deadzone")H=ae("Use PIDs?")o={_=5,b=0,a=0}s={_=-5,b=0,a=0}d={_=0,b=0,a=0}h={}an=M
y={a={[1]=-.14,[2]=0,[3]=-.17,[4]=0,[5]=-.19,[6]=0},_={[1]=.01,[2]=-.01,[3]=-.03,[4]=-.06,[5]=-.09,[6]=-.11}}P={[1]=-.04}function am(i)if i>=0 and i<3 then
return(.008*i^3-.055*i^2+.127*i+1.1)elseif i>=3 and i<4 then
return(.065*i+1.015)elseif i>=4 and i<=6 then
return .012*i^2-.097*i+1.465
else
return 0
end
end
h={_=e(ar),b=e(as),a=e(at)}function onTick()t={_=m(2),b=m(1),a=m(3)}A={_=-m(4),b=-m(5),a=m(6)}v=m(8)S=m(9)h._=0
h._=am(v)+m(13)*.3
h.b=ak.b+(v*.34+m(13)*.3)g={_=F._*h._,b=F.b*h.b,a=F.a*h.a}if y.a[v]then
g.a=g.a+y.a[v]*h.a
end
if y._[v]then
g._=g._+y._[v]*h._
end
if P[S]then
g.a=g.a+P[S]*h.a
end
o=Y(o,A)ah=t._*h._
ag=J(s._,o._,ac,"ppid")B=G(t._,-q,q)if L(not B,0,D._,"pcap")then
if B then
d._=g._-A._*10
else
d._=g._+ah
end
s._=o._
elseif H then
d._=g._+ag
else
d._=g._
end
Z=t.b*h.b
ai=J(s.b,o.b,X,"rpid")E=G(t.b,-q,q)if L(not E,0,D.b,"rcap")then
if E then
d.b=g.b-A.b*2
else
d.b=g.b+Z
end
s.b=o.b
elseif H then
d.b=g.b+ai
else
d.b=g.b
end
aj=t.a*h.a
al=J(s.a,o.a,W,"ypid")N=G(t.a,-q,q)if L(not N or not B or not E,0,D.a,"ycap")then
if N then
d.a=g.a-A.a*5
else
d.a=g.a+aj
end
s.a=o.a
elseif H then
d.a=g.a+al
else
d.a=g.a
end
n(1,-d._+d.b)n(2,-d._)n(3,-d._-d.b)n(4,d._+d.b)n(5,d._)n(6,d._-d.b)n(7,d.a)n(8,-d.a)n(9,d.b/10)end
