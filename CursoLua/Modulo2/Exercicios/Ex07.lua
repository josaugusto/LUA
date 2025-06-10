-- Faça um Programa que leia 2 números e em seguida pergunte ao usuário qual operação ele deseja realizar.

io.write("Insira o primeiro numero: ") local num_1 = tonumber(io.read())
io.write("Insira o segundo numero: ") local num_2 = tonumber(io.read())

io.write("Digite o simbolo da operacao desejada (+, -, x ou /): ") local op = io.read()

if op == "+" then
    print(num_1 .. " + " .. num_2 .. " = " .. num_1 + num_2)
elseif op == "-" then
    print(num_1 .. " - " .. num_2 .. " = " .. num_1 - num_2)
elseif op == "x" then
    print(num_1 .. " x " .. num_2 .. " = " .. num_1 * num_2)
elseif op == "/" then
    if num_2 ~= 0 then
         print(num_1 .. " / " .. num_2 .. " = " .. num_1 / num_2)
    else
        print("Divisao por zero não eh permitida")
    end
else
    print("O operacao invalida!")
end

-- Completed