
u=200
aP=nil
ag=pairs
bc=false
ac=true
aB=math
aV=aB.random
aQ=aB.rad
h,g,aH,aT,j,bN,bD=aB,input,output,property,screen,ac,bc
a,bf,bM,bK=g.getNumber,aH.setNumber,g.getBool,aH.setBool
bE,bH=aT.getNumber,aT.getBool
abs,cos,sin,floor,atan=h.abs,h.cos,h.sin,h.floor,h.atan
pi=h.pi
bz=pi*2
bC,bA,aq,by,k,bB,bF,q=j.drawText,j.drawTextBox,j.drawLine,j.drawRect,j.drawRectF,j.drawCircle,j.drawClear,j.setColor
function c(d,e,b,m)return{d=d or 0,e=e or 0,b=b or 0,m=m or 0}end
function P(_,f)return c(_.d+f.d,_.e+f.e,_.b+f.b)end
function bJ(_,f)return c(_.d*f.d,_.e*f.e,_.b*f.b)end
function K(_,X)return c(_.d*X,_.e*X,_.b*X)end
function bn(_)return K(_,-1)end
function G(_,f)return P(_,bn(f))end
function r(_)return h.sqrt(_.d*_.d+_.e*_.e+_.b*_.b)end
function bq(_,X)return K(_,1/X)end
function bG(_)return bq(_,r(_))end
function at(_,f)return _.d*f.d+_.e*f.e+_.b*f.b
end
function aI(_,f)return c(_.e*f.b-_.b*f.e,_.b*f.d-_.d*f.b,_.d*f.e-_.e*f.d)end
function bd(v,o,U)local U=U or 1
return c(h.sin(v)*h.cos(o)*U,h.cos(v)*h.cos(o)*U,h.sin(o)*U)end
function aR(_,I)if not E then
E={}E[I]={an=c(),ax=c()}elseif not E[I]then
E[I]={an=c(),ax=c()}end
E[I].ax=G(_,E[I].an)E[I].an=_
return E[I].ax
end
function Y(_,ak,ay,av)return c(at(ak,_),at(ay,_),at(av,_))end
function ba(_,ak,ay,av)return P(P(K(ak,_.d),K(ay,_.e)),K(av,_.b))end
function R(d,j,aY)return d<j and j or d>aY and aY or d
end
function ab(bt,bx,bu,m,p)local bh=bu*(.025-2.2)+2.2
local aG=m/2; local aW=p/2
local bw=(aG-128*.025)/(aW-128*.025)local aK=h.tan(bh/2); local bs=aK*bw
local N=G(bt,bx)local as,aD=N.e>0 and aG*(1+N.d/N.e/bs)or 0,N.e>0 and p-aW*(1+N.b/N.e/aK)or 0
return as,aD
end
function aS(ar,az,bv,bl)aA=11
aw=ac
bm=bv-ar
bk=bl-az
aU=bm/aA
be=bk/aA
for g=1,aA do
if aw then
aq(ar+aU*(g-1),az+be*(g-1),ar+aU*g,az+be*g)end
aw=not aw
end
end
n={}af=100
i=3
T=c(0,2.625,-.5)bg=c(0,3.125,-.25)z={}for g=1,i do
z[g]={v=0,o=0}end
aZ=40
J={}D={}function onTick()bi=a(28)==1
Z=.12
am=a(20)L=c(a(1),a(3),a(2))aN,aJ,aF=a(4),a(5),a(6)au,aC,al=cos(aN),cos(aJ),cos(aF)aL,aE,aj=sin(aN),sin(aJ),sin(aF)ae=c(aC*al,-aE,aC*aj)ap=c(aL*aj+au*aE*al,au*aC,-aL*al+au*aE*aj)aX=aI(ae,ap)aO=K(aR(L,"myvel"),60)bj=K(aR(aO,"myacc"),60)bL=r(aO)bI=r(bj)/9.81
ah=a(19)F=c(a(7),a(8),a(9))if r(F)>0 then
D[ah]={V=F,i=0}end
F=c(a(10),a(11),a(12))if r(F)>0 then
D[ah+1]={V=F,i=0}end
ah=a(21)F=c(a(13),a(14),a(15))br=c(a(16),a(17),a(18))if r(F)>0 then
J[ah]={V=F,bb=br,i=0}end
for l,bp in ag(D)do
D[l].i=D[l].i+1
if D[l].i>=aZ then
D[l]=aP
end
end
for l,bp in ag(J)do
J[l].i=J[l].i+1
if J[l].i>=aZ then
J[l]=aP
end
end
aM=c(a(23),a(24),a(25))O=ae
Q=ba(bd(0,-.6*pi/4,1),ae,ap,aX)S=aI(O,Q)for g=i,2,-1 do
z[g].v=z[g-1].v
z[g].o=z[g-1].o
end
z[1].v=v or 0
z[1].o=o or 0
if am>=5 and am<2000 then
x=P(ba(P(bd(z[i].v,z[i].o,am),bg),ae,ap,aX),L)x=c(x.d,x.e,x.b<0 and 0 or x.b)if#n>0 then
ao,W=ac,0
while W<#n and ao and W<af do
W=W+1
ao=r(G(n[W],x))>5
end
bo=#n>=af
if ao then
if bo then
for g=1,af-1 do
n[g]=n[g+1]end
n[af]=x
else
n[#n+1]=x
end
end
else
n[1]=x
end
end
v=aQ(aV(-40,40))o=aQ(aV(-40,40))bf(1,v*4/pi)bf(2,o*4/pi)end
function onDraw()m,p=j.getWidth(),j.getHeight()for l,A in ag(n)do
t=G(A,L)y=r(t)if y<2000 then
s=Y(t,O,Q,S)if s.e>0 then
as,aD=ab(s,T,Z,m,p)q(5-y,y-5,0)if(A.b<.5)then
q(R(u-y/10,0,u),0,R(y/10,0,u),R(u-y/20,0,u))else
q(R(u-y/10,0,u),R(y/10,0,u),0,R(u-y/20,0,u))end
k(as-1,aD,1,1)end
end
end
for l,A in ipairs(D)do
aa=A.V
if aa.b<0 then
aa=P(aa,c(0,0,9999))q(240,0,0)b_=bc
else
b_=ac
q(80,13,1,230)end
t=G(aa,L)s=Y(t,O,Q,S)C,B=ab(s,T,Z,m,p)w=aa.b
if b_ then
w=h.max(h.min(w/500,5),0)aq(C-w,B-2,C+w+1,B-2)end
by(C-1,B-1,2,2)end
q(55,20,40,180)if r(aM)>0 then
t=G(aM,L)s=Y(t,O,Q,S)C,B=ab(s,T,Z,m,p)aS(m/2,p,C,B)q(46,0,25,240)k(C-2,B-2,1,5)k(C+2,B-2,1,5)k(C,B,1,1)end
q(0,40,255,230)for l,A in ag(J)do
t=G(A.V,L)s=Y(t,O,Q,S)M,H=ab(s,T,Z,m,p)w=A.V.b
w=h.max(h.min(w/500,5),0)aq(M-w,H-2,M+w+1,H-2)k(M,H-1,1,1)k(M+1,H,1,1)k(M,H+1,1,1)k(M-1,H,1,1)if r(A.bb)>0 then
t=G(A.bb,L)s=Y(t,O,Q,S)ai,ad=ab(s,T,Z,m,p)q(30,90,255,155)aS(M,H,ai,ad)q(40,40,110,165)k(ai-2,ad-2,1,5)k(ai+2,ad-2,1,5)k(ai,ad,1,1)end
end
if bi then
q(255,0,0)k(0,0,1,p)k(m-1,0,1,p)end
end
