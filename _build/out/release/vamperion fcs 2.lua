-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2700 (3005 with comment) chars
au="Control gain yaw"
at="Control gain roll"
as="Control gain pitch"

M=false
T=true
P,l,ad,s=math,input,output,property
j,n,aq=l.getNumber,ad.setNumber,l.getBool
e,X=s.getNumber,s.getBool
function K(m,min,max)return m>min and m<max
end
function ar(m,min,max)return P.min(P.max(m,min),max)end
function ag(m,x)return{_=m._+x._,b=m.b+x.b,a=m.a+x.a}end
function ao(m,x,O)return m*(1-O)+x*O end
function F(V,an,am,c)if not k then
k={}k[c]={A=0,y=0}elseif not k[c]then
k[c]={A=0,y=0}end
if V then
if k[c].A>=an then
k[c].y=am
return T
else
k[c].A=k[c].A+1
return M
end
else
if k[c].y==0 then
return M
else
k[c].y=k[c].y-1
return T
end
end
end
function C(aj,Y,I,c)if not f then
f={}f[c]={q=0,l=0,p=0,H=0,J=0}elseif not f[c]then
f[c]={q=0,l=0,p=0,H=0,J=0}end
f[c].q=aj-Y
f[c].l=f[c].J+f[c].q
f[c].p=f[c].q-f[c].H
f[c].ai=I.s*f[c].q+I.l*f[c].l+I.p*f[c].p
f[c].H=f[c].q
f[c].J=f[c].l
return f[c].ai
end
ae={s=e("P pitch"),l=e("I pitch"),p=e("D pitch")}U={s=e("P roll"),l=e("I roll"),p=e("D roll")}W={s=e("P yaw"),l=e("I yaw"),p=e("D yaw")}al={_=e(as),b=e(at),a=e(au)}L={_=e("Pitch trim"),b=e("Roll trim"),a=e("Yaw trim")}E={_=e("Pitch PID activation delay ticks"),b=e("Roll PID activation delay ticks"),a=e("Yaw PID activation delay ticks")}w=e("Deadzone")N=X("Use PIDs?")o={_=5,b=0,a=0}r={_=-5,b=0,a=0}d={_=0,b=0,a=0}h={}ap=M
B={a={[1]=-.14,[2]=0,[3]=-.17,[4]=0,[5]=-.19,[6]=0},_={[1]=.01,[2]=-.01,[3]=-.03,[4]=-.06,[5]=-.09,[6]=-.11}}S={[1]=-.04}function ab(i)if i>=0 and i<3 then
return(.008*i^3-.055*i^2+.127*i+1.1)elseif i>=3 and i<4 then
return(.065*i+1.015)elseif i>=4 and i<=6 then
return .012*i^2-.097*i+1.465
else
return 0
end
end
h={_=e(as),b=e(at),a=e(au)}function onTick()u={_=j(2),b=j(1),a=j(3)}z={_=-j(4),b=-j(5),a=j(6)}t=j(7)v=j(8)Q=j(9)h._=0
h._=ab(v)+j(13)*.3
h.b=al.b+(v*.34+j(13)*.3)if t<89 then
h._=h._*4
elseif(t>=89)and(t<=250)then
h._=h._*(3.50571465e-06*t^3-1.94251309e-03*t^2+.322519926*t-12.5915429)end
local g={_=L._*h._,b=L.b*h.b,a=L.a*h.a}if B.a[v]then
g.a=g.a+B.a[v]*h.a
end
if B._[v]then
g._=g._+B._[v]*h._
end
if S[Q]then
g.a=g.a+S[Q]*h.a
end
o=ag(o,z)ah=u._*h._
af=C(r._,o._,ae,"ppid")D=K(u._,-w,w)if F(not D,0,E._,"pcap")then
if D then
d._=g._-z._*10
else
d._=g._+ah
end
r._=o._
elseif N then
d._=g._+af
else
d._=g._
end
ac=u.b*h.b
Z=C(r.b,o.b,U,"rpid")G=K(u.b,-w,w)if F(not G,0,E.b,"rcap")then
if G then
d.b=g.b-z.b*2
else
d.b=g.b+ac
end
r.b=o.b
elseif N then
d.b=g.b+Z
else
d.b=g.b
end
ak=u.a*h.a
aa=C(r.a,o.a,W,"ypid")R=K(u.a,-w,w)if F(not R or not D or not G,0,E.a,"ycap")then
if R then
d.a=g.a-z.a*5
else
d.a=g.a+ak
end
r.a=o.a
elseif N then
d.a=g.a+aa
else
d.a=g.a
end
n(1,-d._+d.b)n(2,-d._)n(3,-d._-d.b)n(4,d._+d.b)n(5,d._)n(6,d._-d.b)n(7,d.a)n(8,-d.a)n(9,d.b/10)end
