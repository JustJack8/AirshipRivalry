local blah = 0

function onCreate()
	local location = 'stages/airship/'
	
	setPropertyFromClass('GameOverSubstate', 'characterName', 'amongbf'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_amongus'); --put in mods/sounds/
	
	makeLuaSprite('sky', location..'000', -400, -350);
	scaleObject('sky', 1.2, 1.2)
	setScrollFactor('sky', 0.2, 0.2);
	
	makeLuaSprite('bg', location..'001', -290, -80);
	scaleObject('bg', 1.21, 1.21)
	setScrollFactor('bg', 0.8, 0.8);
	
	makeLuaSprite('floor', location..'002', -300, -300);
	scaleObject('floor', 1.3, 1.3)
	--setScrollFactor('floor', 0.9, 0.9);
	
	makeLuaSprite('platform', location..'003', -300, -300);
	scaleObject('platform', 1.3, 1.3)
	--setScrollFactor('platform', 0.9, 0.9);

	if not lowQuality then
	end

	addLuaSprite('sky', false);
	addLuaSprite('bg', false);	
	addLuaSprite('floor', false);
	addLuaSprite('platform', false);
	
end

function onCreatePost()
	setProperty('gf.visible', false)
end

function onUpdate(elapsed)
	blah = blah + 0.01
	setProperty('camGame.angle', math.sin(blah) * 1.2)
end