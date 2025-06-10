--[[
    Closures são uma funcionalidade que permitem criar funções que "lembram-se" do ambiente onde foram definidas.
    
    Capturam variáveis externas ao seu próprio escopo. É um conceito aplicado no paradigma de programação funcional.
]]

local function criarSaudacao(saudacao)
    return function(nome)
        return saudacao .. " " .. nome
    end
end
 
local SaudarPT = criarSaudacao("Ola")
print(SaudarPT("Pedro"))

local function contador()
    local count = 0
    return function()
        count = count + 1
        return count
    end
end

local meu_contador = contador()
--print(meu_contador())
--print(meu_contador())
--print(meu_contador())

local function criar_multiplicador(fator)
    return function (numero)
        return numero * fator
    end
end

local multiplicador = criar_multiplicador(2) -- Cria um multiplicador de 2
print(multiplicador(2))
print(multiplicador(3))