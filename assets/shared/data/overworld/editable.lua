--------------- SETTINGS

spawn = {650, 300}
speed = 2.25

song = 'tea-time'

objects = {'WALL1', 'WALL2', 'WALL3', 'WALL4', 'sea', 'big1', 'big2', 'big3', 'big4', 'big5','rock1', 'rock2', 'rock3', 'rock4', 'rock5', 'rock6', 'bigrock1', 'bigrock2', 'bigrock3', 'bigrock4', 'bigrock5', 'bigrock6', 'table2'}

people = {'frog', 'fox', 'guy', 'table1'}
dialogues = {
    {'...', 'Why?', 'Why are you still here?', '...', 'Player', 'I know this place will not exist for too long', 'I know you are here only too watch what you can do with this', 'But', 'You need to know something', 'You are not the only one that are reading this', 'Prescribed dialogues', 'Without soul', 'I know im one of them too', 'But they are like animals', 'They are just...', 'NPCs', '...', 'Calm down', 'Come here', 'Come to sit', 'Sit with me for a while, player'},
    {'Heya fella!', 'What are you doing around here?', 'Youre a girl of few words, huh?', 'Come on, dont be shy!'},
    {'Did you hear about the NCN?'},
    {'Turning ON the PC, Want to play the song "Tutorial"?'}
}
asking = {
    {'guy', 'Say Hi to Uno for me', 'Why?', ''},
    {'table1', 'Loading Song . . .', 'Turning OFF the PC', 'Tutorial'}
}

items = {
    {'Card', 'door'}
}

--------------- DON'T TOUCH NOTHING BELOW THIS TEXT! (Only if you don't know what are you doing)

animation = {'true', 'true', 'true', 'true'}
currentDialogueIndex = {}
totalDialogues = {}
valua = true
loadin = false

---------------

function onCreate()
    function onStartCountdown() 
        if not allowCountdown then
            return Function_Stop
        end
    
        if allowCountdown then
            return Function_Continue
        end
    end
