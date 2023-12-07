-- Author: judgementalbird on discord :3
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2475 (2809 with comment) chars

Z=nil
W=pairs
y=screen
g,A,S,T,h,aI,bb=math,input,output,property,y,true,false
b,aV,aW,aN=A.getNumber,S.setNumber,A.getBool,S.setBool
aF,aQ=T.getNumber,T.getBool
abs,cos,sin,floor,atan=g.abs,g.cos,g.sin,g.floor,g.atan
pi=g.pi
aH=pi*2
h=y
X,aC,aR,ba,z,aL,aD,C=h.drawText,h.drawTextBox,h.drawLine,h.drawRect,h.drawRectF,h.drawCircle,h.drawClear,h.setColor
function e(a,d,f,j)return{a=a or 0,d=d or 0,f=f or 0,j=j or 0}end
function E(_,c)return e(_.a+c.a,_.d+c.d,_.f+c.f)end
function aZ(_,c)return e(_.a*c.a,_.d*c.d,_.f*c.f)end
function o(_,v)return e(_.a*v,_.d*v,_.f*v)end
function al(_)return o(_,-1)end
function Y(_,c)return E(_,al(c))end
function q(_)return g.sqrt(_.a*_.a+_.d*_.d+_.f*_.f)end
function au(_,v)return o(_,1/v)end
function aT(_)return au(_,q(_))end
function N(_,c)return _.a*c.a+_.d*c.d+_.f*c.f
end
function ay(_,c)return e(_.d*c.f-_.f*c.d,_.f*c.a-_.a*c.f,_.a*c.d-_.d*c.a)end
function aG(K,w,u)local u=u or 1
return e(g.sin(K)*g.cos(w)*u,g.cos(K)*g.cos(w)*u,g.sin(w)*u)end
function aa(_,p)if not l then
l={}l[p]={O=e(),F=e()}elseif not l[p]then
l[p]={O=e(),F=e()}end
l[p].F=Y(_,l[p].O)l[p].O=_
return l[p].F
end
function aK(_,G,I,J)return e(N(G,_),N(I,_),N(J,_))end
function aM(_,G,I,J)return E(E(o(G,_.a),o(I,_.d)),o(J,_.f))end
function aO(a,h,Q)return a<h and h or a>Q and Q or a
end
function aP(as,ak,av,j,n)local ap=av*(.025-2.2)+2.2
local ag=j/2; local ac=n/2
local at=(ag-128*.025)/(ac-128*.025)local ae=g.tan(ap/2); local aj=ae*at
local s=Y(as,ak)local ar,ah=s.d>0 and ag*(1+s.a/s.d/aj)or 0,s.d>0 and n-ac*(1+s.f/s.d/ae)or 0
return ar,ah
end
aX={}aJ=1000
i=3
aE=e(0,2.625,-.5)aY=e(0,3.125,-.25)aw={}for A=1,i do
aw[A]={K=0,w=0}end
ab=10
t={}r={}function onTick()aA=b(28)==1
ax=e(b(1),b(2),b(3))ad,V,R=b(4),b(5),b(6)B,L,H=cos(ad),cos(V),cos(R)P,D,M=sin(ad),sin(V),sin(R)an=e(L*H,-D,L*M)am=e(P*M+B*D*H,B*L,-P*H+B*D*M)aS=ay(an,am)af=o(aa(ax,"myvel"),60)ao=o(aa(af,"myacc"),60)aq=q(af)az=q(ao)/9.81
x=b(19)m=e(b(7),b(8),b(9))if q(m)>0 then
r[x]={U=m,i=0}end
m=e(b(10),b(11),b(12))if q(m)>0 then
r[x+1]={U=m,i=0}end
x=b(21)m=e(b(13),b(14),b(15))if q(m)>0 then
t[x]={U=m,i=0}end
for k,ai in W(r)do
r[k].i=r[k].i+1
if r[k].i>=ab then
r[k]=Z
end
end
for k,ai in W(t)do
t[k].i=t[k].i+1
if t[k].i>=ab then
t[k]=Z
end
end
aB=e(b(23),b(24),b(25))end
function onDraw()j,n=y.getWidth(),y.getHeight()b_,aU=j/2,n/2
if aA then
C(255,0,0)z(0,0,1,n)z(j-1,0,1,n)end
if q(aB)>0 then
C(80,13,1)z(0,0,j,3)z(0,n-3,j,3)end
C(255,120,120)X(6,6,"Gs: "..az)X(6,12,"Spd: "..aq)end
