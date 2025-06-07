--[[
    Biblioteca IO - Entradas do Usuário    
        A biblioteca IO oferece várias funções que permitem ao desenvolvedor trabalhar com arquivos, realizar leitura de entradas do usuário e escrever saídas para o console.
]]

print("Insira um numero: ") 
local num = io.read() -- Retorna sempre String
print("Valor digitado: "..num)