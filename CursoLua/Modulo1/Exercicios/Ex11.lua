--[[
    Faça um programa para uma loja de tintas. O programa deverá pedir o tamanho em metros quadrados da área a ser pintada.
    Considere que a cobertura da tinta é de 1 litro para cada 3 metros quadrados e que a tinta é vendida em latas de 18 litros, que custam R$ 80,00.
    Informe ao usuário a quantidades de latas de tinta a serem compradas e o preço total.
]]-- 

io.write("Tamanho em m^2 da area: ") local area = io.read("*n")
local litros_de_tinta = area / 3

local latas_de_tinta = math.ceil(litros_de_tinta/18)
local total = latas_de_tinta * 80
print("O total de latas de tinta foi " .. latas_de_tinta .. " latas" .. " e o preco final eh de " .. total .. " R$")

-- Completed