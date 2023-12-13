--made by judgementalbird
_=nil
a,l,e,b=math,input.getNumber,output.setNumber,property.getNumber
q=b("Max friendlies")w=b("User number")j=b("Frequency seed")k=b("Encryption seed")n,o=1871759,6393518
g={}a.randomseed(j)u=a.random(n,o)a.randomseed(j)for v=1,q do
i=a.random(-605791,605791)for x,s in ipairs(g)do
while s==i do
i=a.random(-605791,605791)end
end
g[v]=i
end
t=g[w]+u
g,q,j,n,o=_,_,_,_,_
function r(h)return p(h.f/(3.57*k),h.d/(3.81*k),h.c/(4.19*k))end
function p(d,f,c)return{d=d or 0,f=f or 0,c=c or 0}end
function onTick()e(4,t)m=r(p(l(1),l(2),l(3)))e(1,m.d)e(2,m.f)e(3,m.c)end
