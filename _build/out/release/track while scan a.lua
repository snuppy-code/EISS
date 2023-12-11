-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>

bc="\n"
bb=" "

Q=false
aB=true
D=ipairs
aF=property
O=table.remove
J=debug.log
S=aF.getNumber
m,s,as,av=math,input,output,aF
b,d,aX,ba=s.getNumber,as.setNumber,s.getBool,as.setBool
aE,aW=av.getNumber,av.getBool
cos,sin=m.cos,m.sin
pi=m.pi
A=pi*2
function g(h,i,f)return{h=h or 0,i=i or 0,f=f or 0}end
function y(_,l)return g(_.h+l.h,_.i+l.i,_.f+l.f)end
function L(_,M)return g(_.h*M,_.i*M,_.f*M)end
function aK(_)return L(_,-1)end
function K(_,l)return y(_,aK(l))end
function v(_)return m.sqrt(_.h*_.h+_.i*_.i+_.f*_.f)end
function aQ(_,M)return L(_,1/M)end
function aY(_)return aQ(_,v(_))end
function ab(_,l)return _.h*l.h+_.i*l.i+_.f*l.f
end
function aS(_,l)return g(_.i*l.f-_.f*l.i,_.f*l.h-_.h*l.f,_.h*l.i-_.i*l.h)end
function aa(aC,ap,aq)aO=aO or 1
return g(m.sin(aC)*m.cos(ap)*aq,m.cos(aC)*m.cos(ap)*aq,m.sin(ap)*aq)end
function aR(_,E,af,am)return g(ab(E,_),ab(af,_),ab(am,_))end
function al(_,E,af,am)return y(y(L(E,_.h),L(af,_.i)),L(am,_.f))end
ah=S("Max friendlies")ak=S("User number")az=S("Frequency seed")b_=S("Encryption seed")aI,aJ=1871759,6393518
m.randomseed(az)aN=m.random(aI,aJ)w={}m.randomseed(az)for s=1,ah do
Y=m.random(-605791,605791)for aZ,r in D(w)do
while r==Y do
Y=m.random(-605791,605791)end
end
w[s]=Y
end
for k in D(w)do
w[k]=w[k]+aN
end
p=1
B=1
aH=719700
U=7
t={}ax=7
ao={}aP={}c={}ay=aE("Merge Dist")aL=aE("Cull Time")e={{},{},{},{}}aj=0
j=0
n,x=0,0
function onTick()aj=aj+1
I=g(b(1),b(2),b(3))aD=b(27)==1
if aD and not aU and(#c>0)then
j=j%(#c)+1
J("cycled: "..j)end
aU=aD
aM=b(28)==1
aA,au,aG=b(4),b(5),b(6)V,Z,ac=cos(aA),cos(au),cos(aG)ar,ad,W=sin(aA),sin(au),sin(aG)F=g(Z*ac,-ad,Z*W)G=g(ar*W+V*ad*ac,V*Z,-ar*ac+V*ad*W)N=aS(F,G)if aj%3>0 then
P=aB
if p==ah then
p=1
else
p=p+1
end
if p==ak then
if p==ah then
p=1
else
p=p+1
end
end
aw=w[p]else
P=Q
if B==9 then
B=0
else
B=B+1
end
aw=aH+B
end
if#t==ax then
for s=ax,2,-1 do
t[s]=t[s-1]end
if P then
t[1]={at=P,X=p}else
t[1]={at=P,X=B}end
if t[U].at then
ao[t[U].X]={a=g(b(7),b(9),b(8)),aV=g(b(21),b(22),b(23))}else
aP[t[U].X]=g(b(11),b(23),-900)end
end
d(3,aw)d(29,w[ak])d(1,ak)if b(18)>0 then
e[1].q=aa(b(19)*A,b(20)*A,b(18))e[1].o=al(e[1].q,F,G,N)e[1].a=y(e[1].o,I)else
e[1]={q=g(),o=g(),a=g()}end
e[1].R=b(30)if b(12)>0 then
e[2].q=aa(b(13)*A,b(14)*A,b(12))e[2].o=al(e[2].q,F,G,N)e[2].a=y(e[2].o,I)else
e[2]={q=g(),o=g(),a=g()}end
e[2].R=b(31)if b(24)>0 then
e[3].q=aa(b(25)*A+pi,b(26)*A,b(24))e[3].o=al(e[3].q,F,G,N)e[3].a=y(e[3].o,I)else
e[3]={q=g(),o=g(),a=g()}end
e[3].R=b(32)e[4].a=g(b(15),b(16),b(17))if v(e[4].a)>0 then
e[4].o=K(I,e[4].a)e[4].q=aR(e[4].o,F,G,N)else
e[4]={q=g(),o=g(),a=g()}end
e[4].R=0
for k,z in D(e)do
if(v(z.o)>0)and not(z.R>0)then
local T=0
for u,an in D(c)do
if T==0 then
if v(K(c[u].a,z.a))<=ay then
T=u
c[u].a=z.a
c[u].H=0
end
else
if v(K(c[u].a,z.a))<=ay then
J("merged: "..u..bc..an.a.h..bb..an.a.i..bb..an.a.f)O(c,u)end
end
end
if T==0 then
c[#c+1]={a=z.a,H=0}end
end
end
for k,r in D(c)do
C=aB
c[k].H=c[k].H+1
if(r.H>=aL)and not(k==j)then
if C then
O(c,k)C=Q
if k<j then
j=j-1
end
end
else
if c[k].a.f<=-1 then
c[k].a.f=5
end
if C then
if v(K(I,c[k].a))<=50 then
J("me dist-removed: "..k..bc..r.a.h..bb..r.a.i..bb..r.a.f)O(c,k)C=Q
if k<j then
j=j-1
J("shifted selected down 1 to "..j)end
end
end
for s,E in pairs(ao)do
if C then
if v(K(E.a,c[k].a))<=300 then
J("fr dist-removed: "..k..bc..r.a.h..bb..r.a.i..bb..r.a.f)O(c,k)C=Q
if k<j then
j=j-1
end
end
end
end
end
end
if c[n]then
d(14,c[n].a.h)d(15,c[n].a.i)d(16,c[n].a.f)end
if c[n+1]then
d(17,c[n+1].a.h)d(18,c[n+1].a.i)d(19,c[n+1].a.f)end
d(26,n)n=n+2
if n>#c then
n=1
end
ai=ao[aT[x]]if ai then
ae=ai.a
ag=ai.aV
d(20,ae.h)d(21,ae.i)d(22,ae.f)d(23,ag.h)d(24,ag.i)d(25,ag.f)end
d(28,x)x=x+1
if x>#aT then
x=1
end
if aM then
d(30,0)d(31,0)d(32,0)else
if c[j]then
d(30,c[j].a.h)d(31,c[j].a.i)d(32,c[j].a.f)d(11,c[j].H)else
d(30,0)d(31,0)d(32,0)d(11,0)end
end
d(7,0)d(8,0)d(9,1)d(10,1)end
