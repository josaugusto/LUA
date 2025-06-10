-- Faça um Programa que peça as 4 notas bimestrais e mostre a média.

io.write("Digite a primeira nota: ") local nota_1 = tonumber(io.read())
io.write("Digite a segunda nota: ") local nota_2 = tonumber(io.read())
io.write("Digite a terceira nota: ") local nota_3 = tonumber(io.read())
io.write("Digite a quarta nota: ") local nota_4 = tonumber(io.read())

local media = (nota_1 + nota_2 + nota_3 + nota_4) / 4

print("A media eh " .. media)

-- Completed