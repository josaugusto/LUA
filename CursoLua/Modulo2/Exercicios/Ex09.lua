-- Faça um Programa que leia três números e mostre o maior deles.

io.write("Insira o primeiro numero: ") local num_1 = tonumber(io.read())
io.write("Insira o segundo numero: ") local num_2 = tonumber(io.read())
io.write("Insira o terceiro numero: ") local num_3 = tonumber(io.read())

if num_1 > num_2 and num_1 > num_3 then
    print("O numero " .. num_1 .. " eh maior que os numeros " .. num_2 .. " e " ..num_3)
elseif num_2 > num_1 and num_2 > num_3 then
     print("O numero " .. num_2 .. " eh maior que os numeros " .. num_1 .. " e " ..num_3)
else
    print("O numero " .. num_3 .. " eh maior que os numeros " .. num_1 .. " e " ..num_2)
end

-- Completed