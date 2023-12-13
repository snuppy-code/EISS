-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2841 (3146 with comment) chars

N=property
al=output
af=input
t=screen
an=t.setColor
g=af.getNumber
L=al.setNumber
aT=af.getBool
aX=al.setBool
aY=N.getNumber
aV=N.getBool
be=N.getText
a=math
pi=a.pi
U=pi*2
sin=a.sin
cos=a.cos
tan=a.tan
asin=a.asin
acos=a.acos
atan=a.atan
function f(x,V,at,av)return{b=x
or 0,d=V
or 0,c=at
or 0,i=av
or 0}end
function y(_,e)return f(_.b+e.b,_.d+e.d,_.c+e.c)end
function b_(_,e)return f(_.b*e.b,_.d*e.d,_.c*e.c)end
function n(_,u)return f(_.b*u,_.d*u,_.c*u)end
function ao(_)return n(_,-1)end
function K(_,e)return y(_,ao(e))end
function s(_)return a.sqrt(_.b*_.b+_.d*_.d+_.c*_.c)end
function aJ(_,u)return n(_,1/u)end
function bc(_)return aJ(_,s(_))end
function F(_,e)return _.b*e.b+_.d*e.d+_.c*e.c
end
function ay(_,e)return f(_.d*e.c-_.c*e.d,_.c*e.b-_.b*e.c,_.b*e.d-_.d*e.b)end
function bb(v,A,w)local w=w
or 1
return f(a.sin(v)*a.cos(A)*w,a.cos(v)*a.cos(A)*w,a.sin(A)*w)end
function aA(_,q)if not m then
m={}m[q]={E=f(),M=f()}elseif not m[q]then
m[q]={E=f(),M=f()}end
m[q].M=K(_,m[q].E)m[q].E=_
return m[q].M
end
function aE(_,O,S,J)return f(F(O,_),F(S,_),F(J,_))end
function aW(_,O,S,J)return y(y(n(O,_.b),n(S,_.d)),n(J,_.c))end
function aC(_)return s(_),a.atan(_.b,_.d),a.asin(_.c/s(_))end
function T(ae)local a={}for j=1,3 do
a[j]={}for o=1,3 do
a[j][o]=ae and ae[j*3-3+o]or 0
end
end
return a
end
function z(aL,p)local a={}for j=1,3 do
a[j]={}for o=1,3 do
a[j][o]=0
for ap=1,3 do
a[j][o]=a[j][o]+aL[j][ap]*p[ap][o]end
end
end
return a
end
function P(k,i)local b={}b.b=i.b*k[1][1]+i.d*k[2][1]+i.c*k[3][1]b.d=i.b*k[1][2]+i.d*k[2][2]+i.c*k[3][2]b.c=i.b*k[1][3]+i.d*k[2][3]+i.c*k[3][3]return b end
function ak(x,min,max)return a.max(min,a.min(x,max))end
function aw(x,V,p)return x*(1-p)+V*p end
ax=f(0,1.5,-1)p=4
aS,aR=0,0
aQ,C,r,ba=.5,.88,0,0
function onTick()ag,aq,am=g(4),g(5),g(6)R,W,Q=cos(ag),cos(aq),cos(am)ah,D,G=sin(ag),sin(aq),sin(am)Z=f(W*Q,-D,W*G)aa=f(ah*G+R*D*Q,R*W,-ah*Q+R*D*G)aP=ay(Z,aa)ar=ao(aa)H=n(f(g(10),g(12),g(11)),U/60)X=aA(H,"angular_acc")ac=n(H,p)as=y(ac,n(X,.5*p^2))h=s(X)>.001 and as or(s(H)>.001 and ac or f(0,0,0))ad=T({1,0,0,0,cos(h.b),-sin(h.b),0,sin(h.b),cos(h.b)})Y=T({cos(h.d),0,sin(h.d),0,1,0,-sin(h.d),0,cos(h.d)})ai=T({cos(h.c),-sin(h.c),0,sin(h.c),cos(h.c),0,0,0,1})aG=z(z(ai,Y),ad)aZ=z(z(ad,Y),ai)B=aG
aH=P(B,Z)aI=P(B,aP)aN=P(B,ar)aO=f(g(1),g(3),g(2))au=f(g(13),g(14),g(15))aj=K(au,aO)az=K(aE(aj,aH,aI,aN),ax)bd,aF,aK=aC(az)ab=g(16)==2
aU=g(17)>0
aB=g(20)>0
if ab then
I=g(18)else
I=0
end
if aB then
C=ak(C+I*.004,.3,1)l=(atan(aw(tan(.0125),tan(1.1),C))-.0125)/(1.1-.0125)else
aD=a.min(g(19),99)aM=s(aj)r=ak(r+I*.001,-.1,.3)l=(.99/(1+.4*2.7^(-.014*aM)))if(r+l)>1 then
r=1-l
elseif(r+l)<0 then
r=-l
end
l=l+r-aD/4000
end
L(1,-aF/U)L(2,aK/U*2.942+.7355)L(3,l)end
function onDraw()i,v=t.getWidth(),t.getHeight()if ab then
an(1,1,1,200)t.drawRectF(2,v-6,12,5)an(85,160,35)t.drawText(2,v-6,"SOI")end
end
