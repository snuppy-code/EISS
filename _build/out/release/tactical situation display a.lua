-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>


L=230
k=255
aD=nil
av=pairs
aB=table
T=false
J=true
aN=screen
S=map.mapToScreen
n,e,aE,aA,d,bk,bf=math,input,output,property,aN,J,T
_,bj,bl,bh=e.getNumber,aE.setNumber,e.getBool,aE.setBool
bc,bn=aA.getNumber,aA.getBool
abs,cos,sin,floor,atan=n.abs,n.cos,n.sin,n.floor,n.atan
pi=n.pi
I=pi*2
d=aN
aa,bi,l,aY,q,aM,bg,g=d.drawText,d.drawTextBox,d.drawLine,d.drawRect,d.drawRectF,d.drawCircle,d.drawClear,d.setColor
function v(f,i,p)return{f=f or 0,i=i or 0,p=p or 0}end
function aV(h,t)return v(h.i*t.p-h.p*t.i,h.p*t.f-h.f*t.p,h.f*t.i-h.i*t.f)end
function P(h)return n.sqrt(h.f*h.f+h.i*h.i+h.p*h.p)end
function be(h,t)return n.sqrt((h.f-t.f)^2+(h.i-t.i)^2+(h.p-t.p)^2)end
function az(h,min,max)return n.max(min,n.min(h,max))end
function bb(f)return floor(f+.5)end
function aL(aj,au,aP,aU)ar=-.9*m+50.09
ap=J
aR=aP-aj
aZ=aU-au
aH=aR/ar
ay=aZ/ar
for e=1,ar do
if ap then
l(aj+aH*(e-1),au+ay*(e-1),aj+aH*e,au+ay*e)end
ap=not ap
end
end
aX=13333
o=.03*pi
ad=.09*I+o
aC=40
G={}z={}ak=J
m,D=7,0
K={}for e=1,100 do
K[e]=T
end
function onTick()Z=v(_(1),_(3),_(2))ac=-_(27)*I
Y=-_(20)*I
V=-_(32)*I+pi
am=_(30)>0
aQ=am~=aW and am
aW=am
if aQ then
ak=not ak
end
aF=_(31)==1
aB.remove(K,1)aB.insert(K,aF)r=0
for e=1,6 do
if K[e]then
r=r+1
end
end
if r>=2 then
as=J
else
as=T
end
r=0
for e=1,26 do
if K[e]then
r=r+1
end
end
if r>=2 then
aw=J
else
aw=T
end
r=0
for e=1,100 do
if K[e]then
r=r+1
end
end
if r>=2 then
ax=J
else
ax=T
end
af=v(_(23),_(24),_(25))aK,aG,aJ=_(4),_(5),_(6)ai,ag,ao=cos(aK),cos(aG),cos(aJ)aI,aq,al=sin(aK),sin(aG),sin(aJ)b_=v(ag*ao,-aq,ag*al)ah=v(aI*al+ai*aq*ao,ai*ag,-aI*ao+ai*aq*al)bm=aV(b_,ah)W=_(19)x=v(_(7),_(8),_(9))if P(x)>0 then
z[W]={A=x,B=0}end
x=v(_(10),_(11),_(12))if P(x)>0 then
z[W+1]={A=x,B=0}end
W=_(21)x=v(_(13),_(14),_(15))aT=v(_(16),_(17),_(18))if P(x)>0 then
G[W]={A=x,an=aT,B=0}end
for s,aS in av(z)do
z[s].B=z[s].B+1
if z[s].B>=aC then
z[s]=aD
end
end
for s,aS in av(G)do
G[s].B=G[s].B+1
if G[s].B>=aC then
G[s]=aD
end
end
aO=_(29)==1
if aO then
Q=_(26)else
Q=0
end
if Q<.01 and Q>-.01 then
D=D-D/5
else
D=az((D+Q/160),-.1,.1)end
if m>=50 then D=0 end
m=az(m+(Q/55*m/2.4)+D*m/2.4,.1,50)c=-atan(ah.f,ah.i)+pi
M,N=Z.f,Z.i
end
function onDraw()H,R=d.getWidth(),d.getHeight()if H>32 then
if ak then
d.setMapColorOcean(0,0,0)d.setMapColorShallows(2,2,2)d.setMapColorLand(7,7,7)d.setMapColorGrass(8,10,8)d.setMapColorSand(6,6,4)d.setMapColorSnow(25,25,26)d.bd(3,3,3)d.ba(4,4,4)d.drawMap(M,N,m)end
a,b=S(M,N,m,H,R,Z.f,Z.i)O=m/H
at=m/50
j=(aX/1000)/O
for e=0,2 do
U=5+10*e
g(k,k,k,7-at*3)aM(a,b,U/O)g(k,k,k,11-at*2)aa(a+U/O-(5*(#tostring(U))),b,U)end
g(k,k,k,4-at*2)for e=1,8 do
l(a,b,a+sin(e*I/8)*120/O,b+cos(e*I/8)*120/O)end
g(80,k,0,38)l(a,b,a+sin(ac+c-o)*j,b+cos(ac+c-o)*j)l(a,b,a+sin(ac+c+o)*j,b+cos(ac+c+o)*j)l(a,b,a+sin(Y+c-o)*j,b+cos(Y+c-o)*j)l(a,b,a+sin(Y+c+o)*j,b+cos(Y+c+o)*j)l(a,b,a+sin(V+c-o)*j,b+cos(V+c-o)*j)l(a,b,a+sin(V+c+o)*j,b+cos(V+c+o)*j)g(0,k,0,8)aM(a,b,j)l(a,b,a+sin(-ad+c)*j,b+cos(-ad+c)*j)l(a,b,a+sin(ad+c)*j,b+cos(ad+c)*j)g(22,22,22)l(a,b,a+sin(-.97+c)*22,b+cos(-.97+c)*22)l(a,b,a+sin(.97+c)*22,b+cos(.97+c)*22)l(a,b,a+sin(c)*9,b+cos(c)*9)for s,u in ipairs(z)do
y,C=S(M,N,m,H,R,u.A.f,u.A.i)g(80,13,1)w=u.A.p
w=n.max(n.min(w/500,5),0)l(y-w,C-2,y+w+1,C-2)aY(y-1,C-1,2,2)end
if P(af)>0 then
y,C=S(M,N,m,H,R,af.f,af.i)g(55,20,40,70)aL(a,b,y,C)g(46,0,25)q(y-2,C-2,1,5)q(y+2,C-2,1,5)q(y,C,1,1)end
g(0,40,k)for s,u in av(G)do
F,E=S(M,N,m,H,R,u.A.f,u.A.i)w=u.A.p
w=n.max(n.min(w/500,5),0)l(F-w,E-2,F+w+1,E-2)q(F,E-1,1,1)q(F+1,E,1,1)q(F,E+1,1,1)q(F-1,E,1,1)if P(u.an)>0 then
ab,X=S(M,N,m,H,R,u.an.f,u.an.i)g(30,90,k,30)aL(F,E,ab,X)g(40,40,110,30)q(ab-2,X-2,1,5)q(ab+2,X-2,1,5)q(ab,X,1,1)end
end
if aO then
g(1,1,1,200)q(13,2,12,5)g(85,160,35)aa(13,2,"SOI")end
else
ae=""
if as then
g(k,0,0)ae="MSSLE"
elseif aw then
g(239,38,0)ae="TRACK"
elseif ax then
g(k,135,0)ae="WARN"
end
if as or aw or ax then
q(0,0,32,32)g(L,L,L)aa(4,12,ae)end
if aF then
g(L,L,L)aa(6,2,"PING")end
end
end
