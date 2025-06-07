--[[
    Estruturas Compostas possuem duas interpretações possíveis:
        Estruturas de Armazenamento de Dados
            Tabelas

        Estruturas que não obedecem ao fluxo do código
            Funções, sub-rotinas, ...

    Tabelas
        Tabelas são estruturas que permitem armazenar e organizar dados mais complexos do que tipos simples, como números ou strings.
        
        Uma tabela pode funcionar como: arrays, listas, dicionários, conjuntos, entre outros.
        
        Arrays (Vetores Unidimensionais)
            É uma tabela em que as chaves são números consecutivos.

        Dicionários
            É uma tabela em que as chaves são valores arbitrários (strings, numeros, etc.) e cada chave está associada a um valor.
]]

-- Tabelas: Array / Vetor.
-- Os Indices / Chaves começam em 1 e não em 0.
local array = {"Jose", "Augusto", "Silva"}
print(array[1]) -- Jose
print(array[3]) -- Silva

array[3] = "Santos" -- Silva -> Santos
print(array[3])

-- Tabelas: Dicionários

local pessoa = {
    nome = "Jose Augusto",
    idade = 22,
    sexo = 'M'
}

print(pessoa.nome) -- Jose Augusto
print(pessoa.idade) -- 22
print(pessoa.sexo) -- 'M'

-- Vetor!
local tabela = {
    [0] = "Ola",
    [1] = "Mundo"
}

print(tabela[0])