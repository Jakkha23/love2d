--statements
x = 100
y = 100
--

love.keypressed = function(pressed_key)
        if pressed_key == "s" then
            y = y+2
            print("s was pressed")
        elseif pressed_key == "w" then
            y = y-2
            print("w was pressed")
        elseif pressed_key == "a" then
            x = x-2
            print("a was pressed")
        elseif pressed_key == "d" then
            x = x+2
            print("d was pressed")
        elseif pressed_key == "down" then
            y = y+2
        elseif pressed_key == "up" then
            y= y-2
        elseif pressed_key == "left" then
            x = x-2
        elseif pressed_key == "right" then
            x = x+2
    end
end

--draw circle at coordinates
love.draw = function ()
    love.graphics.setColor(255,0,0)
    love.graphics.circle("fill", x, y, 10)
end