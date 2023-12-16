igb,osb,ign,osn = input.getBool, output.setBool,input.getNumber,output.setNumber

selectedhardpoint1 = 1
selectedhardpoint2 = 1

group1 = {
    hardpoints = {
        [1] = 1,
        [2] = 2,
        [3] = 3,
        [4] = 6,
        [5] = 7,
        [6] = 8
    },
    sequence = {
        [1] = 0,
        [2] = 1,
        [3] = 8,
        [4] = 2,
        [5] = 7,
        [6] = 3,
        [7] = 6
    }
}

group2 = {
    hardpoints = {
        [1] = 4,
        [2] = 5
    },
    sequence = {
        [1] = 0,
        [2] = 4,
        [3] = 5
    } 
}

touch1,touch2 = false,false
function onTick()
    ---- GROUP 1 ----
	--fire and increment group 1 if commanded
    touchin1 = igb(1)
	if touchin1 and not touch1 then
		selectedhardpoint1 = selectedhardpoint1%(#group1.hardpoints+1)+1
        --debug.log(". . . cycled1 to "..selectedhardpoint1.."\nor "..group1.sequence[selectedhardpoint1])
	end
	touch1 = touchin1
    osb(group1.sequence[selectedhardpoint1],true)

    --check how many missiles in group 1 are equipped
    equipped1 = 0
    for k,v in ipairs(group1.hardpoints) do
        if not (ign(v) == 0) then
            equipped1 = equipped1 + 1
        end
    end
    osn(1,equipped1)
    --debug.log("equipped1: "..equipped1)

    ---- GROUP 2 ----
    --fire and increment group 2 if commanded
    touchin2 = igb(2)
	if touchin2 and not touch2 then
		selectedhardpoint2 = selectedhardpoint2%(#group2.hardpoints+1)+1
        --debug.log(". . . cycled2 to "..selectedhardpoint2.."\nor "..group2.sequence[selectedhardpoint2])
	end
	touch2 = touchin2
    osb(group2.sequence[selectedhardpoint2],true)

    --check how many missiles in group 2 are equipped
    equipped2 = 0
    for k,v in ipairs(group2.hardpoints) do
        if not (ign(v) == 0) then
            equipped2 = equipped2 + 1
        end
    end
    osn(2,equipped2)
    --debug.log("equipped2: "..equipped2)
end

