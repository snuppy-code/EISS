
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

voffset = 0.2

lookhorgain = pgn("horizontal look velocity gain")
lookvergain = pgn("vertical look velocity gain")
if pgb("Invert horizontal?") then invertx = -1 else invertx = 1 end

function onTick()
    -- get process angle
    pivotang = ign(1)

    -- get setpoint angles
    if not igb(4) then
        lookangx = ign(9)*invertx
        lookangy = ign(10)*4
        --fire auth
        --debug.log(" --- \npivotang: "..pivotang.."\npivotang%1: "..(pivotang%1).."\nabs(pivotang%1): "..abs(pivotang%1).." - \n"..tostring(pivotang > 0.32).."\n"..tostring(pivotang < 0.68))
        pivotang = abs(pivotang%1)
        fireauth = igb(2) and not ((pivotang > 0.32) and (pivotang < 0.709))
    else
        lookangx=0
        lookangy=0
        fireauth = false
    end
    -- lead x & y setpoints based on their velocities and clamp
    lookleadx = delta(lookangx,"llx")*lookhorgain
    lookleady = delta(lookangy,"lly")*lookvergain
    
    lookangx = clamp(lookangx+lookleadx,-0.291,0.32)
    lookangy = clamp(lookangy+lookleady+voffset,-0.3,0.3)

    -- run PID
    error = ((lookangx - pivotang)%1+1.5)%1-0.5
    integral = clamp(integral_prior+error,iclamp,-iclamp)
    derivative = delta(error,"deriv")

    value_out = kp*error + ki*integral + kd*derivative
    
    integral_prior = integral

    -- outputs
    osn(1,value_out)
    osn(2,lookangy)
    osb(1,fireauth)
end

--((x-y)%1+1.5)%1-0.5

--lookvel
--lookacc
--lookdifferencevelgain
--lookdifferenceaccgain
--resultdifferencevel