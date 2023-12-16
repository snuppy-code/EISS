m,i,o,p,s,T,F = math,input,output,property,screen,true,false
ign,osn,igb,osb = i.getNumber, o.setNumber, i.getBool, o.setBool
pi = m.pi
pi2 = pi*2

text,line,rect,rectF,circl,clear,setcolor = s.drawText,s.drawLine,s.drawRect,s.drawRectF,s.drawCircle,s.drawClear,s.setColor

function vec(x,y,z,w) --defines a vector
return {x=x or 0,y=y or 0,z=z or 0, w=w or 0}
end

function add(a,b) --adds 2 vectors
return vec(a.x+b.x, a.y+b.y, a.z+b.z)
end

function multf(a,n) --multiplies a vector by a factor
return vec(a.x*n, a.y*n, a.z*n)
end

function invert(a) --inverts a vector
return multf(a,-1)
end

function subt(a,b) --subtracts a vector from another
return add(a,invert(b))
end

function length(a) --gets length of a vector
return m.sqrt(a.x*a.x+a.y*a.y+a.z*a.z)
end

function delta(c,b)if not a then a={}a[b]={oldVar=0,deltaVar=0}elseif not a[b]then a[b]={oldVar=0,deltaVar=0}end;a[b].deltaVar=c-a[b].oldVar;a[b].oldVar=c;return a[b].deltaVar end
function vecDelta(d,b)if not a then a={}a[b]={oldVec=vec(),deltaVec=vec()}elseif not a[b]then a[b]={oldVec=vec(),deltaVec=vec()}end;a[b].deltaVec=subt(d,a[b].oldVec)a[b].oldVec=d;return a[b].deltaVec end

maxspeed = 23
speed = 0
mypos = vec()

function onTick()
    mypos = vec(ign(1),ign(2),ign(3))
    myvel = multf(vecDelta(mypos,"myvel"),60)
    myacc = multf(vecDelta(myvel,"myacc"),60)

    speed = length(myvel)
    speed = speed
    accmag = length(myacc)
    g = accmag/9.81
end

function onDraw()
    w,h = s.getWidth(),s.getHeight()

    setcolor(75,25,60)
    --speed
    speedpixels = (1-speed/maxspeed)*(h-1)
    line(0,h-1,0,speedpixels)
    line(0,speedpixels,4,speedpixels)
    text(2,speedpixels+2,"Spd:"..m.floor(speed+0.5))
end