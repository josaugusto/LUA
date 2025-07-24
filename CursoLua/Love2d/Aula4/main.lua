_G.love = require("love")

function love.load()
    _G.hero = {posX = 300, posY = 300, color = {0, 0, 1}}
    love.graphics.setBackgroundColor(0, 1, 0)
end

function love.update()
   if love.keyboard.isDown('w') then
        hero.posY = hero.posY - 3
   end
   if love.keyboard.isDown('s') then
        hero.posY = hero.posY + 3
   end
   if love.keyboard.isDown('d') then
        hero.posX = hero.posX + 3
   end
    if love.keyboard.isDown('a') then
        hero.posX = hero.posX - 3
   end
end

function love.draw()
    love.graphics.setColor(hero.color)
    love.graphics.circle("fill", hero.posX, hero.posY, 60)
end
