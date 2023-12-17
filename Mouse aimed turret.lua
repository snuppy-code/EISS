m,i,o,p = math,input,output,property
ign,osn,igb,osb = i.getNumber, o.setNumber, i.getBool, o.setBool
pgn,pgb = p.getNumber, p.getBool
abs,cos,sin,acos,asin,tan,atan = m.abs, m.cos, m.sin, m.acos, m.asin, m.tan, m.atan
pi = m.pi
pi2 = pi*2

function delta(c,b)if not a then a={}a[b]={oldVar=0,deltaVar=0}elseif not a[b]then a[b]={oldVar=0,deltaVar=0}end;a[b].deltaVar=c-a[b].oldVar;a[b].oldVar=c;return a[b].deltaVar end
function clamp(a,min,max) return m.min(m.max(a,min),max) end

integral_prior = 0

kp = pgn("p")
ki = pgn("i")
kd = pgn("d")
iclamp = pgn("i clamp")
vclamp = pgn("v clamp")

vclampzones = {
    [1]
}

lookhorgain = pgn("horizontal look velocity gain")
lookvergain = pgn("vertical look velocity gain")
if pgb("Invert horizontal?") then invertx = -1 else invertx = 1 end

function onTick()
    lookangx = ign(9)*invertx
    lookangy = ign(10)*4

    lookleadx = delta(lookangx,"llx")*lookhorgain
    lookleady = delta(lookangy,"lly")*lookvergain
    pivotang = ign(1)

    lookangx = clamp(lookangx+lookleadx,-0.37,0.37)
    error = (( - pivotang)%1+1.5)%1-0.5
    integral = m.max(m.min(integral_prior+error,iclamp),-iclamp)
    derivative = delta(error,"deriv")

    value_out = kp*error + ki*integral + kd*derivative
    
    integral_prior = integral
    osn(1,value_out)
    osn(2,m.max(m.min(lookangy+lookleady+voffset,vclamp),-vclamp))
end

--((x-y)%1+1.5)%1-0.5

--lookvel
--lookacc
--lookdifferencevelgain
--lookdifferenceaccgain
--resultdifferencevel