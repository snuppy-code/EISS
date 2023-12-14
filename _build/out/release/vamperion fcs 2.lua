-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2316 (2621 with comment) chars

D=false
P=true
R,i,ae,s=math,input,output,property
o,k,ap=i.getNumber,ae.setNumber,i.getBool
e,af=s.getNumber,s.getBool
aa={s=e("P pitch"),i=e("I pitch"),n=e("D pitch")}aj={s=e("P roll"),i=e("I roll"),n=e("D roll")}ak={s=e("P yaw"),i=e("I yaw"),n=e("D yaw")}H={_=e("Control gain pitch"),b=e("Control gain roll"),a=e("Control gain yaw")}N={_=e("Control gain pitch loaded"),b=e("Control gain roll loaded"),a=e("Control gain yaw loaded")}M={_=e("Pitch trim"),b=e("Roll trim"),a=e("Yaw trim")}K={_=e("Pitch PID activation delay ticks"),b=e("Roll PID activation delay ticks"),a=e("Yaw PID activation delay ticks")}m={}r=e("Deadzone")O=af("Use PIDs?")S={[0]=-.045,[1]=-.18,[2]=-.04,[3]=-.2,[4]=-.045,[5]=-.215,[6]=-.04,[7]=-.225,[8]=-.045}function z(j,min,max)return j>min and j<max
end
function am(j,min,max)return R.min(R.max(j,min),max)end
function al(j,v)return{_=j._+v._,b=j.b+v.b,a=j.a+v.a}end
function I(j,v,Q)return j*(1-Q)+v*Q end
function A(V,ag,U,c)if not h then
h={}h[c]={x=0,u=0}elseif not h[c]then
h[c]={x=0,u=0}end
if V then
if h[c].x>=ag then
h[c].u=U
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
function G(ai,Z,F,c)if not f then
f={}f[c]={p=0,i=0,n=0,C=0,L=0}elseif not f[c]then
f[c]={p=0,i=0,n=0,C=0,L=0}end
f[c].p=ai-Z
f[c].i=f[c].L+f[c].p
f[c].n=f[c].p-f[c].C
f[c].W=F.s*f[c].p+F.i*f[c].i+F.n*f[c].n
f[c].C=f[c].p
f[c].L=f[c].i
return f[c].W
end
l={_=5,b=0,a=0}t={_=-5,b=0,a=0}d={_=0,b=0,a=0}an=D
ao=8
function onTick()q={_=o(2),b=o(1),a=o(3)}w={_=-o(4),b=-o(5),a=o(6)}B=o(8)J=B/8
m={_=I(H._,N._,J),b=I(H.b,N.b,J),a=I(H.a,N.a,J)}g={_=M._*m._,b=M.b*m.b,a=M.a*m.a}if S[B]then
g.a=g.a+S[B]*m.a
end
l=al(l,w)ab=q._*m._
ad=G(t._,l._,aa,"ppid")E=z(q._,-r,r)if A(not E,0,K._,"pcap")then
if E then
d._=g._-w._*10
else
d._=g._+ab
end
t._=l._
elseif O then
d._=g._+ad
else
d._=g._
end
ac=q.b*m.b
Y=G(t.b,l.b,aj,"rpid")y=z(q.b,-r,r)if A(not y,0,K.b,"rcap")then
if y then
d.b=g.b-w.b*2
else
d.b=g.b+ac
end
t.b=l.b
elseif O then
d.b=g.b+Y
else
d.b=g.b
end
X=q.a*m.a
ah=G(t.a,l.a,ak,"ypid")T=z(q.a,-r,r)if A(not T or not E or not y,0,K.a,"ycap")then
if T then
d.a=g.a-w.a*5
else
d.a=g.a+X
end
t.a=l.a
elseif O then
d.a=g.a+ah
else
d.a=g.a
end
k(1,-d._+d.b)k(2,-d._)k(3,-d._-d.b)k(4,d._+d.b)k(5,d._)k(6,d._-d.b)k(7,d.a)k(8,-d.a)k(9,d.b/10)end
