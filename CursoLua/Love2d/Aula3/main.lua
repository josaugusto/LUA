_G.love = require("love")

function love.load()
    love.graphics.setBackgroundColor(0.5, 1, 0.4)
    _G.color = {red = 3, green = 3, blue = 5}
end

function love.update()
    color.red = color.red + 3
    color.green = color.green + 3
    color.blue = color.blue + 5
    if color.red >= 255 and color.blue >= 255 then
        color.red = 3
        color.green = 3
        color.blue = 5
    end
end

function love.draw()
    love.graphics.setColor(color.red/255, color.green/255, color.blue/255)
    love.graphics.circle("fill", 350, 350, 60)
end