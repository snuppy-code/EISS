-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3221 (3526 with comment) chars

az=nil
X=pairs
aC=false
ai=true
g,y,ap,aB,h,bf,bu=math,input,output,property,screen,ai,aC
a,bk,bq,br=y.getNumber,ap.setNumber,y.getBool,ap.setBool
bp,bm=aB.getNumber,aB.getBool
abs,cos,sin,floor,atan=g.abs,g.cos,g.sin,g.floor,g.atan
pi=g.pi
bj=pi*2
bl,bo,aa,aU,i,bi,bs,t=h.drawText,h.drawTextBox,h.drawLine,h.drawRect,h.drawRectF,h.drawCircle,h.drawClear,h.setColor
function d(b,c,e,k)return{b=b or 0,c=c or 0,e=e or 0,k=k or 0}end
function O(_,f)return d(_.b+f.b,_.c+f.c,_.e+f.e)end
function bg(_,f)return d(_.b*f.b,_.c*f.c,_.e*f.e)end
function C(_,G)return d(_.b*G,_.c*G,_.e*G)end
function aY(_)return C(_,-1)end
function D(_,f)return O(_,aY(f))end
function n(_)return g.sqrt(_.b*_.b+_.c*_.c+_.e*_.e)end
function bc(_,G)return C(_,1/G)end
function bh(_)return bc(_,n(_))end
function ad(_,f)return _.b*f.b+_.c*f.c+_.e*f.e
end
function aO(_,f)return d(_.c*f.e-_.e*f.c,_.e*f.b-_.b*f.e,_.b*f.c-_.c*f.b)end
function be(aD,Y,M)local M=M or 1
return d(g.sin(aD)*g.cos(Y)*M,g.cos(aD)*g.cos(Y)*M,g.sin(Y)*M)end
function aw(_,v)if not m then
m={}m[v]={ah=d(),W=d()}elseif not m[v]then
m[v]={ah=d(),W=d()}end
m[v].W=D(_,m[v].ah)m[v].ah=_
return m[v].W
end
function V(_,al,Z,ag)return d(ad(al,_),ad(Z,_),ad(ag,_))end
function bn(_,al,Z,ag)return O(O(C(al,_.b),C(Z,_.c)),C(ag,_.e))end
function bw(b,h,aA)return b<h and h or b>aA and aA or b
end
function P(bb,bd,aM,k,p)local aN=aM*(.025-2.2)+2.2
local aJ=k/2; local aq=p/2
local aV=(aJ-128*.025)/(aq-128*.025)local av=g.tan(aN/2); local b_=av*aV
local E=D(bb,bd)local aQ,aL=E.c>0 and aJ*(1+E.b/E.c/b_)or 0,E.c>0 and p-aq*(1+E.e/E.c/av)or 0
return aQ,aL
end
function ax(ak,ac,aW,ba)aj=11
af=ai
aR=aW-ak
aP=ba-ac
at=aR/aj
ar=aP/aj
for y=1,aj do
if af then
aa(ak+at*(y-1),ac+ar*(y-1),ak+at*y,ac+ar*y)end
af=not af
end
end
Q=d(0,.875,0)aG=40
x={}r={}function onTick()aT=a(28)==1
T=.36
J=d(a(1),a(3),a(2))au,aI,aK=a(4),a(5),a(6)ao,ae,am=cos(au),cos(aI),cos(aK)aH,an,ab=sin(au),sin(aI),sin(aK)H=d(ae*am,-an,ae*ab)L=d(aH*ab+ao*an*am,ao*ae,-aH*am+ao*an*ab)N=aO(H,L)ay=C(aw(J,"myvel"),60)aS=C(aw(ay,"myacc"),60)bv=n(ay)bt=n(aS)/9.81
S=a(19)q=d(a(7),a(8),a(9))if n(q)>0 then
r[S]={K=q,o=0}end
q=d(a(10),a(11),a(12))if n(q)>0 then
r[S+1]={K=q,o=0}end
S=a(21)q=d(a(13),a(14),a(15))aZ=d(a(16),a(17),a(18))if n(q)>0 then
x[S]={K=q,aE=aZ,o=0}end
for j,aX in X(r)do
r[j].o=r[j].o+1
if r[j].o>=aG then
r[j]=az
end
end
for j,aX in X(x)do
x[j].o=x[j].o+1
if x[j].o>=aG then
x[j]=az
end
end
as=d(a(23),a(24),a(25))end
function onDraw()k,p=h.getWidth(),h.getHeight()for j,F in ipairs(r)do
I=F.K
if I.e<0 then
I=O(I,d(0,0,9999))t(240,0,0)aF=aC
else
aF=ai
t(80,13,1,230)end
B=D(I,J)A=V(B,H,L,N)u,s=P(A,Q,T,k,p)l=I.e
if aF then
l=g.max(g.min(l/500,5),0)aa(u-l,s-2,u+l+1,s-2)end
aU(u-1,s-1,2,2)end
t(55,20,40,180)if n(as)>0 then
B=D(as,J)A=V(B,H,L,N)u,s=P(A,Q,T,k,p)ax(k/2,p,u,s)t(46,0,25,240)i(u-2,s-2,1,5)i(u+2,s-2,1,5)i(u,s,1,1)end
t(0,40,255,230)for j,F in X(x)do
B=D(F.K,J)A=V(B,H,L,N)w,z=P(A,Q,T,k,p)l=F.K.e
l=g.max(g.min(l/500,5),0)aa(w-l,z-2,w+l+1,z-2)i(w,z-1,1,1)i(w+1,z,1,1)i(w,z+1,1,1)i(w-1,z,1,1)if n(F.aE)>0 then
B=D(F.aE,J)A=V(B,H,L,N)R,U=P(A,Q,T,k,p)t(30,90,255,155)ax(w,z,R,U)t(40,40,110,165)i(R-2,U-2,1,5)i(R+2,U-2,1,5)i(R,U,1,1)end
end
if aT then
t(255,0,0)i(7,4,1,88)i(88,4,1,88)end
end
