--[[
    O que é uma Biblioteca?
        Uma biblioteca é um conjunto de funções sobre um determinado tópico que permitem realizar diversas operações.

    Existem várias bibliotecas padrão em Lua:
        Basic
        Math
        String
        IO
        Table, OS, Coroutine e Debug
]]

-- Biblioteca Math

-- Funções Aritméticas
local num = -5
local absoluto = math.abs(num)
print("Valor absoluto de -5 é =" .. absoluto)

-- Funções para Conjuntos
local n1 = 5
local n2 = 10
local n3 = 40
local max = math.max(n1, n2, n3)
local min = math.min(n1, n2, n3)
print("Maximo: ".. max .. " Minimo: " .. min)

-- Funções para Arredondamentos
local n4 = 5.4
local cima = math.ceil(n4)
local baixo = math.floor(n4)
print("Arredondamento para cima ".. cima .. ", Arredondamento para baixo " .. baixo)

-- Funções Exponenciais
local n5 = 16
local raiz = math.sqrt(n5)
print("A raiz quadrada de " .. n5 .. " eh = " .. raiz)

-- ... etc

-- Constantes
print(math.pi) -- Número de pi
print(math.huge) -- Infinito