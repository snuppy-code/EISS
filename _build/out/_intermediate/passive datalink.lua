
m,ign,osn,pgn=math,input.getNumber,output.setNumber,property.getNumber

---- IFF / DATALINK SETUP ----
maxfriendlies = pgn("Max friendlies")
usernumber = pgn("User number")
freqseed = pgn("Frequency seed")
encseed = pgn("Encryption seed")
basefreqmin,basefreqmax = 1871759, 6393518
friendlyfreq = {}

-- find base frequency all friendlies will go from, based on freq seed
m.randomseed(freqseed)
basefreq = m.random(basefreqmin,basefreqmax)

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

-- add the base frequency to our offset to get our true freq
ourfreq = friendlyfreq[usernumber] + basefreq
friendlyfreq, maxfriendlies, freqseed, basefreqmin, basefreqmax = nil,nil,nil,nil,nil

function encrypt(h)
    return vec(h.y/(3.57*encseed), h.x/(3.81*encseed), h.z/(4.19*encseed))
end

function vec(x,y,z)
    return {x=x or 0,y=y or 0,z=z or 0}
end


function onTick()
	osn(4,ourfreq)--set our frequency, even though it isn't changing we need to output it still

	encryptedposition = encrypt(vec(ign(1),ign(2),ign(3)))
	osn(1,encryptedposition.x)--encrypted my pos x
	osn(2,encryptedposition.y)--encrypted my pos y
	osn(3,encryptedposition.z)--encrypted my pos z
end