-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>


M=230
l=255
aN=nil
at=pairs
aJ=table
T=false
I=true
aB=screen
R=map.mapToScreen
m,e,aM,aH,h,bi,bj=math,input,output,property,aB,I,T
_,be,bd,bf=e.getNumber,aM.setNumber,e.getBool,aM.setBool
bg,bb=aH.getNumber,aH.getBool
abs,cos,sin,floor,atan=m.abs,m.cos,m.sin,m.floor,m.atan
pi=m.pi
K=pi*2
h=aB
ae,bc,k,aZ,q,az,ba,d=h.drawText,h.drawTextBox,h.drawLine,h.drawRect,h.drawRectF,h.drawCircle,h.drawClear,h.setColor
function w(f,j,p)return{f=f or 0,j=j or 0,p=p or 0}end
function aP(g,u)return w(g.j*u.p-g.p*u.j,g.p*u.f-g.f*u.p,g.f*u.j-g.j*u.f)end
function S(g)return m.sqrt(g.f*g.f+g.j*g.j+g.p*g.p)end
function bh(g,u)return m.sqrt((g.f-u.f)^2+(g.j-u.j)^2+(g.p-u.p)^2)end
function aF(g,min,max)return m.max(min,m.min(g,max))end
function bl(f)return floor(f+.5)end
function ay(av,ao,aS,aW)ak=-.9*n+50.09
ah=I
aV=aS-av
b_=aW-ao
aD=aV/ak
aL=b_/ak
for e=1,ak do
if ah then
k(av+aD*(e-1),ao+aL*(e-1),av+aD*e,ao+aL*e)end
ah=not ah
end
end
aR=13333
o=.03*pi
Z=.09*K+o
aI=40
G={}x={}al=I
n,F=7,0
L={}for e=1,100 do
L[e]=T
end
function onTick()aa=w(_(1),_(3),_(2))X=-_(27)*K
ac=-_(20)*K
W=-_(32)*K+pi
af=_(30)>0
aQ=af~=aY and af
aY=af
if aQ then
al=not al
end
aA=_(31)==1
aJ.remove(L,1)aJ.insert(L,aA)s=0
for e=1,6 do
if L[e]then
s=s+1
end
end
if s>=2 then
aq=I
else
aq=T
end
s=0
for e=1,26 do
if L[e]then
s=s+1
end
end
if s>=2 then
aj=I
else
aj=T
end
s=0
for e=1,100 do
if L[e]then
s=s+1
end
end
if s>=2 then
au=I
else
au=T
end
ai=w(_(23),_(24),_(25))aK,aG,aE=_(4),_(5),_(6)as,ax,ap=cos(aK),cos(aG),cos(aE)aC,ag,am=sin(aK),sin(aG),sin(aE)aX=w(ax*ap,-ag,ax*am)aw=w(aC*am+as*ag*ap,as*ax,-aC*ap+as*ag*am)bk=aP(aX,aw)U=_(19)B=w(_(7),_(8),_(9))if S(B)>0 then
x[U]={A=B,z=0}end
B=w(_(10),_(11),_(12))if S(B)>0 then
x[U+1]={A=B,z=0}end
U=_(21)B=w(_(13),_(14),_(15))aU=w(_(16),_(17),_(18))if S(B)>0 then
G[U]={A=B,ar=aU,z=0}end
for r,aT in at(x)do
x[r].z=x[r].z+1
if x[r].z>=aI then
x[r]=aN
end
end
for r,aT in at(G)do
G[r].z=G[r].z+1
if G[r].z>=aI then
G[r]=aN
end
end
aO=_(29)==1
if aO then
O=_(26)else
O=0
end
if O<.01 and O>-.01 then
F=F-F/5
else
F=aF((F+O/160),-.1,.1)end
if n>=50 then F=0 end
n=aF(n+(O/55*n/2.4)+F*n/2.4,.1,50)c=-atan(aw.f,aw.j)+pi
J,N=aa.f,aa.j
end
function onDraw()E,P=h.getWidth(),h.getHeight()if E>32 then
if al then
h.setMapColorOcean(0,0,0)h.setMapColorShallows(2,2,2)h.setMapColorLand(7,7,7)h.setMapColorGrass(8,10,8)h.setMapColorSand(6,6,4)h.setMapColorSnow(25,25,26)h.drawMap(J,N,n)end
b,a=R(J,N,n,E,P,aa.f,aa.j)Q=n/E
an=n/50
i=(aR/1000)/Q
for e=0,2 do
Y=5+10*e
d(l,l,l,7-an*3)az(b,a,Y/Q)d(l,l,l,11-an*2)ae(b+Y/Q-(5*(#tostring(Y))),a,Y)end
d(l,l,l,4-an*2)for e=1,8 do
k(b,a,b+sin(e*K/8)*120/Q,a+cos(e*K/8)*120/Q)end
d(80,l,0,38)k(b,a,b+sin(X+c-o)*i,a+cos(X+c-o)*i)k(b,a,b+sin(X+c+o)*i,a+cos(X+c+o)*i)k(b,a,b+sin(ac+c-o)*i,a+cos(ac+c-o)*i)k(b,a,b+sin(ac+c+o)*i,a+cos(ac+c+o)*i)k(b,a,b+sin(W+c-o)*i,a+cos(W+c-o)*i)k(b,a,b+sin(W+c+o)*i,a+cos(W+c+o)*i)d(0,l,0,8)az(b,a,i)k(b,a,b+sin(-Z+c)*i,a+cos(-Z+c)*i)k(b,a,b+sin(Z+c)*i,a+cos(Z+c)*i)d(22,22,22)k(b,a,b+sin(-.97+c)*22,a+cos(-.97+c)*22)k(b,a,b+sin(.97+c)*22,a+cos(.97+c)*22)k(b,a,b+sin(c)*9,a+cos(c)*9)for r,t in ipairs(x)do
C,y=R(J,N,n,E,P,t.A.f,t.A.j)v=t.A.p
if v<0 then
d(240,0,0)else
d(80,13,1)v=m.max(m.min(v/500,5),0)k(C-v,y-2,C+v+1,y-2)end
aZ(C-1,y-1,2,2)end
if S(ai)>0 then
C,y=R(J,N,n,E,P,ai.f,ai.j)d(55,20,40,70)ay(b,a,C,y)d(46,0,25)q(C-2,y-2,1,5)q(C+2,y-2,1,5)q(C,y,1,1)end
d(0,40,l)for r,t in at(G)do
H,D=R(J,N,n,E,P,t.A.f,t.A.j)v=t.A.p
v=m.max(m.min(v/500,5),0)k(H-v,D-2,H+v+1,D-2)q(H,D-1,1,1)q(H+1,D,1,1)q(H,D+1,1,1)q(H-1,D,1,1)if S(t.ar)>0 then
ab,ad=R(J,N,n,E,P,t.ar.f,t.ar.j)d(30,90,l,30)ay(H,D,ab,ad)d(40,40,110,30)q(ab-2,ad-2,1,5)q(ab+2,ad-2,1,5)q(ab,ad,1,1)end
end
if aO then
d(1,1,1,200)q(13,2,12,5)d(85,160,35)ae(13,2,"SOI")end
else
V=""
if aq then
d(l,0,0)V="MSSLE"
elseif aj then
d(239,38,0)V="TRACK"
elseif au then
d(l,135,0)V="WARN"
end
if aq or aj or au then
q(0,0,32,32)d(M,M,M)ae(4,12,V)end
if aA then
d(M,M,M)ae(6,2,"PING")end
end
end