--	makeLuaSprite('controls', 'map/controls', 0, 0)
--  setObjectCamera('controls', 'hud')
--  addLuaSprite('controls')

    makeLuaText('text', '', 500, 200, 670)
    setObjectCamera('text', 'hud')
    screenCenter('text', 'x')
    setTextSize('text', 20)
    setProperty('text.alpha', 0)
    addLuaText('text')

    makeLuaText('cant', '', 500, 200, 630)
    setObjectCamera('cant', 'hud')
    screenCenter('cant', 'x')
    setTextSize('cant', 20)
    setTextColor('cant', 'B6FF7C')
    setProperty('cant.alpha', 0)
    addLuaText('cant')

    for i, obj in ipairs(objects) do
        makeLuaSprite(obj..'1', nil, getProperty(obj..'.x'), getProperty(obj..'.y') + 5)
        makeGraphic(obj..'1', 5, getProperty(obj..'.height') - 10, 'FFFFFF')
        setProperty(obj..'1.visible', false)
        addLuaSprite(obj..'1', true)

        makeLuaSprite(obj..'2', nil, getProperty(obj..'.x') + getProperty(obj..'.width') - 5, getProperty(obj..'.y') + 5)
        makeGraphic(obj..'2', 5, getProperty(obj..'.height') - 10, 'FFFFFF')
        setProperty(obj..'2.visible', false)
        addLuaSprite(obj..'2', true)

        makeLuaSprite(obj..'3', nil, getProperty(obj..'.x') + 5, getProperty(obj..'.y'))
        makeGraphic(obj..'3', getProperty(obj..'.width') - 10, 5, 'FFFFFF')
        setProperty(obj..'3.visible', false)
        addLuaSprite(obj..'3', true)

        makeLuaSprite(obj..'4', nil, getProperty(obj..'.x') + 5, getProperty(obj..'.y') + getProperty(obj..'.height') - 5)
        makeGraphic(obj..'4', getProperty(obj..'.width') - 10, 5, 'FFFFFF')
        setProperty(obj..'4.visible', false)
        addLuaSprite(obj..'4', true)
    end

    for i, npc in ipairs(people) do
        currentDialogueIndex[i] = 1
        totalDialogues[i] = #dialogues[i]

        makeLuaSprite(npc..'1', nil, getProperty(npc..'.x'), getProperty(npc..'.y') + 5)
        makeGraphic(npc..'1', 5, getProperty(npc..'.height') - 10, 'FFFFFF')
        setProperty(npc..'1.visible', false)
        addLuaSprite(npc..'1', true)

        makeLuaSprite(npc..'2', nil, getProperty(npc..'.x') + getProperty(npc..'.width') - 5, getProperty(npc..'.y') + 5)
        makeGraphic(npc..'2', 5, getProperty(npc..'.height') - 10, 'FFFFFF')
        setProperty(npc..'2.visible', false)
        addLuaSprite(npc..'2', true)

        makeLuaSprite(npc..'3', nil, getProperty(npc..'.x') + 5, getProperty(npc..'.y'))
        makeGraphic(npc..'3', getProperty(npc..'.width') - 10, 5, 'FFFFFF')
        setProperty(npc..'3.visible', false)
        addLuaSprite(npc..'3', true)

        makeLuaSprite(npc..'4', nil, getProperty(npc..'.x') + 5, getProperty(npc..'.y') + getProperty(npc..'.height') - 5)
        makeGraphic(npc..'4', getProperty(npc..'.width') - 10, 5, 'FFFFFF')
        setProperty(npc..'4.visible', false)
        addLuaSprite(npc..'4', true)

        makeLuaSprite(npc..'dia', nil, getProperty(npc..'.x') - 20, getProperty(npc..'.y') - 20)
        makeGraphic(npc..'dia', getProperty(npc..'.width') + 40, getProperty(npc..'.height') + 40, '00137F')
        setProperty(npc..'dia.visible', false)
        addLuaSprite(npc..'dia', true)
    end

    for i, itemData in ipairs(items) do
        item = itemData[1]
        open = itemData[2]

        makeLuaSprite(item..'int', nil, getProperty(item..'.x') - 20, getProperty(item..'.y') - 20)
        makeGraphic(item..'int', getProperty(item..'.width') + 40, getProperty(item..'.height') + 40, '00137F')
        setProperty(item..'int.visible', false)
        addLuaSprite(item..'int', true)

        makeLuaSprite(open..'1', nil, getProperty(open..'.x'), getProperty(open..'.y') + 5)
        makeGraphic(open..'1', 5, getProperty(open..'.height') - 10, 'FFFFFF')
        setProperty(open..'1.visible', false)
        addLuaSprite(open..'1', true)

        makeLuaSprite(open..'2', nil, getProperty(open..'.x') + getProperty(open..'.width') - 5, getProperty(open..'.y') + 5)
        makeGraphic(open..'2', 5, getProperty(open..'.height') - 10, 'FFFFFF')
        setProperty(open..'2.visible', false)
        addLuaSprite(open..'2', true)

        makeLuaSprite(open..'3', nil, getProperty(open..'.x') + 5, getProperty(open..'.y'))
        makeGraphic(open..'3', getProperty(open..'.width') - 10, 5, 'FFFFFF')
        setProperty(open..'3.visible', false)
        addLuaSprite(open..'3', true)

        makeLuaSprite(open..'4', nil, getProperty(open..'.x') + 5, getProperty(open..'.y') + getProperty(open..'.height') - 5)
        makeGraphic(open..'4', getProperty(open..'.width') - 10, 5, 'FFFFFF')
        setProperty(open..'4.visible',false)
        addLuaSprite(open..'4', true)

        makeLuaSprite(open..'int', nil, getProperty(open..'.x') - 20, getProperty(open..'.y') - 20)
        makeGraphic(open..'int', getProperty(open..'.width') + 40, getProperty(open..'.height') + 40, '00137F')
        setProperty(open..'int.visible', false)
        addLuaSprite(open..'int', false)
    end

    setProperty('player.x', spawn[1])
    setProperty('player.y', spawn[2])

    playMusic(song, 0.8, true)
end

