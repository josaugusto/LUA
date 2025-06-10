-- Faça um Programa que peça um número e informe se o número é inteiro ou decimal.

io.write("Insira um numero: ") local num = io.read("*n")

local inteira, fracional = math.modf(num)

if fracional == 0 then
    print("O numero " .. num .. " eh inteiro!")
else
    print("O numero " .. num .. " eh decimal!")
end

-- Completed