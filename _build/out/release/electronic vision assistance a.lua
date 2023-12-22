-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3221 (3526 with comment) chars

aq=nil
ad=pairs
aH=false
am=true
g,x,as,az,h,be,bt=math,input,output,property,screen,am,aH
a,bm,bs,bv=x.getNumber,as.setNumber,x.getBool,as.setBool
br,bw=az.getNumber,az.getBool
abs,cos,sin,floor,atan=g.abs,g.cos,g.sin,g.floor,g.atan
pi=g.pi
bq=pi*2
bh,bu,aj,ba,i,bk,bp,u=h.drawText,h.drawTextBox,h.drawLine,h.drawRect,h.drawRectF,h.drawCircle,h.drawClear,h.setColor
function d(b,f,c,k)return{b=b or 0,f=f or 0,c=c or 0,k=k or 0}end
function R(_,e)return d(_.b+e.b,_.f+e.f,_.c+e.c)end
function bg(_,e)return d(_.b*e.b,_.f*e.f,_.c*e.c)end
function B(_,G)return d(_.b*G,_.f*G,_.c*G)end
function bd(_)return B(_,-1)end
function D(_,e)return R(_,bd(e))end
function p(_)return g.sqrt(_.b*_.b+_.f*_.f+_.c*_.c)end
function aY(_,G)return B(_,1/G)end
function bf(_)return aY(_,p(_))end
function ac(_,e)return _.b*e.b+_.f*e.f+_.c*e.c
end
function aV(_,e)return d(_.f*e.c-_.c*e.f,_.c*e.b-_.b*e.c,_.b*e.f-_.f*e.b)end
function bo(aJ,Z,I)local I=I or 1
return d(g.sin(aJ)*g.cos(Z)*I,g.cos(aJ)*g.cos(Z)*I,g.sin(Z)*I)end
function aD(_,z)if not t then
t={}t[z]={ah=d(),Y=d()}elseif not t[z]then
t[z]={ah=d(),Y=d()}end
t[z].Y=D(_,t[z].ah)t[z].ah=_
return t[z].Y
end
function U(_,an,al,X)return d(ac(an,_),ac(al,_),ac(X,_))end
function bi(_,an,al,X)return R(R(B(an,_.b),B(al,_.f)),B(X,_.c))end
function bn(b,h,aG)return b<h and h or b>aG and aG or b
end
function O(aS,b_,aP,k,r)local bb=aP*(.025-2.2)+2.2
local aB=k/2; local au=r/2
local aO=(aB-128*.025)/(au-128*.025)local aC=g.tan(bb/2); local aR=aC*aO
local F=D(aS,b_)local aZ,aN=F.f>0 and aB*(1+F.b/F.f/aR)or 0,F.f>0 and r-au*(1+F.c/F.f/aC)or 0
return aZ,aN
end
function ar(ak,ao,aU,aM)aa=11
af=am
aQ=aU-ak
aX=aM-ao
aw=aQ/aa
aF=aX/aa
for x=1,aa do
if af then
aj(ak+aw*(x-1),ao+aF*(x-1),ak+aw*x,ao+aF*x)end
af=not af
end
end
V=d(0,.875,0)aE=40
w={}m={}function onTick()aT=a(28)==1
S=.36
K=d(a(1),a(3),a(2))av,aK,aA=a(4),a(5),a(6)ag,ae,W=cos(av),cos(aK),cos(aA)at,ai,ab=sin(av),sin(aK),sin(aA)M=d(ae*W,-ai,ae*ab)L=d(at*ab+ag*ai*W,ag*ae,-at*W+ag*ai*ab)Q=aV(M,L)aI=B(aD(K,"myvel"),60)bc=B(aD(aI,"myacc"),60)bj=p(aI)bl=p(bc)/9.81
N=a(19)q=d(a(7),a(8),a(9))if p(q)>0 then
m[N]={J=q,o=0}end
q=d(a(10),a(11),a(12))if p(q)>0 then
m[N+1]={J=q,o=0}end
N=a(21)q=d(a(13),a(14),a(15))aW=d(a(16),a(17),a(18))if p(q)>0 then
w[N]={J=q,ap=aW,o=0}end
for j,aL in ad(m)do
m[j].o=m[j].o+1
if m[j].o>=aE then
m[j]=aq
end
end
for j,aL in ad(w)do
w[j].o=w[j].o+1
if w[j].o>=aE then
w[j]=aq
end
end
ax=d(a(23),a(24),a(25))end
function onDraw()k,r=h.getWidth(),h.getHeight()for j,E in ipairs(m)do
H=E.J
if H.c<0 then
H=R(H,d(0,0,9999))u(240,0,0)ay=aH
else
ay=am
u(80,13,1,230)end
v=D(H,K)C=U(v,M,L,Q)s,n=O(C,V,S,k,r)l=H.c
if ay then
l=g.max(g.min(l/500,5),0)aj(s-l,n-2,s+l+1,n-2)end
ba(s-1,n-1,2,2)end
u(55,20,40,180)if p(ax)>0 then
v=D(ax,K)C=U(v,M,L,Q)s,n=O(C,V,S,k,r)ar(k/2,r,s,n)u(46,0,25,240)i(s-2,n-2,1,5)i(s+2,n-2,1,5)i(s,n,1,1)end
u(0,40,255,230)for j,E in ad(w)do
v=D(E.J,K)C=U(v,M,L,Q)A,y=O(C,V,S,k,r)l=E.J.c
l=g.max(g.min(l/500,5),0)aj(A-l,y-2,A+l+1,y-2)i(A,y-1,1,1)i(A+1,y,1,1)i(A,y+1,1,1)i(A-1,y,1,1)if p(E.ap)>0 then
v=D(E.ap,K)C=U(v,M,L,Q)T,P=O(C,V,S,k,r)u(30,90,255,155)ar(A,y,T,P)u(40,40,110,165)i(T-2,P-2,1,5)i(T+2,P-2,1,5)i(T,P,1,1)end
end
if aT then
u(255,0,0)i(7,4,1,88)i(88,4,1,88)end
end
