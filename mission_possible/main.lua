function love.load( )
	playerIMG = love.graphics.newImage("pictures&characters/protagonist_noweapon_2x.png")
	playerx = 300
	playery = 300
	speed = 80
	playerHeight = 160
	playerWidth = 180
end

function love.draw()
	love.graphics.print("This is your character.\nMove him around with the \narrow keys.", 610,12)
	love.graphics.line(600, 0, 600, 600)
	love.graphics.draw(playerIMG, playerx, playery, angle, 1, 1, playerWidth/2, playerHeight/2)
	
end

function love.update(dt)
	if love.keyboard.isDown("d") then
		playerx = playerx + (speed * dt)
	end
	if love.keyboard.isDown("a") then
		playerx = playerx - (speed * dt)
	end
	if love.keyboard.isDown("w") then
		playery = playery - (speed * dt)
	end
	if love.keyboard.isDown("s") then
		playery = playery + (speed * dt)
	end
	if playerx <= 0 then
		playerx = 0
	end
	if playerx >= (600 - playerWidth) then
		playerx = (600 - playerWidth)
	end
	if playery <= 0 then
		playery = 0
	end
	if playery >= (600 - playerHeight) then
		playery = (600 - playerHeight)
	end
	local mousex = love.mouse.getX( )
	local mousey = love.mouse.getY( )
	angle = math.atan2(mousey - playery, mousex - playerx)
	
end

