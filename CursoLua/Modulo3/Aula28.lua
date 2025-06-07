--[[
    Árvores
        Árvores são estruturas de dados em que os elementos são estruturas de forma hierárquica.

    Podem ser:
        Árvores
        Árvores Binárias
        Árvores de pesquisa binárias
]]

-- Arvores de Pesquisa Binárias

-- Qualquer nó da estrutura (Define os nós)
local function novoNo(valor)
    return {valor = valor, esquerda = nil, direita = nil}
end

--[[
     5
    /  \
    4   3

    {valor = 5, esquerda = 4, direita = 3}
]]


-- Inserir um novo nó
local function inserir(raiz, valor)
    if raiz == nil then
        return novoNo(valor)
    elseif valor < raiz.valor then
        raiz.esquerda = inserir(raiz.esquerda, valor)
    else
        raiz.direita = inserir(raiz.direita, valor)
    end
    return raiz
end

-- Visualizar a estrutura

local function exibir(raiz) -- in-order
    if raiz ~= nil then
        exibir(raiz.esquerda)
        print(raiz.valor)
        exibir(raiz.direita)
    end
end

-- Exemplo de Uso

local raiz = nil
local dados = {15, 10, 20, 8, 12, 17, 25}

for _, valor in ipairs(dados) do
    raiz = inserir(raiz, valor)
end

print("Elementos:")
exibir(raiz)

--[[

                15
            /      \
           10       20
          /   \     / \
          8    12   17 25
]]

-- Essa parte de árvores é muito pouco intuitiva, revisar depois essa parte.

--[[
    Grafos são estruturas de dados onde os elementos estão ligados uns aos outros de forma arbitrária.

    Existem diversos tipos de grafos:

        Direcionados
        Não direcionados
        ...
]]

-- Focar mais nisso depois, estudar mais a fundo algoritmos e estruturas de dados

