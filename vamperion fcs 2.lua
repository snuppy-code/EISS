--this IS the latest version
m,i,o,p = math,input,output,property
ign,osn,igb = i.getNumber, o.setNumber, i.getBool
pgn,pgb = p.getNumber, p.getBool

function threshold(a,min,max)
	return a > min and a < max
end
function clamp(a,min,max)
	return m.min(m.max(a,min),max)
end

function addAxes(a,b)
	return {pitch=a.pitch + b.pitch,roll=a.roll + b.roll,yaw=a.yaw + b.yaw}
end

function lerp(a,b,t) return a * (1-t) + b * t end

function capacitor(f,g,h,j)
	if not dltb then
		dltb = {}
		dltb[j] = {i1=0,i2=0}
	elseif not dltb[j] then
		dltb[j] = {i1=0,i2=0}
	end
	if f then
		if dltb[j].i1 >= g then
			dltb[j].i2 = h
			return true
		else
			dltb[j].i1 = dltb[j].i1 + 1
			return false
		end
	else
		if dltb[j].i2 == 0 then
			return false
		else
			dltb[j].i2 = dltb[j].i2 - 1
			return true
		end
	end
end
function pid(k,l,n,j)
	if not pdtl then
		pdtl = {}
		pdtl[j] = {e=0,i=0,d=0,ep=0,ip=0}
	elseif not pdtl[j] then
		pdtl[j] = {e=0,i=0,d=0,ep=0,ip=0}
	end
	pdtl[j].e = k - l
	pdtl[j].i = pdtl[j].ip + pdtl[j].e
	pdtl[j].d = pdtl[j].e - pdtl[j].ep
	pdtl[j].controlOutput = n.p * pdtl[j].e + n.i * pdtl[j].i + n.d * pdtl[j].d
	pdtl[j].ep = pdtl[j].e
	pdtl[j].ip = pdtl[j].i
	return pdtl[j].controlOutput
end

pitchtunes = {p=pgn("P pitch"),i=pgn("I pitch"),d=pgn("D pitch")}
rolltunes = {p=pgn("P roll"),i=pgn("I roll"),d=pgn("D roll")}
yawtunes = {p=pgn("P yaw"),i=pgn("I yaw"),d=pgn("D yaw")}

unloadedgains = {
	pitch=pgn("Control gain pitch"),
	roll=pgn("Control gain roll"),
	yaw=pgn("Control gain yaw")}
unloadedtrims = {
	pitch=pgn("Pitch trim"),
	roll=pgn("Roll trim"),
	yaw=pgn("Yaw trim")}
activationdelays = {
	pitch=pgn("Pitch PID activation delay ticks"),
	roll=pgn("Roll PID activation delay ticks"),
	yaw=pgn("Yaw PID activation delay ticks")}

deadzone = pgn("Deadzone")
runpids = pgb("Use PIDs?")

sumangspdaxes = {pitch=5,roll=0,yaw=0}
lastorient = {pitch=-5,roll=0,yaw=0}
outputaxes = {pitch=0,roll=0,yaw=0}

gains = {}
pitchever = false

group1trims = {
	yaw = {
		[1] = -0.14,
		[2] = 0,
		[3] = -0.17,
		[4] = 0,
		[5] = -0.19,
		[6] = 0,
	},
	pitch = {
		[1] = 0.01,
		[2] = -0.01,
		[3] = -0.03,
		[4] = -0.06,
		[5] = -0.09,
		[6] = -0.11,
	}
}
group2trims = {
	[1] = -0.04
}

function pitchgain(x)
    if x >= 0 and x < 3 then
        return (0.008*x^3 - 0.055*x^2 + 0.127*x + 1.1)
    elseif x >= 3 and x < 4 then
        return (0.065*x + 1.015)
    elseif x >= 4 and x <= 6 then
        return 0.012*x^2 - 0.097*x + 1.465
    else
        return 0
    end
end

gains = {
	pitch=pgn("Control gain pitch"),
	roll=pgn("Control gain roll"),
	yaw=pgn("Control gain yaw")}

