--[[
    Metatables permitem que os desenvolvedores alterem o comportamento de tabelas de forma flexível e poderosa.

    Usadas principalmente para definir como as tabelas devem reagir a operações específicas.

    Metatable:
        Tabela especial que pode ser associada a outra tabela para modificar seu comportamento padrão em certas situações.

    Metamétodo:
        Campo especial numa metatable que define as operações do comportamento da tabela.
        
        ACESSO E ATRIBUIÇÃO DE CAMPOS

        __index
            Chamado quando tentamos acessar um campo inexistente.
            Pode ser uma tabela (que será consultada) ou uma função (que será chamada).

        __newindex
            Chamado ao tentar atribuir um valor a um campo inexistente.
            Pode ser usado para redirecionar ou registrar modificações.
        
        OPERADORES ARITMÉTICOS

            __add    (a + b)
            __sub    (a - b)
            __mul    (a * b)
            __div    (a / b)
            __mod    (a % b)
            __pow    (a ^ b)
            __unm    (-a)       operador unário "menos"
            __concat (a .. b)   concatenação de strings

            Cada um desses métodos define como a tabela se comporta ao ser usada
            com o operador correspondente. Os operandos são passados como argumentos.

        OPERADORES RELACIONAIS

            __eq  (a == b)
            __lt  (a < b)
            __le  (a <= b)

            Permitem personalizar comparações entre tabelas. Devem estar definidos em ambas as metatables para funcionarem corretamente.

        OUTROS METAMÉTODOS IMPORTANTES

            __tostring
                Define como a tabela será convertida para string (ex: print(t)).

            __len
                Define o resultado do operador de comprimento (#t).

            __call
                Permite que a tabela seja chamada como uma função (t()).

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