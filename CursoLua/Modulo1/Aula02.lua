--[[
    Variáveis são espaços na memória (que possuem um "nome" que é usado para acessar o conteúdo da variável) do computador onde são armazenados dados de um determinado tipo. Quando programamos num arquivo precisamos definir o escopo da variável, ou seja, o lugar onde ela está a ser utilizada.

    Tipos de Dados

        Tipos Básicos

            nil
            number
            string
            boolean

        Outros Tipos:

            Table, Function, Userdata, Thread, ...
]]

-- Declaração de Variáveis.

local vaga1 = "Carro1"
local vaga2 = "Carro2"
print(vaga1)
print(vaga2)
print()

-- Tipos Básicos

local n -- nil (Uma variável vazia, é feita apenas a reserva do nome da variável na memória do computador)
local n1 = 20 -- number (Números Inteiros e Reais)
local n2 = "Texto" -- string 
local n3 = true -- boolean (Valores lógicos: true or false)

-- Função type() retorna o tipo de um valor.

print(type(n))
print(type(n1))
print(type(n2))
print(type(n3))

