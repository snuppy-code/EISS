-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>

aY=" "
aX=""
aW="1"
aV="\n"

ai=false
an=tonumber
Q=ipairs
aB=string
az=tostring
aE=true
at=property
M=table.remove
C=debug.log
q,t,aA,ay=math,input,output,at
c,d,aR,aT=t.getNumber,aA.setNumber,t.getBool,aA.setBool
D,aU=ay.getNumber,ay.getBool
cos,sin=q.cos,q.sin
pi=q.pi
z=pi*2
function g(i,h,f)return{i=i or 0,h=h or 0,f=f or 0}end
function x(_,l)return g(_.i+l.i,_.h+l.h,_.f+l.f)end
function L(_,J)return g(_.i*J,_.h*J,_.f*J)end
function aI(_)return L(_,-1)end
function K(_,l)return x(_,aI(l))end
function s(_)return q.sqrt(_.i*_.i+_.h*_.h+_.f*_.f)end
function aN(_,J)return L(_,1/J)end
function aS(_)return aN(_,s(_))end
function S(_,l)return _.i*l.i+_.h*l.h+_.f*l.f
end
function aF(_,l)return g(_.h*l.f-_.f*l.h,_.f*l.i-_.i*l.f,_.i*l.h-_.h*l.i)end
function U(aD,aa,af)aK=aK or 1
return g(q.sin(aD)*q.cos(aa)*af,q.cos(aD)*q.cos(aa)*af,q.sin(aa)*af)end
function aL(_,H,ag,Y)return g(S(H,_),S(ag,_),S(Y,_))end
function T(_,H,ag,Y)return x(x(L(H,_.i),L(ag,_.h)),L(Y,_.f))end
ak=D("VL Strt Frq")aM=D("VL You Frq")au=D("VL End Frq")ax=at.getText("VL User")p=ak
ap=D("Merge Dist")aQ=D("Cull Time")e={{},{},{},{}}b={}W={}B={}aH=aE
j=0
m,w=0,0
function onTick()G=g(c(1),c(2),c(3))as=c(27)==1
if as and not aP and(#b>0)then
j=j%(#b)+1
C("cycled: "..j)end
aP=as
aO=c(28)==1
aq,ao,ar=c(4),c(5),c(6)ab,Z,ac=cos(aq),cos(ao),cos(ar)av,ad,al=sin(aq),sin(ao),sin(ar)E=g(Z*ac,-ad,Z*al)F=g(av*al+ab*ad*ac,ab*Z,-av*ac+ab*ad*al)O=aF(E,F)if aH then
aw=g(c(7),c(9),c(8))aJ=g(c(21),c(22),c(23))if s(aw)>0 then
local N={c(10),c(11)}v=aX
if N[1]>=1000000 and N[1]>=1000000 then
aC=az(N[1]):sub(2,7)..az(N[2]):sub(2,7)for t=1,#aC,3 do
v=v..aB.char(aC:sub(t,t+3-1))end
else
v="XXXX"
end
W[v]={a=aw,aG=aJ}X=nil
for k,r in Q(B)do
if r==v then
X=k
end
end
if X then
B[X]=v
else
B[#B+1]=v
end
end
P=aX
for t=1,#ax do
P=P..aB.format("%03d",ax:byte(t))end
d(1,an(aW..P:sub(1,6)))d(2,an(aW..P:sub(7,12)))if p==au then
p=ak
else
p=p+1
end
if p==aM then
if p==au then
p=ak
else
p=p+1
end
end
d(3,p)else
end
if c(18)>0 then
e[1].o=U(c(19)*z,c(20)*z,c(18))e[1].n=T(e[1].o,E,F,O)e[1].a=x(e[1].n,G)else
e[1]={o=g(),n=g(),a=g()}end
e[1].R=c(30)if c(12)>0 then
e[2].o=U(c(13)*z,c(14)*z,c(12))e[2].n=T(e[2].o,E,F,O)e[2].a=x(e[2].n,G)else
e[2]={o=g(),n=g(),a=g()}end
e[2].R=c(31)if c(24)>0 then
e[3].o=U(c(25)*z+pi,c(26)*z,c(24))e[3].n=T(e[3].o,E,F,O)e[3].a=x(e[3].n,G)else
e[3]={o=g(),n=g(),a=g()}end
e[3].R=c(32)e[4].a=g(c(15),c(16),c(17))if s(e[4].a)>0 then
e[4].n=K(G,e[4].a)e[4].o=aL(e[4].n,E,F,O)else
e[4]={o=g(),n=g(),a=g()}end
e[4].R=0
for k,A in Q(e)do
if(s(A.n)>0)and not(A.R>0)then
local aj=0
for u,V in Q(b)do
if aj==0 then
if s(K(b[u].a,A.a))<=ap then
aj=u
b[u].a=A.a
b[u].I=0
end
else
if s(K(b[u].a,A.a))<=ap then
C("merged: "..u..aV..V.a.i..aY..V.a.h..aY..V.a.f)M(b,u)end
end
end
if aj==0 then
b[#b+1]={a=A.a,I=0}end
end
end
for k,r in Q(b)do
y=aE
b[k].I=b[k].I+1
if(r.I>=aQ)and not(k==j)then
if y then
M(b,k)y=ai
if k<j then
j=j-1
end
end
else
if b[k].a.f<=-1 then
b[k].a.f=5
end
if y then
if s(K(G,b[k].a))<=50 then
C("me dist-removed: "..k..aV..r.a.i..aY..r.a.h..aY..r.a.f)M(b,k)y=ai
if k<j then
j=j-1
C("shifted selected down 1 to "..j)end
end
end
for t,H in pairs(W)do
if y then
if s(K(H.a,b[k].a))<=300 then
C("fr dist-removed: "..k..aV..r.a.i..aY..r.a.h..aY..r.a.f)M(b,k)y=ai
if k<j then
j=j-1
end
end
end
end
end
end
if b[m]then
d(14,b[m].a.i)d(15,b[m].a.h)d(16,b[m].a.f)end
if b[m+1]then
d(17,b[m+1].a.i)d(18,b[m+1].a.h)d(19,b[m+1].a.f)end
d(26,m)m=m+2
if m>#b then
m=1
end
ae=W[B[w]]if ae then
ah=ae.a
am=ae.aG
d(20,ah.i)d(21,ah.h)d(22,ah.f)d(23,am.i)d(24,am.h)d(25,am.f)end
d(28,w)w=w+1
if w>#B then
w=1
end
if aO then
d(30,0)d(31,0)d(32,0)else
if b[j]then
d(30,b[j].a.i)d(31,b[j].a.h)d(32,b[j].a.f)d(11,b[j].I)else
d(30,0)d(31,0)d(32,0)d(11,0)end
end
d(7,0)d(8,0)d(9,1)d(10,1)end
