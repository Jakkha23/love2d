--Global Variables
X = 10
Y = 40
WEAPON = 0
AMMUNITION = 0
FULL_AMMUNITION = 0
--
--"keypressed" functions, including weapon keybinds, end game and restart buttons.
function love.keypressed(key, scancode, isrepeat)
    if key == "escape" then
       love.event.quit()
    elseif key == "tab" then
        X = 10
        Y = 40
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
         Y = Y + 2
     end
     if love.keyboard.isDown("a") then       
            X = X - 2
     end
     if love.keyboard.isDown("d") then
            X = X + 2
     end
     if love.keyboard.isDown("w") then
            Y = Y - 2
    end
end

--draws character and weapons.
love.draw = function ()
if WEAPON == 0 then -- draws character and weapon 0
    love.graphics.line(X, Y, X+5, Y-10)
    love.graphics.line(X+10, Y, X+5, Y-10)
    love.graphics.line(X+5, Y-10, X+5, Y-20)
    love.graphics.line(X+5,Y-20, X, Y-15)
    love.graphics.line(X+5,Y-20, X+10, Y-15)
    love.graphics.circle("fill",X+5,Y-25, 5)
elseif WEAPON == 1 then -- draws character and weapon 1
    love.graphics.line(X, Y, X+5, Y-10) -- left leg
    love.graphics.line(X+10, Y, X+5, Y-10) --right leg
    love.graphics.line(X+5, Y-10, X+5, Y-20) --torso
    love.graphics.line(X+5,Y-20, X, Y-15) --left arm
    love.graphics.line(X+5,Y-20, X+10, Y-15) --right arm
    love.graphics.circle("fill",X+5,Y-25, 5) --head
    --draws gun
    love.graphics.line(X+10, Y-20, X+20, Y-20) --gun
    love.graphics.line(X+10, Y-15, X+10, Y-20) --gun
elseif WEAPON == 2 then -- draws character and weapon 2
    love.graphics.line(X, Y, X+5, Y-10) -- left leg
    love.graphics.line(X+10, Y, X+5, Y-10) --right leg
    love.graphics.line(X+5, Y-10, X+5, Y-20) --torso
    love.graphics.line(X+5,Y-20, X, Y-15) --left arm
    love.graphics.line(X+5,Y-20, X+10, Y-15) --right arm
    love.graphics.circle("fill",X+5,Y-25, 5) --head
    --draws gun
end
end

