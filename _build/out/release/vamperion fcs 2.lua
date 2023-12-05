-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2314 (2681 with comment) chars

D=false
P=true
Q,i,al,p=math,input,output,property
n,l,am=i.getNumber,al.setNumber,i.getBool
e,X=p.getNumber,p.getBool
ad={p=e("P pitch"),i=e("I pitch"),o=e("D pitch")}ag={p=e("P roll"),i=e("I roll"),o=e("D roll")}W={p=e("P yaw"),i=e("I yaw"),o=e("D yaw")}C={_=e("Control gain pitch"),a=e("Control gain roll"),b=e("Control gain yaw")}O={_=e("Control gain pitch loaded"),a=e("Control gain roll loaded"),b=e("Control gain yaw loaded")}K={_=e("Pitch trim"),a=e("Roll trim"),b=e("Yaw trim")}E={_=e("Pitch PID activation delay ticks"),a=e("Roll PID activation delay ticks"),b=e("Yaw PID activation delay ticks")}j={}s=e("Deadzone")J=X("Use PIDs?")function I(k,min,max)return k>min and k<max
end
function an(k,min,max)return Q.min(Q.max(k,min),max)end
function ak(k,v)return{_=k._+v._,a=k.a+v.a,b=k.b+v.b}end
function G(k,v,S)return k*(1-S)+v*S end
function B(aj,ai,ah,c)if not h then
h={}h[c]={x=0,u=0}elseif not h[c]then
h[c]={x=0,u=0}end
if aj then
if h[c].x>=ai then
h[c].u=ah
return P
else
h[c].x=h[c].x+1
return D
end
else
if h[c].u==0 then
return D
else
h[c].u=h[c].u-1
return P
end
end
end
function A(ab,ae,H,c)if not f then
f={}f[c]={r=0,i=0,o=0,z=0,N=0}elseif not f[c]then
f[c]={r=0,i=0,o=0,z=0,N=0}end
f[c].r=ab-ae
f[c].i=f[c].N+f[c].r
f[c].o=f[c].r-f[c].z
f[c].V=H.p*f[c].r+H.i*f[c].i+H.o*f[c].o
f[c].z=f[c].r
f[c].N=f[c].i
return f[c].V
end
m={_=5,a=0,b=0}t={_=-5,a=0,b=0}d={_=0,a=0,b=0}ap=D
ao=8
function onTick()q={_=n(2),a=n(1),b=n(3)}y={_=-n(5),a=-n(6),b=n(7)}R=n(8)if R<=145 then
w=20
else
w=.51/(1-3.64*(2.71828^(-.01*R)))end
debug.log("spdfactor: "..w)F=n(9)/8
j={_=G(C._,O._,F),a=G(C.a,O.a,F),b=G(C.b,O.b,F)}g={_=K._*j._,a=K.a*j.a,b=K.b*j.b}j={_=j._*w,a=j.a*w,b=j.b*w}m=ak(m,y)ac=q._*j._
af=A(t._,m._,ad,"ppid")M=I(q._,-s,s)if B(not M,0,E._,"pcap")then
if M then
d._=g._-y._*10
else
d._=g._+ac
end
t._=m._
elseif J then
d._=g._+af
else
d._=g._
end
aa=q.a*j.a
Y=A(t.a,m.a,ag,"rpid")L=I(q.a,-s,s)if B(not L,0,E.a,"rcap")then
if L then
d.a=g.a-y.a*2
else
d.a=g.a+aa
end
t.a=m.a
elseif J then
d.a=g.a+Y
else
d.a=g.a
end
U=q.b*j.b
Z=A(t.b,m.b,W,"ypid")T=I(q.b,-s,s)if B(not T or not M or not L,0,E.b,"ycap")then
if T then
d.b=g.b-y.b*5
else
d.b=g.b+U
end
t.b=m.b
elseif J then
d.b=g.b+Z
else
d.b=g.b
end
l(1,-d._+d.a)l(2,-d._)l(3,-d._-d.a)l(4,d._+d.a)l(5,d._)l(6,d._-d.a)l(7,d.b)l(8,-d.b)l(9,d.a/10)end
