
L=230
k=255
aE=nil
aA=pairs
aJ=table
V=false
P=true
aN=screen
W=map.mapToScreen
l,a,aH,aG,h,be,bm=math,input,output,property,aN,P,V
_,bo,bp,bl=a.getNumber,aH.setNumber,a.getBool,aH.setBool
bi,bg=aG.getNumber,aG.getBool
abs,cos,sin,floor,atan=l.abs,l.cos,l.sin,l.floor,l.atan
pi=l.pi
N=pi*2
h=aN
aj,bf,q,aU,n,aM,bd,g=h.drawText,h.drawTextBox,h.drawLine,h.drawRect,h.drawRectF,h.drawCircle,h.drawClear,h.setColor
function bj(M,J,ay,aw)Q=ay-M
S=aw-J
if abs(Q)>=abs(S)then
ai=abs(Q)else
ai=abs(S)end
Q=Q/ai
S=S/ai
b=M
e=J
a=0
while(a<=ai)do
n(b,e,1,1)b=b+Q
e=e+S
a=a+1
end
end
function w(b,e,p)return{b=b or 0,e=e or 0,p=p or 0}end
function b_(f,t)return w(f.e*t.p-f.p*t.e,f.p*t.b-f.b*t.p,f.b*t.e-f.e*t.b)end
function R(f)return l.sqrt(f.b*f.b+f.e*f.e+f.p*f.p)end
function bh(f,t)return l.sqrt((f.b-t.b)^2+(f.e-t.e)^2+(f.p-t.p)^2)end
function aT(f,min,max)return l.max(min,l.min(f,max))end
function bk(b)return floor(b+.5)end
function aD(M,J,ay,aw)ax=-.9*m+50.09
am=P
bc=ay-M
aZ=aw-J
aP=bc/ax
aO=aZ/ax
for a=1,ax do
if am then
q(M+aP*(a-1),J+aO*(a-1),M+aP*a,J+aO*a)end
am=not am
end
end
ba=13333
o=.03*pi
aa=.09*N+o
aS=10
E={}B={}ao=P
m,D=7,0
K={}for a=1,100 do
K[a]=V
end
function onTick()ae=w(_(1),_(3),_(2))ab=-_(27)*N
ah=-_(20)*N
Z=-_(32)*N+pi
aq=_(30)>0
aY=aq~=aW and aq
aW=aq
if aY then
ao=not ao
end
aK=_(31)==1
aJ.remove(K,1)aJ.insert(K,aK)s=0
for a=1,6 do
if K[a]then
s=s+1
end
end
if s>=2 then
aC=P
else
aC=V
end
s=0
for a=1,26 do
if K[a]then
s=s+1
end
end
if s>=2 then
au=P
else
au=V
end
s=0
for a=1,100 do
if K[a]then
s=s+1
end
end
if s>=2 then
al=P
else
al=V
end
ap=w(_(23),_(24),_(25))aR,aF,aQ=_(4),_(5),_(6)ar,av,at=cos(aR),cos(aF),cos(aQ)aL,ak,aB=sin(aR),sin(aF),sin(aQ)bb=w(av*at,-ak,av*aB)az=w(aL*aB+ar*ak*at,ar*av,-aL*at+ar*ak*aB)bn=b_(bb,az)Y=_(19)A=w(_(7),_(8),_(9))if R(A)>0 then
B[Y]={y=A,C=0}end
A=w(_(10),_(11),_(12))if R(A)>0 then
B[Y+1]={y=A,C=0}end
Y=_(21)A=w(_(13),_(14),_(15))aX=w(_(16),_(17),_(18))if R(A)>0 then
E[Y]={y=A,as=aX,C=0}end
for r,aV in aA(B)do
B[r].C=B[r].C+1
if B[r].C>=aS then
B[r]=aE
end
end
for r,aV in aA(E)do
E[r].C=E[r].C+1
if E[r].C>=aS then
E[r]=aE
end
end
aI=_(29)==1
if aI then
U=_(26)else
U=0
end
if U<.01 and U>-.01 then
D=D-D/5
else
D=aT((D+U/160),-.1,.1)end
if m>=50 then D=0 end
m=aT(m+(U/55*m/2.4)+D*m/2.4,.1,50)j=-atan(az.b,az.e)+pi
O,I=ae.b,ae.e
end
function onDraw()F,X=h.getWidth(),h.getHeight()if F>32 then
if ao then
h.setMapColorOcean(0,0,0)h.setMapColorShallows(2,2,2)h.setMapColorLand(7,7,7)h.setMapColorGrass(8,10,8)h.setMapColorSand(6,6,4)h.setMapColorSnow(25,25,26)h.drawMap(O,I,m)end
d,c=W(O,I,m,F,X,ae.b,ae.e)T=m/F
an=m/50
i=(ba/1000)/T
for a=0,2 do
ad=5+10*a
g(k,k,k,7-an*3)aM(d,c,ad/T)g(k,k,k,11-an*2)aj(d+ad/T-(5*(#tostring(ad))),c,ad)end
g(k,k,k,4-an*2)for a=1,8 do
q(d,c,d+sin(a*N/8)*120/T,c+cos(a*N/8)*120/T)end
g(80,k,0,38)q(d,c,d+sin(ab+j-o)*i,c+cos(ab+j-o)*i)q(d,c,d+sin(ab+j+o)*i,c+cos(ab+j+o)*i)q(d,c,d+sin(ah+j-o)*i,c+cos(ah+j-o)*i)q(d,c,d+sin(ah+j+o)*i,c+cos(ah+j+o)*i)q(d,c,d+sin(Z+j-o)*i,c+cos(Z+j-o)*i)q(d,c,d+sin(Z+j+o)*i,c+cos(Z+j+o)*i)g(0,k,0,8)aM(d,c,i)q(d,c,d+sin(-aa+j)*i,c+cos(-aa+j)*i)q(d,c,d+sin(aa+j)*i,c+cos(aa+j)*i)for r,u in ipairs(B)do
z,x=W(O,I,m,F,X,u.y.b,u.y.e)g(80,13,1)v=u.y.p
v=l.max(l.min(v/500,5),0)q(z-v,x-2,z+v+1,x-2)aU(z-1,x-1,2,2)end
if R(ap)>0 then
z,x=W(O,I,m,F,X,ap.b,ap.e)g(55,20,40,45)aD(d,c,z,x)g(46,0,25)n(z-2,x-2,1,5)n(z+2,x-2,1,5)n(z,x,1,1)end
g(0,40,k)for r,u in aA(E)do
G,H=W(O,I,m,F,X,u.y.b,u.y.e)v=u.y.p
v=l.max(l.min(v/500,5),0)q(G-v,H-2,G+v+1,H-2)n(G,H-1,1,1)n(G+1,H,1,1)n(G,H+1,1,1)n(G-1,H,1,1)if R(u.as)>0 then
af,ag=W(O,I,m,F,X,u.as.b,u.as.e)g(30,90,k,30)aD(G,H,af,ag)g(40,40,110,30)n(af-2,ag-2,1,5)n(af+2,ag-2,1,5)n(af,ag,1,1)end
end
if aI then
g(1,1,1,200)n(13,2,12,5)g(85,160,35)aj(13,2,"SOI")end
else
ac=""
if aC then
g(k,0,0)ac="MSSLE"
elseif au then
g(239,38,0)ac="TRACK"
elseif al then
g(k,135,0)ac="WARN"
end
if aC or au or al then
n(0,0,32,32)g(L,L,L)aj(4,12,ac)end
if aK then
g(L,L,L)aj(6,2,"PING")end
end
end
