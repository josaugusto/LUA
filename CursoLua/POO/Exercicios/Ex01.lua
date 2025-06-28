--[[
    Projeto: Sistema de Pedidos  

    Objetivo: Usar metatables para personalizar operações de objetos, como soma de valores 
    entre pedidos e formatação personalizada ao imprimir objetos. 

    Descrição: 
    Crie uma classe Pedido com os atributos: Cliente e Valor. 

    Defina uma metatable para a classe que permita: 
        Somar dois pedidos (pedido1 + pedido2 deve resultar na soma dos valores). 
        Exibir um pedido formatado quando impresso (print(pedido)). 

    Crie três pedidos e demonstre o uso dos operadores personalizados.
]]

local Pedido = {}

Pedido.__add = function (pedido1, pedido2)
    return pedido1.valor + pedido2.valor
end

Pedido.__tostring = function (pedido)
    return "O pedido do(a) " .. pedido.cliente .. " foi no valor de " .. pedido.valor .. " R$"
end

Pedido.__index = Pedido

function Pedido.new(cliente, valor)
    local self = setmetatable({}, Pedido)
    self.cliente = cliente
    self.valor = valor
    return self
end

local pedido1 = Pedido.new("Augusto", 20.45)
local pedido2 = Pedido.new("Clarice", 50.65)

print(pedido1 + pedido2) -- pedido1 + pedido2
print(pedido1) -- O pedido do(a) Augusto foi no valor de 20.45 R$

-- Completed