--[[
    Projeto: Sistema de Animais 

    Objetivo: Criar um sistema simples de animais, onde diferentes tipos de animais (Cachorro / 
    Cão e Gato) herdam de uma classe base Animal, e implementar polimorfismo e comparação 
    de objetos usando metatables. 

    Descrição: 
        Crie uma classe Animal com os atributos: nome e som. 

        Defina um método emitirSom(), que exibe o som do animal. 
        
    Crie subclasses: 

        Cachorro / Cão, cujo som é "Au Au". 

        Gato, cujo som é "Miau". 

    Use uma metatable para comparar dois animais (== deve verificar se possuem o mesmo 
    nome). 

    Crie instâncias e teste as funcionalidades.
]]

-- Classe Base
Animal = {
    nome = "",
    som = "",
}
Animal.__index = Animal

function Animal.__eq(anima1, animal2)
    return anima1.nome == animal2.nome
end

function Animal:emitirSom()
    print(self.som)    
end

-- Classe Cachorro
Cachorro = setmetatable({}, Animal)
Cachorro.__index = Cachorro

function Cachorro.new(nome)
    local self = setmetatable({}, Cachorro)
    self.nome = nome
    self.som = "Au Au"

    return self
end

-- Classe Gato
Gato = setmetatable({}, Animal)
Gato.__index = Gato

function Gato.new(nome)
    local self = setmetatable({}, Gato)
    self.nome = nome
    self.som = "Miau"

    return self
end

local cachorro1 = Cachorro.new("Bolt")
local gato1 = Gato.new("Berecine")

cachorro1:emitirSom() -- Au Au
gato1:emitirSom() -- Miau

print(cachorro1 == gato1) -- false
print(cachorro1 == cachorro1) -- true

-- Completed