
m,ign,osn,pgn=math,input.getNumber,output.setNumber,property.getNumber

---- IFF / DATALINK SETUP ----
maxfriendlies = pgn("Max friendlies")
usernumber = pgn("User number")
freqseed = pgn("Frequency seed")
encseed = pgn("Encryption seed")
basefreqmin,basefreqmax = 1871759, 6393518

-- find base frequency all friendlies will go from, based on freq seed
m.randomseed(freqseed)
basefreq = m.random(basefreqmin,basefreqmax)

--define table that will hold friendly offsets, and later, their final frequency
friendlyfreq = {}

-- find offsets for each friendly, ensuring no duplicates, based on freq seed
m.randomseed(freqseed)
for i = 1,maxfriendlies do
  thisoffset = m.random(-605791, 605791)
  for _,v in ipairs(friendlyfreq) do
    while v == thisoffset do
      thisoffset = m.random(-605791, 605791)
    end
  end
  friendlyfreq[i] = thisoffset
end
-- add the base frequency to each friendly's offset to get them to their true freq
for k in ipairs(friendlyfreq) do
  friendlyfreq[k] = friendlyfreq[k] + basefreq
end

-- setup vars 
currentfriend = 1
ticksdelay = 7
radiobuffer = {}
radiobufferlength = 8

friendlyfiles = {}--number indexed table with all friendlies, specific order or anything doesn't really matter as long as they are all there

function encrypt(h)
    return vec(h.y/(3.57*encseed), h.x/(3.81*encseed), h.z/(4.19*encseed))
end

function decrypt(g)
    return vec(g.y*(3.81*encseed), g.x*(3.57*encseed), g.z*(4.19*encseed))
end

function vec(x,y,z)
    return {x=x or 0,y=y or 0,z=z or 0}
end

function onTick()
    mpos = vec(ign(1),ign(2),ign(3))

	--set freq
    currentfriend = (currentfriend == maxfriendlies) and 1 or currentfriend + 1
    currentfriend = (currentfriend == usernumber) and ((currentfriend == maxfriendlies) and 1 or currentfriend + 1) or currentfriend
    usedfreq = friendlyfreq[currentfriend]

	--copy and overwrite everything up one
	for i=radiobufferlength,2,-1 do
		radiobuffer[i] = radiobuffer[i-1]
	end

	
	radiobuffer[1] = {iff = currentiff,id=currentfriend}
	--debug.log("checking friend: "..currentfriend.." freq: "..usedfreq)
    
	if #radiobuffer == radiobufferlength then
		--debug.log("#radiobuffer == radiobufferlength")
		friendlyfiles[radiobuffer[ticksdelay].id]={pos=decrypt(vec(ign(4),ign(5),ign(6)))}
	end

	encryptedposition = encrypt(mpos)
	osn(1,encryptedposition.x)--encrypted my pos x
	osn(2,encryptedposition.y)--encrypted my pos y
	osn(3,encryptedposition.z)--encrypted my pos z

    osn(4,usedfreq)--set the next frequency to check, be it friendly or enemy
	osn(5,friendlyfreq[usernumber])--set our frequency, even though it isn't changing we need to output it still

    target = vec(ign(7),ign(8),ign(9))

    --osb()
end