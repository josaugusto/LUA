local felinos = {
    vida = 100,
    patas = 4
}

-- instancia são os objetos gerados a partir de uma classe (modelo).
function felinos:new()
    local obj = setmetatable({}, {__index = felinos}) 
    return obj
end
-- new() é o método construtor para os objetos pertencentes a classe felinos

function felinos:damage(valor)
    self.vida = self.vida - valor    
end

return felinos