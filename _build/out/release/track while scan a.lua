bc=" "
bb="\n"

S=false
ai=true
I=ipairs
aA=property
P=table.remove
Q=debug.log
T=aA.getNumber
m,t,au,aB=math,input,output,aA
d,e,aX,aZ=t.getNumber,au.setNumber,t.getBool,au.setBool
aG,ba=aB.getNumber,aB.getBool
cos,sin=m.cos,m.sin
pi=m.pi
D=pi*2
function g(i,h,f)return{i=i or 0,h=h or 0,f=f or 0}end
function w(a,l)return g(a.i+l.i,a.h+l.h,a.f+l.f)end
function J(a,O)return g(a.i*O,a.h*O,a.f*O)end
function aK(a)return J(a,-1)end
function z(a,l)return w(a,aK(l))end
function v(a)return m.sqrt(a.i*a.i+a.h*a.h+a.f*a.f)end
function aU(a,O)return J(a,1/O)end
function aV(a)return aU(a,v(a))end
function ac(a,l)return a.i*l.i+a.h*l.h+a.f*l.f
end
function aN(a,l)return g(a.h*l.f-a.f*l.h,a.f*l.i-a.i*l.f,a.i*l.h-a.h*l.i)end
function Z(aF,W,ae)aJ=aJ or 1
return g(m.sin(aF)*m.cos(W)*ae,m.cos(aF)*m.cos(W)*ae,m.sin(W)*ae)end
function aS(a,M,ad,af)return g(ac(M,a),ac(ad,a),ac(af,a))end
function ab(a,M,ad,af)return w(w(J(M,a.i),J(ad,a.h)),J(af,a.f))end
ah=T("Max friendlies")at=T("User number")ax=T("Frequency seed")aW=T("Encryption seed")aL,aR=1871759,6393518
m.randomseed(ax)aQ=m.random(aL,aR)y={}m.randomseed(ax)for t=1,ah do
al=m.random(-605791,605791)for b_,u in I(y)do
while u==al do
al=m.random(-605791,605791)end
end
y[t]=al
end
for j in I(y)do
y[j]=y[j]+aQ
end
q=1
B=1
aH=719700
N=7
s={}av=8
R={}aY={}b={}aD=aG("Merge Dist")aP=aG("Cull Time")c={}for t=1,14 do
c[t]={}end
am=0
k=0
p,F=0,0
function onTick()am=am+1
E=g(d(1),d(2),d(3))ay=d(27)==1
if ay and not aI and(#b>0)then
if b[k%(#b)+1]._.f>0 then
k=k%(#b)+1
end
end
aI=ay
aO=d(28)==1
aC,as,aw=d(4),d(5),d(6)aa,aj,ak=cos(aC),cos(as),cos(aw)ar,ao,ap=sin(aC),sin(as),sin(aw)H=g(aj*ak,-ao,aj*ap)K=g(ar*ap+aa*ao*ak,aa*aj,-ar*ak+aa*ao*ap)U=aN(H,K)if am%3>0 then
V=ai
if q==ah then
q=1
else
q=q+1
end
if q==at then
if q==ah then
q=1
else
q=q+1
end
end
az=y[q]else
V=S
if B==10 then
B=1
else
B=B+1
end
az=aH+B-1
end
for t=av,2,-1 do
s[t]=s[t-1]end
if V then
s[1]={aE=V,G=q}else
s[1]={aE=V,G=B}end
if#s==av then
if s[N].aE then
R[s[N].G]={_=g(d(7),d(8),d(9)),aT=g(d(21),d(22),d(23))}else
c[4+s[N].G]._=g(d(10),d(11),0)c[4+s[N].G].C=0
c[4+s[N].G].aM=ai
end
end
e(3,az)e(29,y[at])if d(18)>0 then
c[1].r=Z(d(19)*D,d(20)*D,d(18))c[1].o=ab(c[1].r,H,K,U)c[1]._=w(c[1].o,E)else
c[1]={r=g(),o=g(),_=g()}end
c[1].C=d(30)if d(12)>0 then
c[2].r=Z(d(13)*D,d(14)*D,d(12))c[2].o=ab(c[2].r,H,K,U)c[2]._=w(c[2].o,E)else
c[2]={r=g(),o=g(),_=g()}end
c[2].C=d(31)if d(24)>0 then
c[3].r=Z(d(25)*D+pi,d(26)*D,d(24))c[3].o=ab(c[3].r,H,K,U)c[3]._=w(c[3].o,E)else
c[3]={r=g(),o=g(),_=g()}end
c[3].C=d(32)c[4]._=g(d(15),d(16),d(17))if v(c[4]._)>0 then
c[4].o=z(E,c[4]._)c[4].r=aS(c[4].o,H,K,U)else
c[4]={r=g(),o=g(),_=g()}end
c[4].C=0
for j,n in I(c)do
if n._ and n.C and(v(n._)>0)then
if n.aM then
n._=w(n._,g(0,0,-9999))n.o=z(E,n._)end
if(v(n.o)>0)and not(n.C>0)then
local Y=0
for x,aq in I(b)do
if Y==0 then
if v(z(b[x]._,n._))<=aD then
Y=x
b[x]._=n._
b[x].L=0
end
else
if v(z(b[x]._,n._))<=aD then
Q("merged: "..x..bb..aq._.i..bc..aq._.h..bc..aq._.f)P(b,x)end
end
end
if Y==0 then
b[#b+1]={_=n._,L=0}end
end
end
end
for j,u in I(b)do
A=ai
b[j].L=b[j].L+1
if(u.L>=aP)and not(j==k)then
if A then
P(b,j)A=S
if j<k then
k=k-1
end
end
else
if b[j]._.f<=-1 and b[j]._.f>=-7999
then
b[j]._.f=5
end
if A then
if v(z(E,b[j]._))<=50 then
Q("me dist-removed: "..j..bb..u._.i..bc..u._.h..bc..u._.f)P(b,j)A=S
if j<k then
k=k-1
Q("shifted selected down 1 to "..k)end
end
end
for t,M in pairs(R)do
if A then
if v(z(M._,b[j]._))<=300 then
Q("fr dist-removed: "..j..bb..u._.i..bc..u._.h..bc..u._.f)P(b,j)A=S
if j<k then
k=k-1
end
end
end
end
end
end
if b[p]then
e(14,b[p]._.i)e(15,b[p]._.h)e(16,b[p]._.f)end
if b[p+1]then
e(17,b[p+1]._.i)e(18,b[p+1]._.h)e(19,b[p+1]._.f)end
e(26,p)p=p+2
if p>#b then
p=1
end
an=R[F]if an then
ag=an._
X=an.aT
e(20,ag.i)e(21,ag.h)e(22,ag.f)e(23,X.i)e(24,X.h)e(25,X.f)end
e(28,F)F=F+1
if F>#R then
F=1
end
if aO then
e(30,0)e(31,0)e(32,0)else
if b[k]then
e(30,b[k]._.i)e(31,b[k]._.h)e(32,b[k]._.f)e(11,b[k].L)else
e(30,0)e(31,0)e(32,0)e(11,0)end
end
e(7,0)e(8,0)e(9,1)e(10,1)end
