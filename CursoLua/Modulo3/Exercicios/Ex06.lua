--[[
    Crie uma função que recebe uma tabela e uma função de filtro. A função filtra deve retornar uma nova tabela contendo apenas os elementos que satisfazem a condição definida pela função de filtro.

    Ex: Use para encontrar apenas os números pares de uma tabela.
]]

local function filtrar(tabela, filtro)
    return filtro(tabela)
end

local filtro = function (tabela)
    local tabela_nova = {}
    for i = 1, #tabela, 1 do
        if tabela[i] % 2 == 0 then
            table.insert(tabela_nova, tabela[i])
        end
    end
    return tabela_nova
end

local tabela = filtrar({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}, filtro)

for i = 1, #tabela, 1 do
    print(tabela[i])
end

-- Completed