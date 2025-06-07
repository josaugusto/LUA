--[[
    Faça um programa que peça uma nota, entre zero e dez. Mostre uma mensagem caso o valor seja inválido e continue pedindo até que o usuário informe um valor válido.

]]



local nota

repeat
    io.write("Digite uma nota entre 0 e 10: ")
    nota = tonumber(io.read())
until nota >= 0 and nota <= 10

print("Numero valido!") 

-- Completed

