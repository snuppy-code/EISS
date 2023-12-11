-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2316 (2621 with comment) chars

M=false
S=true
P,h,al,t=math,input,output,property
o,k,am=h.getNumber,al.setNumber,h.getBool
e,ag=t.getNumber,t.getBool
ac={t=e("P pitch"),h=e("I pitch"),n=e("D pitch")}aj={t=e("P roll"),h=e("I roll"),n=e("D roll")}Z={t=e("P yaw"),h=e("I yaw"),n=e("D yaw")}J={_=e("Control gain pitch"),a=e("Control gain roll"),b=e("Control gain yaw")}I={_=e("Control gain pitch loaded"),a=e("Control gain roll loaded"),b=e("Control gain yaw loaded")}z={_=e("Pitch trim"),a=e("Roll trim"),b=e("Yaw trim")}D={_=e("Pitch PID activation delay ticks"),a=e("Roll PID activation delay ticks"),b=e("Yaw PID activation delay ticks")}l={}s=e("Deadzone")K=ag("Use PIDs?")T={[0]=-.045,[1]=-.18,[2]=-.04,[3]=-.2,[4]=-.045,[5]=-.215,[6]=-.04,[7]=-.225,[8]=-.045}function F(j,min,max)return j>min and j<max
end
function ap(j,min,max)return P.min(P.max(j,min),max)end
function Y(j,u)return{_=j._+u._,a=j.a+u.a,b=j.b+u.b}end
function y(j,u,Q)return j*(1-Q)+u*Q end
function B(af,V,X,c)if not i then
i={}i[c]={x=0,v=0}elseif not i[c]then
i[c]={x=0,v=0}end
if af then
if i[c].x>=V then
i[c].v=X
return S
else
i[c].x=i[c].x+1
return M
end
else
if i[c].v==0 then
return M
else
i[c].v=i[c].v-1
return S
end
end
end
function A(U,ak,E,c)if not f then
f={}f[c]={r=0,h=0,n=0,O=0,H=0}elseif not f[c]then
f[c]={r=0,h=0,n=0,O=0,H=0}end
f[c].r=U-ak
f[c].h=f[c].H+f[c].r
f[c].n=f[c].r-f[c].O
f[c].ad=E.t*f[c].r+E.h*f[c].h+E.n*f[c].n
f[c].O=f[c].r
f[c].H=f[c].h
return f[c].ad
end
m={_=5,a=0,b=0}q={_=-5,a=0,b=0}d={_=0,a=0,b=0}ao=M
an=8
function onTick()p={_=o(2),a=o(1),b=o(3)}w={_=-o(4),a=-o(5),b=o(6)}G=o(8)L=G/8
l={_=y(J._,I._,L),a=y(J.a,I.a,L),b=y(J.b,I.b,L)}g={_=z._*l._,a=z.a*l.a,b=z.b*l.b}if T[G]then
g.b=g.b+T[G]*l.b
end
m=Y(m,w)aa=p._*l._
ae=A(q._,m._,ac,"ppid")C=F(p._,-s,s)if B(not C,0,D._,"pcap")then
if C then
d._=g._-w._*10
else
d._=g._+aa
end
q._=m._
elseif K then
d._=g._+ae
else
d._=g._
end
W=p.a*l.a
ab=A(q.a,m.a,aj,"rpid")N=F(p.a,-s,s)if B(not N,0,D.a,"rcap")then
if N then
d.a=g.a-w.a*2
else
d.a=g.a+W
end
q.a=m.a
elseif K then
d.a=g.a+ab
else
d.a=g.a
end
ai=p.b*l.b
ah=A(q.b,m.b,Z,"ypid")R=F(p.b,-s,s)if B(not R or not C or not N,0,D.b,"ycap")then
if R then
d.b=g.b-w.b*5
else
d.b=g.b+ai
end
q.b=m.b
elseif K then
d.b=g.b+ah
else
d.b=g.b
end
k(1,-d._+d.a)k(2,-d._)k(3,-d._-d.a)k(4,d._+d.a)k(5,d._)k(6,d._-d.a)k(7,d.b)k(8,-d.b)k(9,d.a/10)end
