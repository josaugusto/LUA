--[[
    Manipulação de Strings #1
        A manipulação de string em Lua é possível através de operadores e da biblioteca string.

        Escape sequences 
            São utilizados para representar caracteres especiais em strings. Inseridos diretamente na mesma.

        Exemplo:
            \n - Quebra de Linha
            \t - Tabulação
            \\ - Gerar uma barra invertida
            \" - Gerar aspa dupla
            ...

        A manipulação de string em Lua é possível através de operadores e da biblioteca string.

        Funções da biblioteca String:

            string.upper(s)
            string.lower(s)
            string.format()
            ...
]]


-- Operadores:

-- Concatenação: ..
local nome_completo = "Jose" .. " " .. "Augusto"
local idade = 22
print(nome_completo)

-- Comprimento: #
print(#nome_completo)

-- Espace Sequences 
print("Ola, \nMundo")
print("Ola\tMundo")
print("Ola, \\Mundo\\")
print("Ola,  \"Mundo\"")

-- Biblioteca string
local texto = "Ola, Mundo!"
print(string.upper(texto))
print(string.lower(texto))
local form = string.format("O meu nome completo eh %s e tenho %d.", nome_completo, idade)
print(form)