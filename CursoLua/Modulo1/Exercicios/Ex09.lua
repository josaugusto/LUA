--[[
    Faça um Programa que peça 2 números inteiros e um número real. Calcule e mostre: o produto do dobro do primeiro 
    com metade do segundo. a soma do triplo do primeiro com o terceiro. o terceiro elevado ao cubo.
]]

io.write("Digite o primeiro numero inteiro: ") local num1_inteiro = io.read("*n")
io.write("Digite o primeiro numero inteiro: ") local num2_inteiro = io.read("*n")
io.write("Digite um numero real: ") local num_real = io.read("*n")
local res_1 = (num1_inteiro*2) * (num2_inteiro/2)
local res_2 = (num1_inteiro*3) + num_real
local resp_3 = num_real^3
print(res_1, res_2, resp_3)

-- Completed