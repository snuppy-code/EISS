
s=200
aR=nil
ag=pairs
aF=false
ah=true
ar=math
aW=ar.random
ba=ar.rad
h,g,aU,aN,j,bH,bN=ar,input,output,property,screen,ah,aF
a,aY,bL,bM=g.getNumber,aU.setNumber,g.getBool,aU.setBool
bG,bC=aN.getNumber,aN.getBool
abs,cos,sin,floor,atan=h.abs,h.cos,h.sin,h.floor,h.atan
pi=h.pi
bD=pi*2
bB,bE,aj,bw,i,bF,bA,q=j.drawText,j.drawTextBox,j.drawLine,j.drawRect,j.drawRectF,j.drawCircle,j.drawClear,j.setColor
function d(e,c,b,l)return{e=e or 0,c=c or 0,b=b or 0,l=l or 0}end
function O(_,f)return d(_.e+f.e,_.c+f.c,_.b+f.b)end
function bz(_,f)return d(_.e*f.e,_.c*f.c,_.b*f.b)end
function I(_,X)return d(_.e*X,_.c*X,_.b*X)end
function br(_)return I(_,-1)end
function E(_,f)return O(_,br(f))end
function v(_)return h.sqrt(_.e*_.e+_.c*_.c+_.b*_.b)end
function bl(_,X)return I(_,1/X)end
function bI(_)return bl(_,v(_))end
function ax(_,f)return _.e*f.e+_.c*f.c+_.b*f.b
end
function aV(_,f)return d(_.c*f.b-_.b*f.c,_.b*f.e-_.e*f.b,_.e*f.c-_.c*f.e)end
function aI(r,n,W)local W=W or 1
return d(h.sin(r)*h.cos(n)*W,h.cos(r)*h.cos(n)*W,h.sin(n)*W)end
function aL(_,H)if not C then
C={}C[H]={an=d(),ak=d()}elseif not C[H]then
C[H]={an=d(),ak=d()}end
C[H].ak=E(_,C[H].an)C[H].an=_
return C[H].ak
end
function V(_,aw,ap,au)return d(ax(aw,_),ax(ap,_),ax(au,_))end
function bd(_,aw,ap,au)return O(O(I(aw,_.e),I(ap,_.c)),I(au,_.b))end
function Q(e,j,aO)return e<j and j or e>aO and aO or e
end
function S(bx,bk,bn,l,o)local bg=bn*(.025-2.2)+2.2
local bf=l/2; local aJ=o/2
local by=(bf-128*.025)/(aJ-128*.025)local aM=h.tan(bg/2); local bm=aM*by
local P=E(bx,bk)local am,at=P.c>0 and bf*(1+P.e/P.c/bm)or 0,P.c>0 and o-aJ*(1+P.b/P.c/aM)or 0
return am,at
end
function aK(aB,aE,bu,bs)ay=11
aq=ah
bv=bu-aB
bi=bs-aE
bb=bv/ay
aX=bi/ay
for g=1,ay do
if aq then
aj(aB+bb*(g-1),aE+aX*(g-1),aB+bb*g,aE+aX*g)end
aq=not aq
end
end
p={}ad=100
k=3
Z=d(0,2.625,-.5)bj=d(0,3.125,-.25)w={}for g=1,k do
w[g]={r=0,n=0}end
bc=40
M={}G={}function onTick()bh=a(28)==1
Y=.12
as=a(20)L=d(a(1),a(3),a(2))aS,aP,aH=a(4),a(5),a(6)az,aD,ao=cos(aS),cos(aP),cos(aH)b_,aC,al=sin(aS),sin(aP),sin(aH)af=d(aD*ao,-aC,aD*al)aA=d(b_*al+az*aC*ao,az*aD,-b_*ao+az*aC*al)aZ=aV(af,aA)be=I(aL(L,"myvel"),60)bo=I(aL(be,"myacc"),60)bJ=v(be)bK=v(bo)/9.81
ai=a(19)B=d(a(7),a(8),a(9))if v(B)>0 then
G[ai]={U=B,k=0}end
B=d(a(10),a(11),a(12))if v(B)>0 then
G[ai+1]={U=B,k=0}end
ai=a(21)B=d(a(13),a(14),a(15))bq=d(a(16),a(17),a(18))if v(B)>0 then
M[ai]={U=B,aG=bq,k=0}end
for m,bp in ag(G)do
G[m].k=G[m].k+1
if G[m].k>=bc then
G[m]=aR
end
end
for m,bp in ag(M)do
M[m].k=M[m].k+1
if M[m].k>=bc then
M[m]=aR
end
end
aQ=d(a(23),a(24),a(25))R=af
N=bd(aI(0,-.6*pi/4,1),af,aA,aZ)ab=aV(R,N)for g=k,2,-1 do
w[g].r=w[g-1].r
w[g].n=w[g-1].n
end
w[1].r=r or 0
w[1].n=n or 0
if as>=5 and as<2000 then
y=O(bd(O(aI(w[k].r,w[k].n,as),bj),af,aA,aZ),L)y=d(y.e,y.c,y.b<0 and 0 or y.b)if#p>0 then
av,aa=ah,0
while aa<#p and av and aa<ad do
aa=aa+1
av=v(E(p[aa],y))>5
end
bt=#p>=ad
if av then
if bt then
for g=1,ad-1 do
p[g]=p[g+1]end
p[ad]=y
else
p[#p+1]=y
end
end
else
p[1]=y
end
end
r=ba(aW(-40,40))n=ba(aW(-40,40))aY(1,r*4/pi)aY(2,n*4/pi)end
function onDraw()l,o=j.getWidth(),j.getHeight()for m,x in ag(p)do
u=E(x,L)z=v(u)if z<2000 then
t=V(u,R,N,ab)if t.c>0 then
am,at=S(t,Z,Y,l,o)q(5-z,z-5,0)if(x.b<.5)then
q(Q(s-z/10,0,s),0,Q(z/10,0,s),Q(s-z/20,0,s))else
q(Q(s-z/10,0,s),Q(z/10,0,s),0,Q(s-z/20,0,s))end
i(am-1,at,1,1)end
end
end
for m,x in ipairs(G)do
T=x.U
if T.b<0 then
T=O(T,d(0,0,9999))q(240,0,0)aT=aF
else
aT=ah
q(80,13,1,230)end
u=E(T,L)t=V(u,R,N,ab)F,D=S(t,Z,Y,l,o)A=T.b
if aT then
A=h.max(h.min(A/500,5),0)aj(F-A,D-2,F+A+1,D-2)end
bw(F-1,D-1,2,2)end
q(55,20,40,180)if v(aQ)>0 then
u=E(aQ,L)t=V(u,R,N,ab)F,D=S(t,Z,Y,l,o)aK(l/2,o,F,D)q(46,0,25,240)i(F-2,D-2,1,5)i(F+2,D-2,1,5)i(F,D,1,1)end
q(0,40,255,230)for m,x in ag(M)do
u=E(x.U,L)t=V(u,R,N,ab)K,J=S(t,Z,Y,l,o)A=x.U.b
A=h.max(h.min(A/500,5),0)aj(K-A,J-2,K+A+1,J-2)i(K,J-1,1,1)i(K+1,J,1,1)i(K,J+1,1,1)i(K-1,J,1,1)if v(x.aG)>0 then
u=E(x.aG,L)t=V(u,R,N,ab)ae,ac=S(t,Z,Y,l,o)q(30,90,255,155)aK(K,J,ae,ac)q(40,40,110,165)i(ae-2,ac-2,1,5)i(ae+2,ac-2,1,5)i(ae,ac,1,1)end
end
if bh then
q(255,0,0)i(0,0,1,o)i(l-1,0,1,o)end
end
