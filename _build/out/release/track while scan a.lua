br=""
bq="1"

aj=ipairs
aw=tonumber
aB=string
aE=tostring
O=pairs
K=nil
au=false
q=true
aP=property
an=input
ad=table.remove
m,t,aD,aN,bf,bm,bl=math,an,output,aP,screen,q,au
e,d,bk,bo=t.getNumber,aD.setNumber,t.getBool,aD.setBool
v,bp=aN.getNumber,aN.getBool
abs,cos,sin,floor,atan=m.abs,m.cos,m.sin,m.floor,m.atan
pi=m.pi
N=pi*2
function f(k,l,i)return{k=k or 0,l=l or 0,i=i or 0}end
function C(_,c)return f(_.k+c.k,_.l+c.l,_.i+c.i)end
function bd(_,c)return f(_.k*c.k,_.l*c.l,_.i*c.i)end
function z(_,F)return f(_.k*F,_.l*F,_.i*F)end
function aY(_)return z(_,-1)end
function A(_,c)return C(_,aY(c))end
function n(_)return m.sqrt(_.k*_.k+_.l*_.l+_.i*_.i)end
function aM(_,F)return z(_,1/F)end
function bb(_)return aM(_,n(_))end
function ak(_,c)return _.k*c.k+_.l*c.l+_.i*c.i
end
function aT(_,c)return f(_.l*c.i-_.i*c.l,_.i*c.k-_.k*c.i,_.k*c.l-_.l*c.k)end
function aF(aH,ag,at)aZ=aZ or 1
return f(m.sin(aH)*m.cos(ag)*at,m.cos(aH)*m.cos(ag)*at,m.sin(ag)*at)end
function b_(_,J,aq,al)return f(ak(J,_),ak(aq,_),ak(al,_))end
function aL(_,J,aq,al)return C(C(z(J,_.k),z(aq,_.l)),z(al,_.i))end
function bn(aC,c)if not _ then _={}_[c]={am=0,Y=0}elseif not _[c]then _[c]={am=0,Y=0}end;_[c].Y=aC-_[c].am;_[c].am=aC;return _[c].Y end
function bc(_,min,max)return m.max(min,m.min(_,max))end
function r(an,aI)local I=K
for j,ba in O(an)do
if I==K or(j>I and aI)or(j<I and not aI)then
I=j
end
end
return I
end
function x(aG)return a[aG].h[r(a[aG].h,q)]end
ai=v("VL Strt Frq")aW=v("VL You Frq")aS=v("VL End Frq")ar=aP.getText("VL User")u=ai
bg=v("ML Strt Frq")bj=v("ML End Frq")ah=v("Merge Dist")aV=v("Cull Time")be={}b={{},{},{}}a={}H={}aJ={}E,bh=0,0
g,D,G=0,0,0
L,T=0,0
function onTick()T=T+1
L=L+1
S=f(e(1),e(2),e(3))az,aK,ax=e(4),e(5),e(6)ab,ao,af=cos(az),cos(aK),cos(ax)aA,ae,as=sin(az),sin(aK),sin(ax)R=f(ao*af,-ae,ao*as)P=f(aA*as+ab*ae*af,ab*ao,-aA*af+ab*ae*as)ap=aT(R,P)ay=f(e(7),e(8),e(9))if n(ay)>0 then
local V={e(10),e(11)}U=br
if V[1]>=1000000 and V[1]>=1000000 then
av=aE(V[1]):sub(2,7)..aE(V[2]):sub(2,7)for t=1,#av,3 do
U=U..aB.char(av:sub(t,t+3-1))end
else
U="XXXX"
end
H[U]=ay
end
H[ar]=S
M=br
for t=1,#ar do
M=M..aB.format("%03d",ar:byte(t))end
d(1,aw(bq..M:sub(1,6)))d(2,aw(bq..M:sub(7,12)))u=u==aS and ai or u+1
if u==aW then
u=u==aS and ai or u+1
end
d(3,u)if e(18)>0 then
b[1].y=aF(e(19)*N,e(20)*N,e(18))b[1].s=aL(b[1].y,R,P,ap)b[1].p=C(b[1].s,S)else
b[1].y=f()b[1].s=f()b[1].p=f()end
b[1].W=e(31)if e(24)>0 then
b[2].y=aF(e(25)*N+pi,e(26)*N,e(24))b[2].s=aL(b[2].y,R,P,ap)b[2].p=C(b[2].s,S)else
b[2].y=f()b[2].s=f()b[2].p=f()end
b[2].W=e(31)b[3].p=f(e(15),e(16),e(17))if n(b[3].p)>0 then
b[3].s=A(S,b[3].p)b[3].y=b_(b[3].s,R,P,ap)else
b[3].y=f()b[3].s=f()b[3].p=f()end
b[3].W=0
for j,B in aj(b)do
if(n(B.s)>0)and not(B.W>0)then
local match=0
for o,bi in aj(a)do
if match==0 then
if n(A(x(o),B.p))<=ah then
match=o
a[o].h[L]=B.p
a[o].w=0
aa=K
ac=-1
for aQ,aO in O(a[o].h)do
aX=n(A(aO,x(o)))if aX>=50 and aQ>ac then
aa=aO
ac=aQ
end
end
if aa~=K then
aR=r(a[o].h,q)-ac
if aR>0 then
a[o].Z=aM(A(x(o),aa),aR)end
else
a[o].Z=f()end
end
else
if n(A(x(o),B.p))<=ah then
ad(a,o)end
end
end
if match==0 then
a[#a+1]={h={[L]=B.p},Z=f(),Q=f(),w=0}end
end
end
X=0
for j,aU in aj(a)do
if T>120 then
local n=0
for ba in O(a[j].h)do
n=n+1
end
while n>40 do
a[j].h[r(a[j].h,au)]=K
n=n-1
X=X+1
end
end
a[j].w=a[j].w+1
a[j].Q=C(x(j),z(a[j].Z,a[j].w))if(aU.w>=aV)then
ad(a,j)else
if x(j).i<=-1 then
a[j].h[r(a[j].h,q)].i=5
end
for t,J in O(H)do
if n(A(J,x(j)))<=ah then
ad(a,j)end
end
end
end
if X>0 then T=0 end
if a[g]then
debug.log(g.." age "..a[g].w)d(14,a[g].h[r(a[g].h,q)].k)d(15,a[g].h[r(a[g].h,q)].l)d(16,a[g].h[r(a[g].h,q)].i)end
if a[g+1]then
d(17,a[g+1].h[r(a[g+1].h,q)].k)d(18,a[g+1].h[r(a[g+1].h,q)].l)d(19,a[g+1].h[r(a[g+1].h,q)].i)end
d(26,g)d(27,g+1)g=g+2
if g>#a then
g=1
end
if H[D]then
end
d(28,D)D=D+1
if D>#H then
D=1
end
if aJ[G]then
end
G=G+1
if G>#aJ then
G=1
end
if a[E]then
d(30,a[E].Q.k)d(31,a[E].Q.l)d(32,a[E].Q.i)d(11,a[E].w)else
d(30,0)d(31,0)d(32,0)d(11,0)end
d(5,0)d(6,0)d(7,0)d(8,0)d(9,1)d(10,1)end
