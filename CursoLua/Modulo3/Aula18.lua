--[[
    Matrizes
        É uma tabela em que os valores são outras tabelas. São necessários dois índices para especificar um valor.
]]

local matriz_1 = {
    [1] = {1, 2, 3, 4},
    [2] = {5, 6, 7, 8},
    [3] = {9, 10, 11, 12}
}

-- Linha X Coluna
print(matriz_1[1][1])
print(matriz_1[1][2])

-- or

local matriz_2 = {
    {"Jose", "Clarice", "Charles"},
    {22, 25, 50}
}

print(matriz_2[1][1]) -- Jose
print(matriz_2[2][1]) -- 22

--[[
    Sets / Conjuntos
        É uma tabela em que as chaves são os elementos do conjunto e os valores são true.
]]

-- Sets / Conjuntos

local conjunto = {}

conjunto["maça"] = true
conjunto["banana"] = true
conjunto["laranja"] = true 

if conjunto["banana"] then
    print("Existe banana no conjunto")
end