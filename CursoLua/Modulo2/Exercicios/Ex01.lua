-- Faça um programa que peça dois numeros e mostre o maior deles.

io.write("Insira o primeiro numero: ") local num_1 = tonumber(io.read())
io.write("Insira o segundo numero: ") local num_2 = tonumber(io.read())

if num_1 > num_2 then
    print("O numero " .. num_1 .. " eh MAIOR que " .. num_2)
else
    print("O numero " .. num_2 .. " eh MAIOR que " .. num_1)
end

-- Completed

