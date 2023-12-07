-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2287 (2621 with comment) chars

A=false
R=true
T,j,W,s=math,input,output,property
m,l,ao=j.getNumber,W.setNumber,j.getBool
e,Y=s.getNumber,s.getBool
Z={s=e("P pitch"),j=e("I pitch"),o=e("D pitch")}aa={s=e("P roll"),j=e("I roll"),o=e("D roll")}ad={s=e("P yaw"),j=e("I yaw"),o=e("D yaw")}M={_=e("Control gain pitch"),a=e("Control gain roll"),b=e("Control gain yaw")}N={_=e("Control gain pitch loaded"),a=e("Control gain roll loaded"),b=e("Control gain yaw loaded")}D={_=e("Pitch trim"),a=e("Roll trim"),b=e("Yaw trim")}C={_=e("Pitch PID activation delay ticks"),a=e("Roll PID activation delay ticks"),b=e("Yaw PID activation delay ticks")}i={}p=e("Deadzone")G=Y("Use PIDs?")function I(k,min,max)return k>min and k<max
end
function an(k,min,max)return T.min(T.max(k,min),max)end
function ak(k,v)return{_=k._+v._,a=k.a+v.a,b=k.b+v.b}end
function L(k,v,Q)return k*(1-Q)+v*Q end
function K(X,af,al,c)if not h then
h={}h[c]={w=0,u=0}elseif not h[c]then
h[c]={w=0,u=0}end
if X then
if h[c].w>=af then
h[c].u=al
return R
else
h[c].w=h[c].w+1
return A
end
else
if h[c].u==0 then
return A
else
h[c].u=h[c].u-1
return R
end
end
end
function H(ae,aj,B,c)if not f then
f={}f[c]={r=0,j=0,o=0,F=0,O=0}elseif not f[c]then
f[c]={r=0,j=0,o=0,F=0,O=0}end
f[c].r=ae-aj
f[c].j=f[c].O+f[c].r
f[c].o=f[c].r-f[c].F
f[c].ah=B.s*f[c].r+B.j*f[c].j+B.o*f[c].o
f[c].F=f[c].r
f[c].O=f[c].j
return f[c].ah
end
n={_=5,a=0,b=0}q={_=-5,a=0,b=0}d={_=0,a=0,b=0}ap=A
am=8
function onTick()t={_=m(2),a=m(1),b=m(3)}y={_=-m(5),a=-m(6),b=m(7)}S=m(8)if S<=145 then
x=20
else
x=.51/(1-3.64*(2.71828^(-.01*S)))end
E=m(9)/8
i={_=L(M._,N._,E),a=L(M.a,N.a,E),b=L(M.b,N.b,E)}g={_=D._*i._,a=D.a*i.a,b=D.b*i.b}i={_=i._*x,a=i.a*x,b=i.b*x}n=ak(n,y)V=t._*i._
ai=H(q._,n._,Z,"ppid")z=I(t._,-p,p)if K(not z,0,C._,"pcap")then
if z then
d._=g._-y._*10
else
d._=g._+V
end
q._=n._
elseif G then
d._=g._+ai
else
d._=g._
end
ag=t.a*i.a
ac=H(q.a,n.a,aa,"rpid")J=I(t.a,-p,p)if K(not J,0,C.a,"rcap")then
if J then
d.a=g.a-y.a*2
else
d.a=g.a+ag
end
q.a=n.a
elseif G then
d.a=g.a+ac
else
d.a=g.a
end
ab=t.b*i.b
U=H(q.b,n.b,ad,"ypid")P=I(t.b,-p,p)if K(not P or not z or not J,0,C.b,"ycap")then
if P then
d.b=g.b-y.b*5
else
d.b=g.b+ab
end
q.b=n.b
elseif G then
d.b=g.b+U
else
d.b=g.b
end
l(1,-d._+d.a)l(2,-d._)l(3,-d._-d.a)l(4,d._+d.a)l(5,d._)l(6,d._-d.a)l(7,d.b)l(8,-d.b)l(9,d.a/10)end
