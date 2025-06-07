--[[
    Funções Lambda
        Funções lambda em Lua são funções anônimas, ou seja, funções que não possuem um nome específico.

        Geralmente são utilizadas em contextos onde precisamos de uma função rápida e simples.

    Funções como Valores e Funções Lambda
        Em Lua, funções são tratadas como valores de primeira classe, o que significa que podem ser manipuladas como qualquer outro tipo de dado.

        Podem ser atribuídas a variáveis, passadas como argumentos para outras funções, e retornadas por outras funções.

    Funções como Valores
        Funções como valores, ou funções de primeira classe, referem-se à capacidade de manipular funções como qualquer outro valor.

    Isso inclui:
        1) Atribuir funções a variáveis

        2) Passar funções como argumentos

        3) Retornar funções de outras funções

]]

local dobro = function(x) return x*2 end

print(dobro(2))

-- Funções como Valores

-- 1) Atribuir funções a variáveis

local x = function()
    print("Ola")
end

x()

-- 2) Passar funções como Parametros

local function operation(func, x, y)
    return func(x, y)
end

local res = operation(function(a, b) return a+b end, 5, 3)

print(res)

-- 3) Funções que retornam funções
local function criar_multiplicador(fator)
    return function(x)
        return x*fator
    end
end

local triplo = criar_multiplicador(3)
print(triplo(3))