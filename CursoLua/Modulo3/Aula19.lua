--[[

    As funções pairs() e ipairs() em Lua são utilizadas para percorrer (iterar) os elementos de uma tabela.

    Elas retornam funções chamadas *iteradores*, que permitem criar loops que executam um bloco de código para cada elemento da tabela.

    -----------------------------------------------------------
    Iteradores:

        pairs():
            - Usado para percorrer **tabelas associativas**, ou seja, tabelas com chaves que podem ser de qualquer tipo (string, número, etc.).
            - Itera sobre **todos os pares chave-valor** da tabela, em **ordem indefinida**.
            - Ideal para tabelas que funcionam como dicionários ou mapas.

        ipairs():
            - Usado para percorrer **tabelas com índices numéricos sequenciais**, como listas ou arrays.
            - Itera de forma **ordenada e crescente**, começando do índice 1 até o primeiro índice com valor `nil`.
            - Ideal para tabelas organizadas como listas ordenadas.

]]

local frutas = {
    banana = "amarelo",
    laranja = "laranja",
    pessego = "vermelho",
    uva = "verde"
}

-- Pairs() é uma função que retorna 3 valores onde um desses é o iterador que é uma função que percorre a tabela e retorna a chave e o valor de cada elemento.

local iterador_1, tabela_1, chave_inicial = pairs(frutas)
local chave_1, valor_1 = iterador_1(tabela_1, chave_inicial)

-- nil é false em Lua

while chave_1 do
    print(chave_1, valor_1)
    chave_1, valor_1 = iterador_1(tabela_1, chave_1)
end

local carros = {
    [1] = "Fiat",
    [2] = "Jeep",
    [3] = "Toyota"
}

local iterador_2, tabela_2, chave_inicial = ipairs(carros)
local chave_2, valor_2 = iterador_2(tabela_2, chave_inicial)

while chave_2 do
    print(chave_2, valor_2)
    chave_2, valor_2 = iterador_2(tabela_2, chave_2)
end

-- Melhore essa explicação ai para mim.