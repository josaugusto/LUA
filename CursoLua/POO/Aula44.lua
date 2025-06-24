--[[
    Método Abstrato
        Um método abstrato é um método que é declarado em uma classe base, mas não possui uma implementação concreta.

        Serve como um "contrato" que obriga as classes derivadas a implementá-lo.

        As classes são obrgadas a implementar os métodos abstratos.
]]

local Forma = {}
Forma.__index = Forma

function Forma:new()
    return setmetatable({}, self)
end

function Forma:Area()
    error("Metodo nao implementado!")
end

local Circulo = setmetatable({}, Forma)
Circulo.__index = Circulo

function Circulo:new(raio)
    local obj = setmetatable({}, self)
    obj.raio = raio

    return obj
end

function Circulo:Area()
    return math.pi * self.raio * self.raio
end

local Retangulo = setmetatable({}, Forma)
Retangulo.__index = Retangulo

function Retangulo:new(larg, alt)
    local obj = setmetatable({}, self)
    obj.larg = larg
    obj.alt = alt
    
    return obj
end

function Retangulo:Area()
    return self.larg * self.alt
end

local circulo = Circulo:new(4)
print(circulo:Area())
local retangulo = Retangulo:new(3, 5)
print(retangulo:Area())