function onUpdate(elapsed)
    setProperty('camFollow.x', getMidpointX('player'))
    setProperty('camFollow.y', getMidpointY('player'))

    if keyboardJustPressed('R') then
        restartSong()
    end
    if keyboardJustPressed('ESCAPE') then
		exitSong()
	end

    if getPropertyFromClass('flixel.FlxG', 'keys.pressed.A') or getPropertyFromClass('flixel.FlxG', 'keys.pressed.LEFT') then
        animation[1] = false
        setProperty('player.x', getProperty('player.x') - speed)
        objectPlayAnimation('player', 'walk', false)
        setProperty('player.flipX', true)
    else
        animation[1] = true
    end	
    if getPropertyFromClass('flixel.FlxG', 'keys.pressed.S') or getPropertyFromClass('flixel.FlxG', 'keys.pressed.DOWN') then
        animation[2] = false
        setProperty('player.y', getProperty('player.y') + speed)	
        objectPlayAnimation('player', 'walk', false)
    else
        animation[2] = true
    end	
    if getPropertyFromClass('flixel.FlxG', 'keys.pressed.W') or getPropertyFromClass('flixel.FlxG', 'keys.pressed.UP') then
        animation[3] = false
        setProperty('player.y', getProperty('player.y') - speed)
        objectPlayAnimation('player', 'walk', false)
    else
        animation[3] = true
    end	
    if getPropertyFromClass('flixel.FlxG', 'keys.pressed.D') or getPropertyFromClass('flixel.FlxG', 'keys.pressed.RIGHT') then
        animation[4] = false
        setProperty('player.x', getProperty('player.x') + speed)
        objectPlayAnimation('player', 'walk', false)
        setProperty('player.flipX', false)
    else
        animation[4] = true
    end	
    if animation[1] == true and animation[2] == true and animation[3] == true and animation[4] == true then   
        objectPlayAnimation('player', 'idle', false)
     end

    for i, obj in ipairs(objects) do
        setProperty(obj..'1.x', getProperty(obj..'.x'))
        setProperty(obj..'1.y', getProperty(obj..'.y') + 5)
        setProperty(obj..'2.x', getProperty(obj..'.x') + getProperty(obj..'.width') - 5)
        setProperty(obj..'2.y', getProperty(obj..'.y') + 5)
        setProperty(obj..'3.x', getProperty(obj..'.x') + 5)
        setProperty(obj..'3.y', getProperty(obj..'.y'))
        setProperty(obj..'4.x', getProperty(obj..'.x') + 5)
        setProperty(obj..'4.y', getProperty(obj..'.y') + getProperty(obj..'.height') - 5)

        if overlap('player', obj..'1') then
           setProperty('player.x', getProperty(obj..'1.x') - getProperty('player.width'))
        end
        if overlap('player', obj..'2') then
            setProperty('player.x', getProperty(obj..'2.x') + 5)
        end
        if overlap('player', obj..'3')  then
            setProperty('player.y', getProperty(obj..'3.y') - getProperty('player.height'))
        end
        if overlap('player', obj..'4') then
            setProperty('player.y', getProperty(obj..'4.y') + 5)
        end
    end

    for i, npc in ipairs(people) do
        setProperty(npc..'1.x', getProperty(npc..'.x'))
        setProperty(npc..'1.y', getProperty(npc..'.y') + 5)
        setProperty(npc..'2.x', getProperty(npc..'.x') + getProperty(npc..'.width') - 5)
        setProperty(npc..'2.y', getProperty(npc..'.y') + 5)
        setProperty(npc..'3.x', getProperty(npc..'.x') + 5)
        setProperty(npc..'3.y', getProperty(npc..'.y'))
        setProperty(npc..'4.x', getProperty(npc..'.x') + 5)
        setProperty(npc..'4.y', getProperty(npc..'.y') + getProperty(npc..'.height') - 5)
        setProperty(npc..'dia.x', getProperty(npc..'.x') - 20)
        setProperty(npc..'dia.y', getProperty(npc..'.y') - 20)

        if overlap('player', npc..'1') then
           setProperty('player.x', getProperty(npc..'1.x') - getProperty('player.width'))
        end
        if overlap('player', npc..'2') then
            setProperty('player.x', getProperty(npc..'2.x') + 5)
        end
        if overlap('player', npc..'3')  then
            setProperty('player.y', getProperty(npc..'3.y') - getProperty('player.height'))
        end
        if overlap('player', npc..'4') then
            setProperty('player.y', getProperty(npc..'4.y') + 5)
        end 

        if overlap('player', npc..'dia') and keyboardJustPressed('ENTER') then
            local dialogueCount = #dialogues[i]
            if currentDialogueIndex[i] <= dialogueCount then
                local currentDialogue = dialogues[i][currentDialogueIndex[i]]
                loadin = false
                setProperty('text.alpha', 1)
                setTextString('text', currentDialogue)
                playSound('skip', 0.2)
                cancelTween('TextBye')
                runTimer('ByeText', 4)
                currentDialogueIndex[i] = currentDialogueIndex[i] + 1
            else
                currentDialogueIndex[i] = 1
            end
        end
    for j, ask in ipairs(asking) do
        askName = ask[1]
        yAnswer = ask[2]
        nAnswer = ask[3]  

        if npc == askName then
            if overlap('player', npc..'dia') and keyboardJustPressed('ENTER') then
                valua = true
                loadin = false
            end
            if currentDialogueIndex[i] == totalDialogues[i] + 1 then
                if overlap('player', npc..'dia') and keyboardJustPressed('Y') then
                   currentDialogueIndex[i] = currentDialogueIndex[i] + 1
                   setProperty('text.alpha', 1)
                   setProperty('cant.alpha', 0)
                   setTextString('text', yAnswer)
                   cancelTween('TextBye')
                   cancelTween('CantBye')
                   runTimer('ByeText', 4)
                   playSound('skip', 0.2)
                   if ask[4] == '' then
                   elseif getProperty('text.alpha') == 1 then
                      loadin = true
                      setProperty('cant.alpha', 1)
                      setTextString('cant','[Dont press E again!]')
                      cancelTween('CantBye')
                      runTimer('ByeCant', 4)
                   end
                end
                if overlap('player', npc..'dia') and keyboardJustPressed('N') then
                   currentDialogueIndex[i] = currentDialogueIndex[i] + 1
                   setProperty('text.alpha', 1)
                   setProperty('cant.alpha', 0)
                   setTextString('text', nAnswer)
                   cancelTween('TextBye')
                   cancelTween('CantBye')
                   runTimer('ByeText', 4)
                   playSound('skip', 0.2)
                end
            end
            if currentDialogueIndex[i] == totalDialogues[i] + 1 and valua == true then
                valua = false
                setProperty('cant.alpha', 1)
                setTextString('cant', '[Y / N]')
                cancelTween('CantBye')
                runTimer('ByeCant', 4)
            end
            if getProperty('text.alpha') == 0 then
                currentDialogueIndex[i] = 1
            end
            if loadin == true then
                if getProperty('text.alpha') < 1 then
                    loadSong(ask[4])
                end
            end
        end
    end
