--[[
    Faça um programa para a leitura de duas notas parciais de um aluno. O programa deve calcular a média 
    alcançada por aluno e apresentar: A mensagem "Aprovado", se a média alcançada for maior ou igual a sete; 
    A mensagem "Reprovado", se a média for menor do que sete; A mensagem "Aprovado com Distinção", se a média for igual a dez.
]]

io.write("Insira a primeira nota do aluno: ") local nota_1 = tonumber(io.read())
io.write("Insira a segunda nota do aluno: ") local nota_2 = tonumber(io.read())

local media = (nota_1 + nota_2) / 2

if media == 10 then
     print("Aprovado com Louvor!")
elseif media >= 7 then
       print("Aprovado!")
else
    print("Reprovado!")
end

-- Completed