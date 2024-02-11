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

B=false
Q=true
S,k,af,t=math,input,output,property
m,n,an=k.getNumber,af.setNumber,k.getBool
e,al=t.getNumber,t.getBool
function H(l,min,max)return l>min and l<max
end
function ap(l,min,max)return S.min(S.max(l,min),max)end
function aj(l,w)return{_=l._+w._,b=l.b+w.b,a=l.a+w.a}end
function ao(l,w,O)return l*(1-O)+w*O end
function G(ag,Z,ah,c)if not j then
j={}j[c]={z=0,x=0}elseif not j[c]then
j[c]={z=0,x=0}end
if ag then
if j[c].z>=Z then
j[c].x=ah
return Q
else
j[c].z=j[c].z+1
return B
end
else
if j[c].x==0 then
return B
else
j[c].x=j[c].x-1
return Q
end
end
end
function J(V,ae,K,c)if not f then
f={}f[c]={s=0,k=0,p=0,C=0,D=0}elseif not f[c]then
f[c]={s=0,k=0,p=0,C=0,D=0}end
f[c].s=V-ae
f[c].k=f[c].D+f[c].s
f[c].p=f[c].s-f[c].C
f[c].ab=K.t*f[c].s+K.k*f[c].k+K.p*f[c].p
f[c].C=f[c].s
f[c].D=f[c].k
return f[c].ab
end
W={t=e("P pitch"),k=e("I pitch"),p=e("D pitch")}ad={t=e("P roll"),k=e("I roll"),p=e("D roll")}aa={t=e("P yaw"),k=e("I yaw"),p=e("D yaw")}Y={_=e(ar),b=e(as),a=e(at)}F={_=e("Pitch trim"),b=e("Roll trim"),a=e("Yaw trim")}E={_=e("Pitch PID activation delay ticks"),b=e("Roll PID activation delay ticks"),a=e("Yaw PID activation delay ticks")}r=e("Deadzone")I=al("Use PIDs?")o={_=5,b=0,a=0}q={_=-5,b=0,a=0}d={_=0,b=0,a=0}h={}aq=B
A={a={[1]=-.14,[2]=0,[3]=-.17,[4]=0,[5]=-.19,[6]=0},_={[1]=.01,[2]=-.01,[3]=-.03,[4]=-.06,[5]=-.09,[6]=-.11}}N={[1]=-.04}function am(i)if i>=0 and i<3 then
return(.008*i^3-.055*i^2+.127*i+1.1)elseif i>=3 and i<4 then
return(.065*i+1.015)elseif i>=4 and i<=6 then
return .012*i^2-.097*i+1.465
else
return 0
end
end
h={_=e(ar),b=e(as),a=e(at)}function onTick()u={_=m(2),b=m(1),a=m(3)}y={_=-m(4),b=-m(5),a=m(6)}v=m(8)R=m(9)h._=0
h._=am(v)+m(13)*.3
h.b=Y.b+(v*.34+m(13)*.3)g={_=F._*h._,b=F.b*h.b,a=F.a*h.a}if A.a[v]then
g.a=g.a+A.a[v]*h.a
end
if A._[v]then
g._=g._+A._[v]*h._
end
if N[R]then
g.a=g.a+N[R]*h.a
end
o=aj(o,y)U=u._*h._
ak=J(q._,o._,W,"ppid")L=H(u._,-r,r)if G(not L,0,E._,"pcap")then
if L then
d._=g._-y._*10
else
d._=g._+U
end
q._=o._
elseif I then
d._=g._+ak
else
d._=g._
end
ai=u.b*h.b
T=J(q.b,o.b,ad,"rpid")M=H(u.b,-r,r)if G(not M,0,E.b,"rcap")then
if M then
d.b=g.b-y.b*2
else
d.b=g.b+ai
end
q.b=o.b
elseif I then
d.b=g.b+T
else
d.b=g.b
end
X=u.a*h.a
ac=J(q.a,o.a,aa,"ypid")P=H(u.a,-r,r)if G(not P or not L or not M,0,E.a,"ycap")then
if P then
d.a=g.a-y.a*5
else
d.a=g.a+X
end
q.a=o.a
elseif I then
d.a=g.a+ac
else
d.a=g.a
end
n(1,-d._+d.b)n(2,-d._)n(3,-d._-d.b)n(4,d._+d.b)n(5,d._)n(6,d._-d.b)n(7,d.a)n(8,-d.a)n(9,d.b/10)end
