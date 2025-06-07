--[[
    Conversão de Variáveis

        Conversão de String para Número
            Converter uma string que representa um número, para um valor numérico. Função tonumber()

        Conversão de Número para String
            Converter um número para uma string que o representa. Função tostring()

        Conversões Implícitas / Automáticas
            Ao juntar um número a uma string a Linguagem Lua chama implicitamente / internamente / automaticamente a função tostring().
]]

-- Conversão Explicita

local texto = "12"

print(texto, type(texto)) -- "12"
local numero = tonumber(texto)
print(numero, type(numero)) -- 12

-- Conversão Implícita / Automática

-- tostring()
local num = 10
local str = "O valor eh: " .. num
print(str)

-- tonumber()
print(20 + "20")
