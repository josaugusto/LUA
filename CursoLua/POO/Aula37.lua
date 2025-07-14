--[[
    Metamétodos e Objetos em Lua

    Em Lua, objetos são representados como tabelas. Com o uso de metatables,
    é possível criar comportamentos mais sofisticados, como herança e encapsulamento.

    __index(table, value):
        Usado para definir o que acontece quando tentamos acessar um campo que não existe na tabela.
        Pode ser uma função (chamada com a tabela e a chave) ou uma outra tabela (usada como fallback).

    __newindex(table, index, value):
        Usado quando tentamos **atribuir** um valor a um campo que ainda não existe na tabela.
        Permite interceptar essa atribuição para redirecioná-la, registrá-la ou bloqueá-la.
]]

local fallback = {
    n3 = 10
}

local t = {
    n1 = 10,
    n2 = 20
}

local mt = {
    __index = fallback
}

setmetatable(t, mt)

print(t.n1)     --> 10 (existe em t)
print(t.n3)     --> 10 (não existe em t, mas existe em fallback)
print(t.n4)     --> nil (não existe nem em t nem em fallback)

-- Agora adicionamos n3 diretamente em t
t.n3 = 50
print(t.n3)     --> 50 (agora existe em t, então __index não é mais acionado)
print(fallback.n3) --> 10 (continua intacto)

-- Exemplo com __newindex (INTERCEPTAÇÃO DE ESCRITA)

local t_2 = {}

setmetatable(t_2, {
    __newindex = function(self, chave, valor)
        print("Tentativa de adicionar nova chave: " .. chave .. " = " .. tostring(valor))
        rawset(self, chave, valor)
    end
})

t_2.valor = 50  --> Tentativa de adicionar nova chave: valor = 50
print(t_2.valor) --> nil (valor não foi salvo porque não foi atribuído)


--[[
  RAWGET() E RAWSET() 
    Funções nativas de Lua usadas para acessar e modificar tabelas 
    diretamente, ignorando os metamétodos __index e __newindex.
]]

-- =====================
-- rawget(table, key)
-- =====================

-- Usado para acessar uma chave da tabela sem acionar __index.

-- ========================
-- rawset(table, key, value)
-- ========================

-- Usado para definir uma chave da tabela sem acionar __newindex.

-- ======================
-- Quando usar?
-- ======================
-- - Ao implementar bibliotecas com metatables.
-- - Para evitar loops recursivos ou acessar dados reais.
-- - Para manipular tabelas em ambientes restritos ou seguros.