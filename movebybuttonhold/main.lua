--Global VariablesP
PLAYER_X = 10
PLAYER_Y = 40
WEAPON = 0
AMMUNITION = 0
FULL_AMMUNITION = 0
--
--"keypressed" functions, including weapon keybinds, end game and restart buttons.
function love.keypressed(key, scancode, isrepeat)
    if key == "escape" then
       love.event.quit()
    elseif key == "tab" then
        PLAYER_X = 10
        PLAYER_Y = 40
        WEAPON = 0
        print("game was restarted")
    elseif key == "0" then
        WEAPON = 0
    elseif key == "1" then
        WEAPON = 1
    elseif key == "q" then
        WEAPON = WEAPON -1
    elseif key == "e" then
        WEAPON = WEAPON +1
    elseif key == "r" then
        print("weapon is realoading...")
        AMMUNITION = FULL_AMMUNITION
        print("weapon fully loaded")
    elseif key == "space" then
        print("Weapon is firing!")
        AMMUNITION = AMMUNITION -1
        print("Remaning Ammo: " .. AMMUNITION)
    end
    if WEAPON<0 then
        WEAPON = WEAPON +1
    end
    if WEAPON == 0 then
        AMMUNITION = 0
        FULL_AMMUNITION = 0
    end
    if WEAPON == 1 then
        AMMUNITION = 10
        FULL_AMMUNITION = 10
    end
    if WEAPON>1 then -- change if more wapons are added
    WEAPON = WEAPON -1  
    end
    if WEAPON >= 1 and AMMUNITION<= 0 then
        print("out of ammo")
    if AMMUNITION<0 then
        AMMUNITION = AMMUNITION +1
    end
    end
end


 --update. when button is being held down move with a certain speed.
 function love.update(dt) 
     if love.keyboard.isDown("s") then
        if PLAYER_Y<(love.graphics.getHeight()) then
            PLAYER_Y = PLAYER_Y + 2
            print(PLAYER_Y)
        end
     end
     if love.keyboard.isDown("a") then       
        if PLAYER_X>0 then
            PLAYER_X = PLAYER_X - 2
        end
     end
     if love.keyboard.isDown("d") then
        if PLAYER_X<(love.graphics.getWidth())-15 then
            PLAYER_X = PLAYER_X + 2
            print(PLAYER_X)
        end
     end
     if love.keyboard.isDown("w") then
        if PLAYER_Y>30 then
            PLAYER_Y = PLAYER_Y - 2
        end 
    end
end

--draws character and weapons at play x and y coordinates.
love.draw = function ()
if WEAPON == 0 then -- draws character and weapon 0
    love.graphics.line(PLAYER_X, PLAYER_Y, PLAYER_X+5, PLAYER_Y-10)
    love.graphics.line(PLAYER_X+10, PLAYER_Y, PLAYER_X+5, PLAYER_Y-10)
    love.graphics.line(PLAYER_X+5, PLAYER_Y-10, PLAYER_X+5, PLAYER_Y-20)
    love.graphics.line(PLAYER_X+5,PLAYER_Y-20, PLAYER_X, PLAYER_Y-15)
    love.graphics.line(PLAYER_X+5,PLAYER_Y-20, PLAYER_X+10, PLAYER_Y-15)
    love.graphics.circle("fill",PLAYER_X+5,PLAYER_Y-25, 5)
elseif WEAPON == 1 then -- draws character and weapon 1
    love.graphics.line(PLAYER_X, PLAYER_Y, PLAYER_X+5, PLAYER_Y-10)
    love.graphics.line(PLAYER_X+10, PLAYER_Y, PLAYER_X+5, PLAYER_Y-10)
    love.graphics.line(PLAYER_X+5, PLAYER_Y-10, PLAYER_X+5, PLAYER_Y-20)
    love.graphics.line(PLAYER_X+5,PLAYER_Y-20, PLAYER_X, PLAYER_Y-15)
    love.graphics.line(PLAYER_X+5,PLAYER_Y-20, PLAYER_X+10, PLAYER_Y-15)
    love.graphics.circle("fill",PLAYER_X+5,PLAYER_Y-25, 5)
    --draws gun
    love.graphics.line(PLAYER_X+10, PLAYER_Y-20, PLAYER_X+20, PLAYER_Y-20) --gun
    love.graphics.line(PLAYER_X+10, PLAYER_Y-15, PLAYER_X+10, PLAYER_Y-20) --gun
elseif WEAPON == 2 then -- draws character and weapon 2
    love.graphics.line(PLAYER_X, PLAYER_Y, PLAYER_X+5, PLAYER_Y-10)
    love.graphics.line(PLAYER_X+10, PLAYER_Y, PLAYER_X+5, PLAYER_Y-10)
    love.graphics.line(PLAYER_X+5, PLAYER_Y-10, PLAYER_X+5, PLAYER_Y-20)
    love.graphics.line(PLAYER_X+5,PLAYER_Y-20, PLAYER_X, PLAYER_Y-15)
    love.graphics.line(PLAYER_X+5,PLAYER_Y-20, PLAYER_X+10, PLAYER_Y-15)
    love.graphics.circle("fill",PLAYER_X+5,PLAYER_Y-25, 5)
    --draws gun
end
end

