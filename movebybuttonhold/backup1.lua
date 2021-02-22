--
x = 10
y = 40
--
--"keypressed" functions
function love.keypressed(key, scancode, isrepeat)
    if key == "escape" then
       love.event.quit()
    elseif key =="r" then
        x= 10
        y= 40
        print("game was restarted")
    elseif key == "g" then
        love.draw = function ()
            love.graphics.line(x, y, x+5, y-10) -- left leg
            love.graphics.line(x+10, y, x+5, y-10) --right leg
            love.graphics.line(x+5, y-10, x+5, y-20) --torso
            love.graphics.line(x+5,y-20, x, y-15) --left arm
            love.graphics.line(x+5,y-20, x+10, y-15) --right arm
            love.graphics.circle("fill",x+5,y-25, 5) --head
            love.graphics.line(x+10, y-20, x+20, y-20) --gun
            love.graphics.line(x+10, y-15, x+10, y-20) --gun
        end
    elseif key == "h" then
        love.draw = function ()
            love.graphics.line(x, y, x+5, y-10) -- left leg
            love.graphics.line(x+10, y, x+5, y-10) --right leg
            love.graphics.line(x+5, y-10, x+5, y-20) --torso
            love.graphics.line(x+5,y-20, x, y-15) --left arm
            love.graphics.line(x+5,y-20, x+10, y-15) --right arm
            love.graphics.circle("fill",x+5,y-25, 5) --head
        end
    end
 end
 --restart

 --update
 function love.update(dt) 
     if love.keyboard.isDown("s") then
         y = y + 2
         print("s is being pressed")
     end
     if love.keyboard.isDown("a") then
            x = x - 2
            print("a is being pressed")
     end
     if love.keyboard.isDown("d") then
            x = x + 2
            print("b is being pressed")
     end
     if love.keyboard.isDown("w") then
            y = y - 2
            print("w is being pressed")
    end
end

--draw character
love.draw = function ()
love.graphics.line(x, y, x+5, y-10)
love.graphics.line(x+10, y, x+5, y-10)
love.graphics.line(x+5, y-10, x+5, y-20)
love.graphics.line(x+5,y-20, x, y-15)
love.graphics.line(x+5,y-20, x+10, y-15)
love.graphics.circle("fill",x+5,y-25, 5)
end

