--[[
    Projeto: Sistema de Funcionários 

    Objetivo: Implementar uma classe base abstrata Funcionario com um método abstrato 
    calcularSalario() que será implementado nas subclasses Gerente e Vendedor.    

    Descrição: 
    Crie uma classe abstrata Funcionario com os atributos: nome e salarioBase. 

    Defina um método abstrato calcularSalario(), que será implementado por subclasses. 

    Crie duas subclasses: 

        Gerente, cujo salário é o salário base + 20% de bônus. 

        Vendedor, cujo salário é o salário base + comissão fixa. 

    Crie instâncias e imprima os salários de diferentes funcionários. 
]]

local Funcionario = {
    nome = "",
    salarioBase = 0
}
Funcionario.__index = Funcionario

function Funcionario.calcularSalario()
    error("Metodo nao implementado")
end

local Gerente = setmetatable({}, Funcionario)
Gerente.__index = Gerente

function Gerente.new(nome, salarioBase)
    local self = setmetatable({}, Gerente)
    self.nome = nome
    self.salarioBase = salarioBase

    return self
end

function Gerente:calcularSalario()
    return self.salarioBase + (0.20 * self.salarioBase)
end

local Vendedor = setmetatable({}, Funcionario)
Vendedor.__index = Vendedor

function Vendedor.new(nome, salarioBase)
    local self = setmetatable({}, Vendedor)
    self.nome = nome
    self.salarioBase = salarioBase

    return self
end

function Vendedor:calcularSalario()
    return self.salarioBase + 100
end

local gerente = Gerente.new("Maquiavel", 5000)
local vendedor = Vendedor.new("Augusto", 3000)

print(gerente:calcularSalario())
print(vendedor:calcularSalario())