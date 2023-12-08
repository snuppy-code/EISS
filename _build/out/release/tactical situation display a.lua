
O=230
k=255
aT=nil
an=pairs
aJ=table
X=false
N=true
aN=screen
Q=map.mapToScreen
l,a,aP,aI,f,bp,bd=math,input,output,property,aN,N,X
_,bm,bl,bk=a.getNumber,aP.setNumber,a.getBool,aP.setBool
bi,bh=aI.getNumber,aI.getBool
abs,cos,sin,floor,atan=l.abs,l.cos,l.sin,l.floor,l.atan
pi=l.pi
M=pi*2
f=aN
ac,be,q,aW,o,aM,bq,h=f.drawText,f.drawTextBox,f.drawLine,f.drawRect,f.drawRectF,f.drawCircle,f.drawClear,f.setColor
function bn(J,K,am,ap)W=am-J
R=ap-K
if abs(W)>=abs(R)then
aa=abs(W)else
aa=abs(R)end
W=W/aa
R=R/aa
b=J
e=K
a=0
while(a<=aa)do
o(b,e,1,1)b=b+W
e=e+R
a=a+1
end
end
function v(b,e,p)return{b=b or 0,e=e or 0,p=p or 0}end
function aY(g,u)return v(g.e*u.p-g.p*u.e,g.p*u.b-g.b*u.p,g.b*u.e-g.e*u.b)end
function S(g)return l.sqrt(g.b*g.b+g.e*g.e+g.p*g.p)end
function bg(g,u)return l.sqrt((g.b-u.b)^2+(g.e-u.e)^2+(g.p-u.p)^2)end
function aF(g,min,max)return l.max(min,l.min(g,max))end
function br(b)return floor(b+.5)end
function aD(J,K,am,ap)aq=-.9*m+50.09
ao=N
aX=am-J
bb=ap-K
aQ=aX/aq
aK=bb/aq
for a=1,aq do
if ao then
q(J+aQ*(a-1),K+aK*(a-1),J+aQ*a,K+aK*a)end
ao=not ao
end
end
aU=13333
n=.03*pi
ag=.09*M+n
aH=10
D={}A={}aw=N
m,E=7,0
L={}for a=1,100 do
L[a]=X
end
function onTick()Z=v(_(1),_(3),_(2))aj=-_(27)*M
ai=-_(20)*M
ah=-_(32)*M+pi
at=_(30)>0
aZ=at~=aV and at
aV=at
if aZ then
aw=not aw
end
aG=_(31)==1
aJ.remove(L,1)aJ.insert(L,aG)r=0
for a=1,6 do
if L[a]then
r=r+1
end
end
if r>=2 then
au=N
else
au=X
end
r=0
for a=1,26 do
if L[a]then
r=r+1
end
end
if r>=2 then
aB=N
else
aB=X
end
r=0
for a=1,100 do
if L[a]then
r=r+1
end
end
if r>=2 then
ak=N
else
ak=X
end
ar=v(_(23),_(24),_(25))aS,aL,aE=_(4),_(5),_(6)aA,ay,av=cos(aS),cos(aL),cos(aE)aR,as,al=sin(aS),sin(aL),sin(aE)ba=v(ay*av,-as,ay*al)aC=v(aR*al+aA*as*av,aA*ay,-aR*av+aA*as*al)bo=aY(ba,aC)ab=_(19)B=v(_(7),_(8),_(9))if S(B)>0 then
A[ab]={y=B,x=0}end
B=v(_(10),_(11),_(12))if S(B)>0 then
A[ab+1]={y=B,x=0}end
ab=_(21)B=v(_(13),_(14),_(15))bc=v(_(16),_(17),_(18))if S(B)>0 then
D[ab]={y=B,ax=bc,x=0}end
for s,b_ in an(A)do
A[s].x=A[s].x+1
if A[s].x>=aH then
A[s]=aT
end
end
for s,b_ in an(D)do
D[s].x=D[s].x+1
if D[s].x>=aH then
D[s]=aT
end
end
aO=_(29)==1
if aO then
U=_(26)else
U=0
end
if U<.01 and U>-.01 then
E=E-E/5
else
E=aF((E+U/160),-.1,.1)end
if m>=50 then E=0 end
m=aF(m+(U/55*m/2.4)+E*m/2.4,.1,50)j=-atan(aC.b,aC.e)+pi
P,I=Z.b,Z.e
end
function onDraw()F,V=f.getWidth(),f.getHeight()if F>32 then
if aw then
f.setMapColorOcean(0,0,0)f.setMapColorShallows(2,2,2)f.setMapColorLand(7,7,7)f.setMapColorGrass(8,10,8)f.setMapColorSand(6,6,4)f.setMapColorSnow(25,25,26)f.bj(3,3,3)f.bf(4,4,4)f.drawMap(P,I,m)end
c,d=Q(P,I,m,F,V,Z.b,Z.e)T=m/F
az=m/50
i=(aU/1000)/T
for a=0,2 do
ae=5+10*a
h(k,k,k,7-az*3)aM(c,d,ae/T)h(k,k,k,11-az*2)ac(c+ae/T-(5*(#tostring(ae))),d,ae)end
h(k,k,k,4-az*2)for a=1,8 do
q(c,d,c+sin(a*M/8)*120/T,d+cos(a*M/8)*120/T)end
h(80,k,0,38)q(c,d,c+sin(aj+j-n)*i,d+cos(aj+j-n)*i)q(c,d,c+sin(aj+j+n)*i,d+cos(aj+j+n)*i)q(c,d,c+sin(ai+j-n)*i,d+cos(ai+j-n)*i)q(c,d,c+sin(ai+j+n)*i,d+cos(ai+j+n)*i)q(c,d,c+sin(ah+j-n)*i,d+cos(ah+j-n)*i)q(c,d,c+sin(ah+j+n)*i,d+cos(ah+j+n)*i)h(0,k,0,8)aM(c,d,i)q(c,d,c+sin(-ag+j)*i,d+cos(-ag+j)*i)q(c,d,c+sin(ag+j)*i,d+cos(ag+j)*i)for s,t in ipairs(A)do
z,C=Q(P,I,m,F,V,t.y.b,t.y.e)h(80,13,1)w=t.y.p
w=l.max(l.min(w/500,5),0)q(z-w,C-2,z+w+1,C-2)aW(z-1,C-1,2,2)end
if S(ar)>0 then
z,C=Q(P,I,m,F,V,ar.b,ar.e)h(55,20,40,70)aD(c,d,z,C)h(46,0,25)o(z-2,C-2,1,5)o(z+2,C-2,1,5)o(z,C,1,1)end
h(0,40,k)for s,t in an(D)do
G,H=Q(P,I,m,F,V,t.y.b,t.y.e)w=t.y.p
w=l.max(l.min(w/500,5),0)q(G-w,H-2,G+w+1,H-2)o(G,H-1,1,1)o(G+1,H,1,1)o(G,H+1,1,1)o(G-1,H,1,1)if S(t.ax)>0 then
Y,af=Q(P,I,m,F,V,t.ax.b,t.ax.e)h(30,90,k,30)aD(G,H,Y,af)h(40,40,110,30)o(Y-2,af-2,1,5)o(Y+2,af-2,1,5)o(Y,af,1,1)end
end
if aO then
h(1,1,1,200)o(13,2,12,5)h(85,160,35)ac(13,2,"SOI")end
else
ad=""
if au then
h(k,0,0)ad="MSSLE"
elseif aB then
h(239,38,0)ad="TRACK"
elseif ak then
h(k,135,0)ad="WARN"
end
if au or aB or ak then
o(0,0,32,32)h(O,O,O)ac(4,12,ad)end
if aG then
h(O,O,O)ac(6,2,"PING")end
end
end
