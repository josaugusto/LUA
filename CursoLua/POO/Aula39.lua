local classe_felinos = require("felinos")

local gato = classe_felinos:new()
local tigre = classe_felinos:new()

gato:damage(10)
print(gato.vida)
print(tigre.vida)