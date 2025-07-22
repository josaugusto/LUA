_G.love = require("love")

function love.load()
    _G.num = 1
end

function love.update()
    _G.num = num + 1
end

function love.draw()
    love.graphics.print(num, 350, 300)
end
