--[[
    Polimorfismo
        Diferentes formas que um objeto pode assumir.

        A sobrescrição de métodos acontece quando uma classe derivada (ou "subclasse") redefine um método que foi definido na classe base (ou "superclasse").

        Permite que o comportamento da classe derivada seja pernalizado, mantendo a estrutura e a assinatura do método original.
]] 

local Animal = {}
Animal.__index = Animal

function Animal:EmitirSom()
    print("O animal emite um som.")
end

function Animal:new()
    local animal = setmetatable({}, self)
    return animal
end

local Cachorro = setmetatable({}, Animal)
Cachorro.__index = Cachorro

---@diagnostic disable-next-line
function Cachorro:EmitirSom()
    print("O cachorro late.")
end

---@diagnostic disable-next-line
function Cachorro:new()
    return setmetatable({}, self)
end

local Gato = setmetatable({}, Animal)
Gato.__index = Gato

---@diagnostic disable-next-line
function Gato:EmitirSom()
    print("O gato mia.")
end

---@diagnostic disable-next-line
function Gato:new()
    return setmetatable({}, self)
end

local animal1 = Animal:new()
local cachorro1 = Cachorro:new()
local gato1 = Gato:new()

animal1:EmitirSom()
cachorro1:EmitirSom()
gato1:EmitirSom()
animal1:EmitirSom()