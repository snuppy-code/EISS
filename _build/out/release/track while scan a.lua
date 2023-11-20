-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>

bs="1"
br=""

X=ipairs
aF=tonumber
au=string
aN=tostring
M=pairs
J=nil
aJ=false
H=true
aK=property
aq=input
ab=table.remove
l,r,aG,aL,bd,bq,bo=math,aq,output,aK,screen,H,aJ
d,h,bg,bf=r.getNumber,aG.setNumber,r.getBool,aG.setBool
q,bj=aL.getNumber,aL.getBool
abs,cos,sin,floor,atan=l.abs,l.cos,l.sin,l.floor,l.atan
pi=l.pi
S=pi*2
function e(i,j,g)return{i=i or 0,j=j or 0,g=g or 0}end
function z(_,c)return e(_.i+c.i,_.j+c.j,_.g+c.g)end
function bl(_,c)return e(_.i*c.i,_.j*c.j,_.g*c.g)end
function v(_,B)return e(_.i*B,_.j*B,_.g*B)end
function aV(_)return v(_,-1)end
function A(_,c)return z(_,aV(c))end
function k(_)return l.sqrt(_.i*_.i+_.j*_.j+_.g*_.g)end
function aM(_,B)return v(_,1/B)end
function bi(_)return aM(_,k(_))end
function al(_,c)return _.i*c.i+_.j*c.j+_.g*c.g
end
function ba(_,c)return e(_.j*c.g-_.g*c.j,_.g*c.i-_.i*c.g,_.i*c.j-_.j*c.i)end
function aH(aI,ac,af)aY=aY or 1
return e(l.sin(aI)*l.cos(ac)*af,l.cos(aI)*l.cos(ac)*af,l.sin(ac)*af)end
function aT(_,C,aj,as)return e(al(C,_),al(aj,_),al(as,_))end
function aO(_,C,aj,as)return z(z(v(C,_.i),v(aj,_.j)),v(as,_.g))end
function be(aA,c)if not _ then _={}_[c]={ai=0,ao=0}elseif not _[c]then _[c]={ai=0,ao=0}end;_[c].ao=aA-_[c].ai;_[c].ai=aA;return _[c].ao end
function bc(_,min,max)return l.max(min,l.min(_,max))end
function E(aq,ay)local F=J
for f,b_ in M(aq)do
if F==J or(f>F and ay)or(f<F and not ay)then
F=f
end
end
return F
end
function t(av)return a[av].o[E(a[av].o,H)]end
an=q("VL Strt Frq")aZ=q("VL You Frq")aQ=q("VL End Frq")ak=aK.getText("VL User")s=an
bp=q("ML Strt Frq")bk=q("ML End Frq")ae=q("Merge Dist")aU=q("Cull Time")aW=q("Min extrap dist delta")bn={}b={{},{},{}}a={}K={}az={}x,bm=1,0
y,L,I=0,0,0
G,T=0,0
function onTick()T=T+1
G=G+1
W=e(d(1),d(2),d(3))aw,aP,ax=d(4),d(5),d(6)Y,aa,ap=cos(aw),cos(aP),cos(ax)aE,ag,ah=sin(aw),sin(aP),sin(ax)Q=e(aa*ap,-ag,aa*ah)U=e(aE*ah+Y*ag*ap,Y*aa,-aE*ap+Y*ag*ah)ad=ba(Q,U)aC=e(d(7),d(8),d(9))if k(aC)>0 then
local N={d(10),d(11)}O=br
if N[1]>=1000000 and N[1]>=1000000 then
aB=aN(N[1]):sub(2,7)..aN(N[2]):sub(2,7)for r=1,#aB,3 do
O=O..au.char(aB:sub(r,r+3-1))end
else
O="XXXX"
end
K[O]=aC
end
K[ak]=W
V=br
for r=1,#ak do
V=V..au.format("%03d",ak:byte(r))end
h(1,aF(bs..V:sub(1,6)))h(2,aF(bs..V:sub(7,12)))s=s==aQ and an or s+1
if s==aZ then
s=s==aQ and an or s+1
end
h(3,s)if d(18)>0 then
b[1].u=aH(d(19)*S,d(20)*S,d(18))b[1].p=aO(b[1].u,Q,U,ad)b[1].n=z(b[1].p,W)else
b[1].u=e()b[1].p=e()b[1].n=e()end
b[1].Z=d(31)if d(24)>0 then
b[2].u=aH(d(25)*S+pi,d(26)*S,d(24))b[2].p=aO(b[2].u,Q,U,ad)b[2].n=z(b[2].p,W)else
b[2].u=e()b[2].p=e()b[2].n=e()end
b[2].Z=d(31)b[3].n=e(d(15),d(16),d(17))if k(b[3].n)>0 then
b[3].p=A(W,b[3].n)b[3].u=aT(b[3].p,Q,U,ad)else
b[3].u=e()b[3].p=e()b[3].n=e()end
b[3].Z=0
for f,w in X(b)do
if(k(w.p)>0)and not(w.Z>0)then
local match=0
for m,bh in X(a)do
if match==0 then
if k(A(t(m),w.n))<=ae then
match=m
a[m].o[G]=w.n
a[m].D=0
at=J
ar=-1
for aR,aS in M(a[m].o)do
bb=k(A(aS,t(m)))if bb>=aW and aR>ar then
at=aS
ar=aR
end
end
if at~=J then
aD=E(a[m].o,H)-ar
if aD>0 then
a[m].am=aM(A(t(m),at),aD)end
else
a[m].am=e()end
end
else
if k(A(t(m),w.n))<=ae then
ab(a,m)end
end
end
if match==0 then
a[#a+1]={o={[G]=w.n},am=e(),R=e(),D=0}end
end
end
P=0
for f,aX in X(a)do
if T>120 then
local k=0
for b_ in M(a[f].o)do
k=k+1
end
while k>40 do
a[f].o[E(a[f].o,aJ)]=J
k=k-1
P=P+1
end
debug.log("culled "..P.." positions of target "..f)end
a[f].D=G-E(a[f].o,H)a[f].R=z(t(f),v(a[f].am,a[f].D))if(aX.D>=aU)and not(f==x)then
ab(a,f)else
if t(f).g<=-1 then
a[f].o[E(a[f].o,H)].g=5
end
for r,C in M(K)do
if k(A(C,t(f)))<=ae then
ab(a,f)end
end
end
end
if P>0 then T=0 end
if a[y]then
end
if a[y+1]then
end
y=y+2
if y>#a then
y=1
end
if K[L]then
end
L=L+1
if L>#K then
L=1
end
if az[I]then
end
I=I+1
if I>#az then
I=1
end
if a[x]then
h(30,a[x].R.i)h(31,a[x].R.j)h(32,a[x].R.g)h(11,a[x].D)else
h(30,0)h(31,0)h(32,0)h(11,0)end
h(5,0)h(6,0)h(7,0)h(8,0)h(9,1)h(10,1)end
