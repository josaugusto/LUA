--[[
    Implemente um simulador de loja em que clientes realizam compras. Use uma corrotina para cada cliente, com cada corrotina adicionando um item ao carrinho de compras a cada segundo. A simulação termina quando o cliente adiciona três itens.
]]

local function cliente(nome)
    return coroutine.create(function ()
        local carrinho = {}
        for i = 1, 3 do
            table.insert(carrinho, "Item" .. i)
            print(nome .. " adicionou " .. carrinho[i] .. " ao carrinho")
            coroutine.yield()
        end
        print(nome .. "finalizou as compras!")
    end)
end

local cliente_1 = cliente("Cliente1")
local cliente_2 = cliente("Cliente2")

for i = 1, 3 do
    coroutine.resume(cliente_1)
    coroutine.resume(cliente_2)
end

-- Completed