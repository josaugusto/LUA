-- Faça um programa que receba dois números inteiros e gere os números inteiros que estão no intervalo compreendido por eles.

io.write("Insira o primeiro numero: ") local num_1 = tonumber(io.read())
io.write("Insira o segundo numero: ") local num_2 = tonumber(io.read())

if num_1 > num_2 then
    num_1, num_2 = num_2, num_1
end

for i = num_1, num_2, 1 do
    print(i)
end

-- Completed