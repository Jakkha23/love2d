function love.load( )
	playerIMG = love.graphics.newImage("whiteline.png")
	playerx = 580
	playery = 6
	speed = 100
	playerHeight = 64
	playerWidth = 64
end

function love.draw()
	
	love.graphics.print("This is your character.\nMove him around with the \narrow keys.", 610,12)
	love.graphics.line(600, 0, 600, 600)
	love.graphics.draw(playerIMG, playerx, playery, angle, 1, 1, playerWidth/2, playerHeight/2)
	
	
end

function love.update(dt)

	if love.keyboard.isDown("right") then
		playerx = playerx + (speed * dt)
	end
	
	if love.keyboard.isDown("left") then
		playerx = playerx - (speed * dt)
	end
	
	if love.keyboard.isDown("up") then
		playery = playery - (speed * dt)
	end
	
	if love.keyboard.isDown("down") then
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

