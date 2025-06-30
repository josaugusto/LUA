--[[
    Projeto: Sistema de Veículos 

    Objetivo: Demonstrar o uso da herança em Lua, onde a classe Carro e a classe Moto herdam 
    de Veiculo, sobrescrevendo o método info() para incluir atributos específicos. 

    Descrição:
        Crie uma classe Veiculo com os atributos: marca, modelo, ano. 

        Implemente um método info() que imprima os detalhes do veículo. 
    
    Crie duas classes derivadas:
    
        Carro (herda de Veiculo) com um atributo adicional numPortas. 

        Moto (herda de Veiculo) com um atributo adicional cilindradas. 

    Sobrescreva o método info() em cada classe para incluir os novos atributos. 
    Crie objetos dessas classes e exiba suas informações.
]]

local _f = string.format

-- Classe base
Veiculo = {
    marca = "",
    modelo = "",
    ano = 0
}
Veiculo.__index = Veiculo

function Veiculo:info()
    print(_f("Marca: %s\nModelo: %s\nAno: %d\n", self.marca, self.modelo, self.ano))
end

-- Classe Carro
Carro = setmetatable({numPortas = 0}, Veiculo)
Carro.__index = Carro

function Carro.new(marca, modelo, ano, numPortas)
    local self = setmetatable({}, Carro)
    self.marca = marca; self.modelo = modelo
    self.ano = ano; self.numPortas = numPortas
    
    return self
end

function Carro:info()
    print(_f("Marca: %s\nModelo: %s\nAno: %d\nNumero de Portas: %d\n", self.marca, self.modelo, self.ano, self.numPortas))
end

-- Classe Moto
Moto = setmetatable({cilindradas = 0}, Veiculo)
Moto.__index = Moto

function Moto.new(marca, modelo, ano, cilindradas)
    local self = setmetatable({}, Moto)
    self.marca = marca; self.modelo = modelo
    self.ano = ano; self.cilindradas = cilindradas

    return self
end

function Moto:info()
    print(_f("Marca: %s\nModelo: %s\nAno: %d\nCilindradas: %d\n", self.marca, self.modelo, self.ano, self.cilindradas))
end

local carro1 = Carro.new("Toyota", "Corolla", 2020, 4)
local moto1 = Moto.new("Honda", "CG 160 Fan", 2023, 160)

carro1:info()
moto1:info()