function onTick()
	manaxes = {pitch=ign(2), roll=ign(1), yaw=ign(3)}--yaw=0}
	angspdaxes = {pitch=-ign(4), roll=-ign(5), yaw=ign(6)}

	group1missiles = ign(8)
	group2missiles = ign(9)

	gains.pitch = 0
	gains.pitch = pitchgain(group1missiles)+ign(13)*0.3--missile gain compensating and mseld gain adding
	gains.roll = unloadedgains.roll + (group1missiles*0.34 + ign(13)*0.3)
	
	--gains = {
	--	pitch=ign(10),
	--	roll=ign(11),
	--	yaw=ign(12)
	--}

	--adjust trims with our gain
	trims = {
		pitch=unloadedtrims.pitch*gains.pitch,
		roll=unloadedtrims.roll*gains.roll,
		yaw=unloadedtrims.yaw*gains.yaw}
	--add group 1 yaw and pitch counter trim
	if group1trims.yaw[group1missiles] then
		trims.yaw = trims.yaw + group1trims.yaw[group1missiles]*gains.yaw
	end
	if group1trims.pitch[group1missiles] then
		trims.pitch = trims.pitch + group1trims.pitch[group1missiles]*gains.pitch
	end
	--add group 2 yaw counter trim
	if group2trims[group2missiles] then
		trims.yaw = trims.yaw + group2trims[group2missiles]*gains.yaw
	end

	sumangspdaxes = addAxes(sumangspdaxes,angspdaxes)

	--pitch
	PImanual = manaxes.pitch * gains.pitch
	PIpid = pid(lastorient.pitch, sumangspdaxes.pitch, pitchtunes, "ppid")
	PInokeypress = threshold(manaxes.pitch, -deadzone, deadzone)
	if capacitor(not PInokeypress, 0, activationdelays.pitch, "pcap") then
		if PInokeypress then
			outputaxes.pitch = trims.pitch - angspdaxes.pitch*10
		else
			outputaxes.pitch = trims.pitch + PImanual
		end
		lastorient.pitch = sumangspdaxes.pitch
	elseif runpids then
		outputaxes.pitch = trims.pitch + PIpid
	else
		outputaxes.pitch=trims.pitch
	end

	--roll
	ROmanual = manaxes.roll * gains.roll
	ROpid = pid(lastorient.roll, sumangspdaxes.roll, rolltunes, "rpid")
	ROnokeypress = threshold(manaxes.roll, -deadzone, deadzone)
	if capacitor(not ROnokeypress, 0, activationdelays.roll, "rcap") then
		if ROnokeypress then
			outputaxes.roll = trims.roll - angspdaxes.roll*2
		else
			outputaxes.roll = trims.roll + ROmanual
		end
		lastorient.roll = sumangspdaxes.roll
	elseif runpids then
		outputaxes.roll = trims.roll + ROpid
	else
		outputaxes.roll=trims.roll
	end

	--yaw
	YAmanual = manaxes.yaw * gains.yaw
	YApid = pid(lastorient.yaw, sumangspdaxes.yaw, yawtunes, "ypid")
	YAnokeypress = threshold(manaxes.yaw, -deadzone, deadzone)
	if capacitor(not YAnokeypress or not PInokeypress or not ROnokeypress, 0, activationdelays.yaw, "ycap") then
		if YAnokeypress then
			outputaxes.yaw = trims.yaw - angspdaxes.yaw*5
		else
			outputaxes.yaw = trims.yaw + YAmanual
		end
		lastorient.yaw = sumangspdaxes.yaw
	elseif runpids then
		outputaxes.yaw = trims.yaw + YApid
	else
		outputaxes.yaw=trims.yaw
	end

	--control mix and output:
	osn(1,-outputaxes.pitch + outputaxes.roll)
	osn(2,-outputaxes.pitch)
	osn(3,-outputaxes.pitch - outputaxes.roll)
	osn(4,outputaxes.pitch + outputaxes.roll)
	osn(5,outputaxes.pitch)
	osn(6,outputaxes.pitch - outputaxes.roll)
	osn(7,outputaxes.yaw)
	osn(8,-outputaxes.yaw)
	osn(9,outputaxes.roll/10)
end