-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2316 (2650 with comment) chars

G=false
P=true
S,i,V,t=math,input,output,property
o,k,ao=i.getNumber,V.setNumber,i.getBool
e,ae=t.getNumber,t.getBool
af={t=e("P pitch"),i=e("I pitch"),n=e("D pitch")}ad={t=e("P roll"),i=e("I roll"),n=e("D roll")}aj={t=e("P yaw"),i=e("I yaw"),n=e("D yaw")}A={_=e("Control gain pitch"),a=e("Control gain roll"),b=e("Control gain yaw")}E={_=e("Control gain pitch loaded"),a=e("Control gain roll loaded"),b=e("Control gain yaw loaded")}y={_=e("Pitch trim"),a=e("Roll trim"),b=e("Yaw trim")}O={_=e("Pitch PID activation delay ticks"),a=e("Roll PID activation delay ticks"),b=e("Yaw PID activation delay ticks")}m={}s=e("Deadzone")I=ae("Use PIDs?")R={[0]=-.045,[1]=-.18,[2]=-.04,[3]=-.2,[4]=-.045,[5]=-.215,[6]=-.04,[7]=-.225,[8]=-.045}function M(j,min,max)return j>min and j<max
end
function ap(j,min,max)return S.min(S.max(j,min),max)end
function ai(j,u)return{_=j._+u._,a=j.a+u.a,b=j.b+u.b}end
function D(j,u,T)return j*(1-T)+u*T end
function C(Y,ab,aa,c)if not h then
h={}h[c]={w=0,v=0}elseif not h[c]then
h[c]={w=0,v=0}end
if Y then
if h[c].w>=ab then
h[c].v=aa
return P
else
h[c].w=h[c].w+1
return G
end
else
if h[c].v==0 then
return G
else
h[c].v=h[c].v-1
return P
end
end
end
function N(X,ag,z,c)if not f then
f={}f[c]={q=0,i=0,n=0,B=0,H=0}elseif not f[c]then
f[c]={q=0,i=0,n=0,B=0,H=0}end
f[c].q=X-ag
f[c].i=f[c].H+f[c].q
f[c].n=f[c].q-f[c].B
f[c].al=z.t*f[c].q+z.i*f[c].i+z.n*f[c].n
f[c].B=f[c].q
f[c].H=f[c].i
return f[c].al
end
l={_=5,a=0,b=0}r={_=-5,a=0,b=0}d={_=0,a=0,b=0}am=G
an=8
function onTick()p={_=o(2),a=o(1),b=o(3)}x={_=-o(4),a=-o(5),b=o(6)}L=o(8)F=L/8
m={_=D(A._,E._,F),a=D(A.a,E.a,F),b=D(A.b,E.b,F)}g={_=y._*m._,a=y.a*m.a,b=y.b*m.b}if R[L]then
g.b=g.b+R[L]*m.b
end
l=ai(l,x)W=p._*m._
ak=N(r._,l._,af,"ppid")J=M(p._,-s,s)if C(not J,0,O._,"pcap")then
if J then
d._=g._-x._*10
else
d._=g._+W
end
r._=l._
elseif I then
d._=g._+ak
else
d._=g._
end
U=p.a*m.a
ah=N(r.a,l.a,ad,"rpid")K=M(p.a,-s,s)if C(not K,0,O.a,"rcap")then
if K then
d.a=g.a-x.a*2
else
d.a=g.a+U
end
r.a=l.a
elseif I then
d.a=g.a+ah
else
d.a=g.a
end
ac=p.b*m.b
Z=N(r.b,l.b,aj,"ypid")Q=M(p.b,-s,s)if C(not Q or not J or not K,0,O.b,"ycap")then
if Q then
d.b=g.b-x.b*5
else
d.b=g.b+ac
end
r.b=l.b
elseif I then
d.b=g.b+Z
else
d.b=g.b
end
k(1,-d._+d.a)k(2,-d._)k(3,-d._-d.a)k(4,d._+d.a)k(5,d._)k(6,d._-d.a)k(7,d.b)k(8,-d.b)k(9,d.a/10)end
