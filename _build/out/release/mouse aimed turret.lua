_,q,u,r=math,input,output,property
k,s,w,y=q.getNumber,u.setNumber,q.getBool,u.setBool
b,D=r.getNumber,r.getBool
abs,cos,sin,acos,asin,tan,atan=_.abs,_.cos,_.sin,_.acos,_.asin,_.tan,_.atan
pi=_.pi
J=pi*2
function j(p,c)if not a then a={}a[c]={g=0,i=0}elseif not a[c]then a[c]={g=0,i=0}end;a[c].i=p-a[c].g;a[c].g=p;return a[c].i end
function l(a,min,max)return _.min(_.max(a,min),max)end
v=0
G=b("p")F=b("i")H=b("d")t=b("i clamp")K=b("v clamp")E=.2
C=b("horizontal look velocity gain")B=b("vertical look velocity gain")if D("Invert horizontal?")then m=-1 else m=1 end
function onTick()d=k(1)if not w(4)then
e=k(9)*m
f=k(10)*4
d=abs(d%1)o=w(2)and not((d>.32)and(d<.709))else
e=0
f=0
o=false
end
A=j(e,"llx")*C
z=j(f,"lly")*B
e=l(e+A,-.291,.32)f=l(f+z+E,-.3,.3)h=((e-d)%1+1.5)%1-.5
n=l(v+h,t,-t)x=j(h,"deriv")I=G*h+F*n+H*x
v=n
s(1,I)s(2,f)y(1,o)end
