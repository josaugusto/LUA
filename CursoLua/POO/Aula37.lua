--[[

    METAMÉTODOS E OBJETOS EM LUA

    Em Lua, objetos são representados como tabelas. Com o uso de metatables,
    é possível criar comportamentos mais sofisticados, como herança e encapsulamento.

    ▸ __index:
        Usado para definir o que acontece quando tentamos acessar um campo que não existe na tabela.
        Pode ser uma função (chamada com a tabela e a chave) ou uma outra tabela (usada como fallback).

    ▸ __newindex:
        Usado quando tentamos **atribuir** um valor a um campo que ainda não existe na tabela.
        Permite interceptar essa atribuição para redirecioná-la, registrá-la ou bloqueá-la.

]]

-- Exemplo com __index (HERANÇA SIMPLES)

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
    __newindex = function(tabela, chave, valor)
        print("Tentativa de adicionar nova chave: " .. chave .. " = " .. tostring(valor))
        -- O valor não será realmente adicionado, pois não atribuimos manualmente
        -- Ex: tabela[chave] = valor  ← isso precisaria ser feito dentro da função
    end
})

t_2.valor = 50  --> Tentativa de adicionar nova chave: valor = 50
print(t_2.valor) --> nil (valor não foi salvo porque não foi atribuído)

-- Para permitir a atribuição, basta adicionar dentro da função:
-- tabela[chave] = valor


