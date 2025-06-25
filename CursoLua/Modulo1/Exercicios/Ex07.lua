--[[
    Faça um Programa que pergunte quanto você ganha por hora e o número de horas trabalhadas no mês. 
    Calcule e mostre o total do seu salário no referido mês.
]]

io.write("Ganho por hora: ") local ganho_hora = io.read("*n")
io.write("Horas trabalhadas: ") local horas_trabalho = io.read("*n")
local salario = ganho_hora * horas_trabalho
print("O seu salario eh " .. salario .. " R$")