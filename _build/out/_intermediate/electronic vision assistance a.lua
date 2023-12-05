
m,i,o,p,s,T,F = math,input,output,property,screen,true,false
ign,osn,igb,osb = i.getNumber, o.setNumber, i.getBool, o.setBool
pgn,pgb = p.getNumber, p.getBool
abs,cos,sin,floor,atan = m.abs, m.cos, m.sin, m.floor,m.atan
pi = m.pi
pi2 = pi*2

s = screen
text,textbox,line,rect,rectF,circl,clear,setcolor = s.drawText,s.drawTextBox,s.drawLine,s.drawRect,s.drawRectF,s.drawCircle,s.drawClear,s.setColor

function vec(x,y,z)
return {x=x or 0,y=y or 0,z=z or 0}
end
function length(a)
return m.sqrt(a.x*a.x+a.y*a.y+a.z*a.z)
end

function onTick()
    selectedtgt = vec(ign(23),ign(24),ign(25))
	--debug.log("evax: "..selectedtgt.x.." y: "..selectedtgt.y.." z: "..selectedtgt.z)
	ACM = ign(28) == 1
end
	
function onDraw()
	w,h = screen.getWidth(),screen.getHeight()
	if ACM then
		setcolor(255,0,0)
		rectF(0,0,1,h)
		rectF(w-1,0,1,h)
	end
    if length(selectedtgt) > 0 then
        setcolor(80,13,1)
		rectF(0,0,w,3)
        rectF(0,h-3,w,3)
    end
end