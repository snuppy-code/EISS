
--math & input shorthands
m,i,o,p = math,input,output,property
ign,osn,igb,osb = i.getNumber, o.setNumber, i.getBool, o.setBool
pgn,pgb = p.getNumber, p.getBool
abs,cos,sin,acos,asin,tan,atan = m.abs, m.cos, m.sin, m.acos, m.asin, m.tan, m.atan
pi = m.pi
pi2 = pi*2

function vec(x,y,z)
return {x=x or 0,y=y or 0,z=z or 0}
end
function multf(a,n)
return vec(a.x*n, a.y*n, a.z*n)
end
function invert(a)
return multf(a, -1)
end
function divf(a,n)
return multf(a,1/n)
end
function add(a,b)
return vec(a.x+b.x, a.y+b.y, a.z+b.z)
end
function subt(a,b)
return add(a,invert(b))
end
function length(a)
return m.sqrt(a.x*a.x+a.y*a.y+a.z*a.z)
end
function norm(a)
return multf(a,1/length(a))
end
function cross(a,b)
return vec(a.y*b.z-a.z*b.y, a.z*b.x-a.x*b.z, a.x*b.y-a.y*b.x)
end
function dot(a,b)
return a.x*b.x+a.y*b.y+a.z*b.z
end
function project(a,b)
return multf(norm(b), dot(a, norm(b)))
end
function reject(a,b)
return subt(a, multf(norm(b), dot(a, norm(b))))
end
function reflect(a, b, factor)
return subt(a, multf(reject(a, b), factor or 2))
end
function stoc(hor,ver,d)
local d=d or 1
return vec(m.sin(hor)*m.cos(ver)*d, m.cos(hor)*m.cos(ver)*d, m.sin(ver)*d)
end
function tolocal(a,r,f,u)
return vec(dot(r,a),dot(f,a),dot(u,a))
end
function torelative(a,r,f,u)
return add(add(multf(r,a.x), multf(f,a.y)), multf(u,a.z))
end
function clamp(var,min,max)
    return m.min(max,m.max(var,min))
end

-- Additional utility function to calculate angle between two vectors
function angleBetween(v1, v2)
    return acos(dot(norm(v1), norm(v2)))
end
-- Function to calculate the time it will take for the ball to reach a certain distance
function timeToReach(distance, ballSpeed)
    return distance / ballSpeed
end
-- Function to predict target's future position based on current position, velocity, acceleration, and time
function predictPosition(currentPosition, velocity, acceleration, time)
    return add(add(currentPosition, multf(velocity, time)), multf(acceleration, time*time*0.5))
end

function delta(c,b)if not a then a={}a[b]={oldVar=0,deltaVar=0}elseif not a[b]then a[b]={oldVar=0,deltaVar=0}end;a[b].deltaVar=c-a[b].oldVar;a[b].oldVar=c;return a[b].deltaVar end
function vecDelta(d,b)if not a then a={}a[b]={oldVec=vec(),deltaVec=vec()}elseif not a[b]then a[b]={oldVec=vec(),deltaVec=vec()}end;a[b].deltaVec=subt(d,a[b].oldVec)a[b].oldVec=d;return a[b].deltaVec end

function onTick()--onTick() called 60 times a second, most code should be in here
    mpos = vec(ign(1),ign(3),ign(2))--get our position and store as vector
    tpos = vec(ign(7),ign(8),ign(9))--get target position
    
    --calculate our facing vectors with rotation inputs
    rx,ry,rz=ign(4),ign(5),ign(6)
    cx,cy,cz=cos(rx),cos(ry),cos(rz)
    sx,sy,sz=sin(rx),sin(ry),sin(rz)
    right = vec(cy*cz, -sy, cy*sz)
    fwd = vec(sx*sz + cx*sy*cz, cx*cy, -sx*cz + cx*sy*sz)
    up = cross(right,fwd)

    tgtvel = vecDelta(tgtpos,"tgtvel")--get target velocity by taking delta of their position vector
    tgtacc = vecDelta(tgtvel,"tgtacc")--get target acceleration by taking delta of their velocity vector

    ballSpeed = 500 -- You need to define this based on your scenario

    -- Predict future position of the target
    futureTime = timeToReach(length(subt(tpos, mpos)), ballSpeed)
    predictedPos = predictPosition(tpos, tgtvel, tgtacc, futureTime)

    -- Calculate the direction vector from your position to the predicted position
    dirToTarget = subt(predictedPos, mpos)

    -- Calculate horizontal and vertical angles
    horizontalAngle = atan2(dirToTarget.y, dirToTarget.x)
    verticalAngle = angleBetween(dirToTarget, vec(1, 0, 0))

    -- Set output values for angles
    osn(1, horizontalAngle)
    osn(2, verticalAngle)
end