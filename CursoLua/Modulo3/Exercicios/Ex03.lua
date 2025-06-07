-- Implemente uma função chamada somaElementos que recebe uma tabela de números e retorna a soma de todos os elementos.

local function somaElementos(numeros)
    local soma = 0
    for i = 1, #numeros, 1 do
        soma = soma + numeros[i]
    end
    return soma
end

local tabela_numeros = {1, 2, 3, 4, 5}
print(somaElementos(tabela_numeros))

-- Completed
