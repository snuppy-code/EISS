-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3339 (3673 with comment) chars

n=200
av=nil
ae=pairs
ax=true
S=math
an=S.random
aw=S.rad
g,j,ao,ar,h,bm,bu=S,input,output,property,screen,ax,false
a,ap,bs,br=j.getNumber,ao.setNumber,j.getBool,ao.setBool
bp,bl=ar.getNumber,ar.getBool
abs,cos,sin,floor,atan=g.abs,g.cos,g.sin,g.floor,g.atan
pi=g.pi
bn=pi*2
am,bf,bo,bj,G,bi,bk,C=h.drawText,h.drawTextBox,h.drawLine,h.drawRect,h.drawRectF,h.drawCircle,h.drawClear,h.setColor
function d(b,c,e,o)return{b=b or 0,c=c or 0,e=e or 0,o=o or 0}end
function E(_,f)return d(_.b+f.b,_.c+f.c,_.e+f.e)end
function bq(_,f)return d(_.b*f.b,_.c*f.c,_.e*f.e)end
function z(_,I)return d(_.b*I,_.c*I,_.e*I)end
function aO(_)return z(_,-1)end
function L(_,f)return E(_,aO(f))end
function t(_)return g.sqrt(_.b*_.b+_.c*_.c+_.e*_.e)end
function aN(_,I)return z(_,1/I)end
function bt(_)return aN(_,t(_))end
function ad(_,f)return _.b*f.b+_.c*f.c+_.e*f.e
end
function al(_,f)return d(_.c*f.e-_.e*f.c,_.e*f.b-_.b*f.e,_.b*f.c-_.c*f.b)end
function ah(m,k,H)local H=H or 1
return d(g.sin(m)*g.cos(k)*H,g.cos(m)*g.cos(k)*H,g.sin(k)*H)end
function aE(_,x)if not u then
u={}u[x]={W=d(),ab=d()}elseif not u[x]then
u[x]={W=d(),ab=d()}end
u[x].ab=L(_,u[x].W)u[x].W=_
return u[x].ab
end
function aR(_,Q,X,T)return d(ad(Q,_),ad(X,_),ad(T,_))end
function aG(_,Q,X,T)return E(E(z(Q,_.b),z(X,_.c)),z(T,_.e))end
function B(b,h,as)return b<h and h or b>as and as or b
end
function be(aM,aZ,aU,o,w)local aL=aU*(.025-2.2)+2.2
local aD=o/2; local aC=w/2
local aX=(aD-128*.025)/(aC-128*.025)local ai=g.tan(aL/2); local ba=ai*aX
local A=L(aM,aZ)local O,V=A.c>0 and aD*(1+A.b/A.c/ba)or 0,A.c>0 and w-aC*(1+A.e/A.c/ai)or 0
return O,V
end
l={}M=100
i=3
aT=d(0,2.625,-.5)bc=d(0,3.125,-.25)q={}for j=1,i do
q[j]={m=0,k=0}end
aq=10
D={}y={}function onTick()aQ=a(28)==1
aK=.12
Y=a(20)N=d(a(1),a(3),a(2))au,ay,aB=a(4),a(5),a(6)P,Z,U=cos(au),cos(ay),cos(aB)aF,aa,R=sin(au),sin(ay),sin(aB)K=d(Z*U,-aa,Z*R)ag=d(aF*R+P*aa*U,P*Z,-aF*U+P*aa*R)aJ=al(K,ag)ak=z(aE(N,"myvel"),60)b_=z(aE(ak,"myacc"),60)aY=t(ak)bb=t(b_)/9.81
J=a(19)v=d(a(7),a(8),a(9))if t(v)>0 then
y[J]={at=v,i=0}end
v=d(a(10),a(11),a(12))if t(v)>0 then
y[J+1]={at=v,i=0}end
J=a(21)v=d(a(13),a(14),a(15))aS=d(a(16),a(17),a(18))if t(v)>0 then
D[J]={at=v,bg=aS,i=0}end
for p,bd in ae(y)do
y[p].i=y[p].i+1
if y[p].i>=aq then
y[p]=av
end
end
for p,bd in ae(D)do
D[p].i=D[p].i+1
if D[p].i>=aq then
D[p]=av
end
end
aW=d(a(23),a(24),a(25))aA=K
az=aG(ah(0,-.6*pi/4,1),K,ag,aJ)aP=al(aA,az)for j=i,2,-1 do
q[j].m=q[j-1].m
q[j].k=q[j-1].k
end
q[1].m=m or 0
q[1].k=k or 0
if Y>=5 and Y<2000 then
s=E(aG(E(ah(q[i].m,q[i].k,Y),bc),K,ag,aJ),N)s=d(s.b,s.c,s.e<0 and 0 or s.e)if#l>0 then
ac,F=ax,0
while F<#l and ac and F<M do
F=F+1
ac=t(L(l[F],s))>5
end
aV=#l>=M
if ac then
if aV then
for j=1,M-1 do
l[j]=l[j+1]end
l[M]=s
else
l[#l+1]=s
end
end
else
l[1]=s
end
end
m=aw(an(-40,40))k=aw(an(-40,40))ap(1,m*4/pi)ap(2,k*4/pi)end
function onDraw()o,w=h.getWidth(),h.getHeight()bv,bh=o/2,w/2
if aQ then
C(255,0,0)G(0,0,1,w)G(o-1,0,1,w)end
if t(aW)>0 then
C(80,13,1)G(0,0,o,3)G(0,w-3,o,3)end
C(255,120,120)am(6,6,"Gs: "..bb)am(6,12,"Spd: "..aY)af=0
for p,aj in ae(l)do
af=af+1
aI=L(aj,N)r=t(aI)if r<2000 then
aH=aR(aI,aA,az,aP)if aH.c>0 then
O,V=be(aH,aT,aK,o,w)C(5-r,r-5,0)if(aj.e<.5)then
C(B(n-r/10,0,n),0,B(r/10,0,n),B(n-r/20,0,n))else
C(B(n-r/10,0,n),B(r/10,0,n),0,B(n-r/20,0,n))end
G(O-1,V,1,1)end
end
end
debug.log(af.." points")end