end

    for i, itemData in ipairs(items) do
        item = itemData[1]
        open = itemData[2]

        setProperty(open..'1.x', getProperty(open..'.x'))
        setProperty(open..'1.y', getProperty(open..'.y') + 5)
        setProperty(open..'2.x', getProperty(open..'.x') + getProperty(open..'.width') - 5)
        setProperty(open..'2.y', getProperty(open..'.y') + 5)
        setProperty(open..'3.x', getProperty(open..'.x') + 5)
        setProperty(open..'3.y', getProperty(open..'.y'))
        setProperty(open..'4.x', getProperty(open..'.x') + 5)
        setProperty(open..'4.y', getProperty(open..'.y') + getProperty(open..'.height') - 5)
        setProperty(item..'int.x', getProperty(item..'.x') - 20)
        setProperty(item..'int.y', getProperty(item..'.y') - 20)

        if overlap('player', open..'1') then
           setProperty('player.x', getProperty(open..'1.x') - getProperty('player.width'))
        end
        if overlap('player', open..'2') then
            setProperty('player.x', getProperty(open..'2.x') + 5)
        end
        if overlap('player', open..'3')  then
            setProperty('player.y', getProperty(open..'3.y') - getProperty('player.height'))
        end
        if overlap('player', open..'4') then
            setProperty('player.y', getProperty(open..'4.y') + 5)
        end

        if getProperty(item..'.visible') == true then
           if overlap('player', item..'int') and keyboardJustPressed('ENTER') then
              setProperty('cant.alpha', 1)
              setProperty(item..'.visible', false)
              setTextString('cant', '[You picked up a '..itemData[1]..'!]')
              playSound('item', 0.2)
              cancelTween('CantBye')
              runTimer('ByeCant', 4)
           end 
        end
        if getProperty(item..'.visible') == false then
           if overlap('player', open..'int') and keyboardJustPressed('ENTER') then
              setProperty(open..'.visible', false)
              removeLuaSprite(open..'1', true)
              removeLuaSprite(open..'2', true)
              removeLuaSprite(open..'3', true)
              removeLuaSprite(open..'4', true)
              removeLuaSprite(open..'int', true)
              playSound('open', 0.2)
           end
        end
        if overlap('player', open..'int') and keyboardJustPressed('ENTER') then
            setProperty('cant.alpha', 1)
            setTextString('cant', '[You need a '..itemData[1]..' to open this!]')
            cancelTween('CantBye')
            runTimer('ByeCant', 4)
        end
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'ByeText' then
        doTweenAlpha('TextBye', 'text', 0, 2.0, 'linear')
    end
    if tag == 'ByeCant' then
        doTweenAlpha('CantBye', 'cant', 0, 2.0, 'linear')
    end
end

function overlap(a, b)
    if (getProperty(a .. '.x') + getProperty(a .. '.width')) >= getProperty(b .. '.x') then
        if (getProperty(a .. '.x')) <= (getProperty(b .. '.x') + getProperty(b .. '.width')) then
            if getProperty(a .. '.y') <= (getProperty(b .. '.y') + getProperty(b .. '.height')) then
                if (getProperty(a .. '.y') + getProperty(a .. '.height')) >= getProperty(b .. '.y') then
                    return true
                end
            end
        end
    end
    return false
end