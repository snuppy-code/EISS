-- Author: 
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2841 (3146 with comment) chars

N=property
ab=output
ag=input
w=screen
aj=w.setColor
f=ag.getNumber
B=ab.setNumber
bd=ag.getBool
aV=ab.setBool
be=N.getNumber
aQ=N.getBool
aW=N.getText
a=math
pi=a.pi
I=pi*2
sin=a.sin
cos=a.cos
tan=a.tan
asin=a.asin
acos=a.acos
atan=a.atan
function g(t,W,aF,aE)return{b=t
or 0,d=W
or 0,c=aF
or 0,i=aE
or 0}end
function z(_,e)return g(_.b+e.b,_.d+e.d,_.c+e.c)end
function aT(_,e)return g(_.b*e.b,_.d*e.d,_.c*e.c)end
function m(_,v)return g(_.b*v,_.d*v,_.c*v)end
function am(_)return m(_,-1)end
function D(_,e)return z(_,am(e))end
function s(_)return a.sqrt(_.b*_.b+_.d*_.d+_.c*_.c)end
function aN(_,v)return m(_,1/v)end
function aS(_)return aN(_,s(_))end
function M(_,e)return _.b*e.b+_.d*e.d+_.c*e.c
end
function ay(_,e)return g(_.d*e.c-_.c*e.d,_.c*e.b-_.b*e.c,_.b*e.d-_.d*e.b)end
function aZ(u,O,x)local x=x
or 1
return g(a.sin(u)*a.cos(O)*x,a.cos(u)*a.cos(O)*x,a.sin(O)*x)end
function ax(_,p)if not n then
n={}n[p]={K=g(),H=g()}elseif not n[p]then
n[p]={K=g(),H=g()}end
n[p].H=D(_,n[p].K)n[p].K=_
return n[p].H
end
function aL(_,C,J,A)return g(M(C,_),M(J,_),M(A,_))end
function bb(_,C,J,A)return z(z(m(C,_.b),m(J,_.d)),m(A,_.c))end
function aO(_)return s(_),a.atan(_.b,_.d),a.asin(_.c/s(_))end
function F(al)local a={}for k=1,3 do
a[k]={}for q=1,3 do
a[k][q]=al and al[k*3-3+q]or 0
end
end
return a
end
function y(aC,o)local a={}for k=1,3 do
a[k]={}for q=1,3 do
a[k][q]=0
for Z=1,3 do
a[k][q]=a[k][q]+aC[k][Z]*o[Z][q]end
end
end
return a
end
function S(j,i)local b={}b.b=i.b*j[1][1]+i.d*j[2][1]+i.c*j[3][1]b.d=i.b*j[1][2]+i.d*j[2][2]+i.c*j[3][2]b.c=i.b*j[1][3]+i.d*j[2][3]+i.c*j[3][3]return b end
function ao(t,min,max)return a.max(min,a.min(t,max))end
function av(t,W,o)return t*(1-o)+W*o end
aD=g(0,1.5,-1)o=4
aY,aR=0,0
ba,L,r,aX=.5,.88,0,0
function onTick()ae,ad,aa=f(4),f(5),f(6)P,U,Q=cos(ae),cos(ad),cos(aa)ac,G,E=sin(ae),sin(ad),sin(aa)Y=g(U*Q,-G,U*E)X=g(ac*E+P*G*Q,P*U,-ac*Q+P*G*E)aB=ay(Y,X)aw=am(X)T=m(g(f(10),f(12),f(11)),I/60)ah=ax(T,"angular_acc")aq=m(T,o)au=z(aq,m(ah,.5*o^2))h=s(ah)>.001 and au or(s(T)>.001 and aq or g(0,0,0))af=F({1,0,0,0,cos(h.b),-sin(h.b),0,sin(h.b),cos(h.b)})ak=F({cos(h.d),0,sin(h.d),0,1,0,-sin(h.d),0,cos(h.d)})ai=F({cos(h.c),-sin(h.c),0,sin(h.c),cos(h.c),0,0,0,1})aG=y(y(ai,ak),af)bc=y(y(af,ak),ai)V=aG
aH=S(V,Y)aM=S(V,aB)aP=S(V,aw)aI=g(f(1),f(3),f(2))ar=g(f(13),f(14),f(15))an=D(ar,aI)aK=D(aL(an,aH,aM,aP),aD)b_,aJ,az=aO(aK)ap=f(16)==2
aU=f(17)>0
aA=f(20)>0
if ap then
R=f(18)else
R=0
end
if aA then
L=ao(L+R*.004,.3,1)l=(atan(av(tan(.0125),tan(1.1),L))-.0125)/(1.1-.0125)else
at=a.min(f(19),99)as=s(an)r=ao(r+R*.001,-.1,.3)l=(.99/(1+.4*2.7^(-.014*as)))if(r+l)>1 then
r=1-l
elseif(r+l)<0 then
r=-l
end
l=l+r-at/4000
end
B(1,-aJ/I)B(2,az/I*2.942+.7355)B(3,l)end
function onDraw()i,u=w.getWidth(),w.getHeight()if ap then
aj(1,1,1,200)w.drawRectF(2,u-6,12,5)aj(85,160,35)w.drawText(2,u-6,"SOI")end
end
