--[[
    Metatables permitem que os desenvolvedores alterem o comportamento de tabelas de forma flexível e poderosa.
    Usadas principalmente para definir como as tabelas devem reagir a operações específicas.

    Metatable:
        Tabela especial que pode ser associada a outra tabela para modificar seu comportamento padrão em certas situações.

    Metamétodo:
        Campo especial numa metatable que define as operações do comportamento da tabela.
        
        ACESSO E ATRIBUIÇÃO DE CAMPOS

        __index(table, index)
            Chamado quando tentamos acessar um campo inexistente.
            Pode ser uma tabela (que será consultada) ou uma função (que será chamada).

        __newindex(table, index, value)
            Chamado ao tentar atribuir um valor a um campo inexistente.
            Pode ser usado para redirecionar ou registrar modificações.
        
        OPERADORES ARITMÉTICOS

            __add(table, value)    (a + b)
            __sub(table, value)    (a - b)
            __mul(table, value)    (a * b)
            __div(table, value)    (a / b)
            __mod(table, value)    (a % b)
            __pow(table, value)    (a ^ b)
            __unm(table)    (-a)       operador unário "menos"
            __concat(table, value) (a .. b)   concatenação de strings

            Cada um desses métodos define como a tabela se comporta ao ser usada
            com o operador correspondente. Os operandos são passados como argumentos.

        OPERADORES RELACIONAIS

            __eq(table, value)  (a == b)
            __lt(table, value)  (a < b)
            __le(table, value)  (a <= b)

        OUTROS METAMÉTODOS IMPORTANTES

            __tostring(table)
                Define como a tabela será convertida para string (ex: print(t)).

            __len(table)
                Define o resultado do operador de comprimento (#t).

            __call(table, ...)
                Permite que a tabela seja chamada como uma função ( table(...) ). 

                    table: a tabela que está sendo chamada.
                    ...: os argumentos passados na chamada.

            __metatable
                Protege a metatable de acesso externo via getmetatable(t).
                Se definido, impede também setmetatable(t, nova_mt).
]]

-- Exemplo básico:
 
local t = {}
local mt = {}
setmetatable(t, mt) -- Associa mt como metatable da tabela t
print(getmetatable(t) == mt) --> true


-- Exemplo com __add (soma personalizada)

local meta_tabela = {
    __add = function (a, b) -- a e b são as tabelas da operação de soma
        return a.valor + b.valor
    end
}
local tabela_1 = {valor = 10}
local tabela_2 = {valor = 20}

setmetatable(tabela_1, meta_tabela)
setmetatable(tabela_2, meta_tabela)

print(tabela_1 + tabela_2)