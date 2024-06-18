function onCreate()
    -- Idk
    makeLuaSprite('wood', 'map/objects/wood', 890, 450)
	scaleLuaSprite('wood', 3.0, 3.4)
    addLuaSprite('wood')

    makeLuaSprite('bg', 'map/bg', 120, 100)
    addLuaSprite('bg')

	makeLuaSprite('floor', 'map/objects/floor', 120, 100)
	scaleLuaSprite('floor', 3.3, 3.7)
    addLuaSprite('floor')

	makeLuaSprite('sea', 'map/objects/sea', 749, -371)
    addLuaSprite('sea')

    makeLuaSprite('carpet', 'map/objects/carpet', 950, 662)
	scaleLuaSprite('carpet', 1.9, 1.5)
    addLuaSprite('carpet')

	makeLuaSprite('WALL1', 'map/objects/wall1', -2450, -246)
	scaleLuaSprite('WALL1', 1.5, 1.0)
    addLuaSprite('WALL1')

	makeLuaSprite('WALL2', 'map/objects/wall1', -1237, 571)
	scaleLuaSprite('WALL2', 1.0, 2.0)
    addLuaSprite('WALL2')

	makeLuaSprite('WALL3', 'map/objects/wall2', -694, -199)
    addLuaSprite('WALL3')

	makeLuaSprite('WALL4', 'map/objects/wall2', 1253, 100)
	scaleLuaSprite('WALL4', 1.0, 2.5)
    addLuaSprite('WALL4')

	makeLuaSprite('big1', 'map/objects/big', 850, 205)
	scaleLuaSprite('big1', 0.3, 0.3)
    addLuaSprite('big1')

	makeLuaSprite('big2', 'map/objects/big', 1070, 75)
	scaleLuaSprite('big2', 0.3, 0.3)
    addLuaSprite('big2')

	makeLuaSprite('big3', 'map/objects/big', 960, 405)
	scaleLuaSprite('big3', 0.3, 0.3)
    addLuaSprite('big3')

	makeLuaSprite('big4', 'map/objects/big', 1140, 285)
	scaleLuaSprite('big4', 0.3, 0.3)
    addLuaSprite('big4')

	makeLuaSprite('big5', 'map/objects/big', 670, 50)
	scaleLuaSprite('big5', 0.3, 0.3)
    addLuaSprite('big5')

	makeLuaSprite('rock1', 'map/objects/rock', 970, 70)
	scaleLuaSprite('rock1', 0.3, 0.3)
    addLuaSprite('rock1')

	makeLuaSprite('rock2', 'map/objects/rock', 1140, 130)
	scaleLuaSprite('rock2', 0.3, 0.3)
    addLuaSprite('rock2')

	makeLuaSprite('rock3', 'map/objects/rock', 830, 270)
	scaleLuaSprite('rock3', 0.3, 0.3)
    addLuaSprite('rock3')

	makeLuaSprite('rock4', 'map/objects/rock', 620, 380)
	scaleLuaSprite('rock4', 0.3, 0.3)
    addLuaSprite('rock4')

	makeLuaSprite('rock5', 'map/objects/rock', 340, 182)
	scaleLuaSprite('rock5', 0.3, 0.3)
    addLuaSprite('rock5')

	makeLuaSprite('rock6', 'map/objects/rock', 192, 272)
	scaleLuaSprite('rock6', 0.3, 0.3)
    addLuaSprite('rock6')

	makeLuaSprite('bigrock1', 'map/objects/bigRock', 1040, 425)
	scaleLuaSprite('bigrock1', 1.7, 1.5)
    addLuaSprite('bigrock1')

	makeLuaSprite('bigrock2', 'map/objects/bigRock', 260, 245)
	scaleLuaSprite('bigrock2', 2.5, 1.5)
    addLuaSprite('bigrock2')

	makeLuaSprite('bigrock3', 'map/objects/bigRock', 260, 245)
	scaleLuaSprite('bigrock3', 1.5, 1.8)
    addLuaSprite('bigrock3')

	makeLuaSprite('bigrock4', 'map/objects/bigRock', 760, 525)
    addLuaSprite('bigrock4')

	makeLuaSprite('bigrock5', 'map/objects/bigRock', 100, 30)
	scaleLuaSprite('bigrock5', 1.0, 1.0)
    addLuaSprite('bigrock5')

	makeLuaSprite('bigrock6', 'map/objects/bigRock', 890, 888)
	scaleLuaSprite('bigrock6', 3.0, 3.0)
    addLuaSprite('bigrock6')

    makeLuaSprite('table1', 'map/objects/table', 909, 827)
	scaleLuaSprite('table1', 0.45, 0.45)
    addLuaSprite('table1')

    makeLuaSprite('table2', 'map/objects/table', 1103, 637)
	scaleLuaSprite('table2', 0.45, 0.45)
    addLuaSprite('table2')

	makeLuaSprite('pc', 'map/objects/pc', 989, 794)
	scaleLuaSprite('pc', 0.45, 0.45)
    addLuaSprite('pc', true)

    makeLuaSprite('door', 'map/objects/door', 896, 571)
	scaleLuaSprite('door', 1.061, 0.4)
    addLuaSprite('door')

	makeLuaSprite('frog', 'map/npcs/sitwithme', 750, 110)
	scaleLuaSprite('frog', 0.3, 0.3)
    addLuaSprite('frog')

	makeLuaSprite('small1', 'map/objects/small', getRandomInt(790, 850), getRandomInt(165, 205))
	scaleLuaSprite('small1', 0.3, 0.3)
    addLuaSprite('small1')

	makeLuaSprite('small2', 'map/objects/small', getRandomInt(670, 730), getRandomInt(310, 350))
	scaleLuaSprite('small2', 0.3, 0.3)
    addLuaSprite('small2')

	makeLuaSprite('small3', 'map/objects/small', getRandomInt(850, 910), getRandomInt(450, 490))
	scaleLuaSprite('small3', 0.3, 0.3)
    addLuaSprite('small3')

	makeLuaSprite('small4', 'map/objects/small', getRandomInt(1020, 1080), getRandomInt(260, 300))
	scaleLuaSprite('small4', 0.3, 0.3)
    addLuaSprite('small4')

	makeLuaSprite('smallrock1', 'map/objects/smallRock', getRandomInt(440, 500), getRandomInt(152, 192))
	scaleLuaSprite('smallrock1', 0.3, 0.3)
    addLuaSprite('smallrock1')

	makeLuaSprite('smallrock2', 'map/objects/smallRock', getRandomInt(150, 210),  getRandomInt(370, 410))
	scaleLuaSprite('smallrock2', 0.3, 0.3)
    addLuaSprite('smallrock2')

	makeLuaSprite('smallrock3', 'map/objects/smallRock', getRandomInt(380, 440), getRandomInt(500, 540))
	scaleLuaSprite('smallrock3', 0.3, 0.3)
    addLuaSprite('smallrock3')

	makeLuaSprite('fox', 'map/npcs/fox', 1055, 260)
	scaleLuaSprite('fox', 0.3, 0.3)
	setProperty('fox.flipX', true)
    addLuaSprite('fox')

	makeLuaSprite('guy', 'map/npcs/guy', 130,  470)
	scaleLuaSprite('guy', 0.3, 0.3)
    addLuaSprite('guy')

	makeLuaSprite('Card', 'map/items/card', 1215,  120)
	scaleLuaSprite('Card', 0.3, 0.3)
    addLuaSprite('Card')

	makeAnimatedLuaSprite('player', 'map/player', 0, 0)
    addAnimationByPrefix('player', 'idle', 'idle', 15, false)
    addAnimationByPrefix('player', 'walk', 'walk', 12, true)
    objectPlayAnimation('player', 'idle', false)
    scaleObject('player', 0.35, 0.35)
    addLuaSprite('player')
end

function onCreatePost()
	setProperty('timeTxt.visible', false)
	setProperty('iconP1.visible', false)
	setProperty('iconP2.visible', false)
	setProperty('healthBar.visible', false)
	setProperty('healthBarBG.visible', false)
	setProperty('scoreTxt.visible', false)
	setProperty('boyfriend.visible', false)
	setProperty('gf.visible', false)
	setProperty('dad.visible', false)
end