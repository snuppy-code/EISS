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

maxspeed = 297
maxalt = 4000
maxgs = 22
speed = 0
mypos = vec()

function onTick()
    mypos = vec(ign(1),ign(2),ign(3))
    myvel = multf(vecDelta(mypos,"myvel"),60)
    myacc = multf(vecDelta(myvel,"myacc"),60)

    speed = length(myvel)
    speed = speed+speed/(speed/2)
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

    --alt
    altpixels = (1-mypos.z/maxalt)*(h-1)
    line(w-1,h-1,w-1,altpixels)
    line(w-1,altpixels,w-5,altpixels)
    thetext = "Alt:"..m.floor(mypos.z+0.5)
    text(w-#thetext*5-1,altpixels+2,thetext)

    --gs
    gpixels = (g/maxgs)*34
    setcolor(40,4,4,255)
    line(w/2-1-gpixels,h-1,w/2+gpixels,h-1)
    text(w/2+gpixels-12,h-7,"G:"..m.floor(g*10+0.5)/10)
end