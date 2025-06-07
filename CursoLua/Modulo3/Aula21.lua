--[[
    Funções
        Funções são estruturas que armazenam um bloco de código que realiza uma tarefa especifica.

        print(), ipairs(), math.max(), são exemplos de funções.

        Estão normalmente acompanhadas de:
            Parêmetros / Argumento

            Retorno

]]

local function nome()
    print("Augusto")   
end

nome() -- Chama a função nome

-- Funções em Lua são um tipo de dado.
print(type(print))
print(type(nome))

local mostra = print
mostra("Ola, Mundo!")
