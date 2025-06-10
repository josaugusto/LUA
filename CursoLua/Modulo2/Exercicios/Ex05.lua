-- Faça um Programa que peça um número inteiro e determine se ele é par ou ímpar.

io.write("Insira um numero: ") local num = tonumber(io.read())

if num % 2 == 0 then
    print("O numero " .. num .. " eh PAR!")
else
    print("O numero " .. num .. " eh IMPAR!")
end

-- Completed