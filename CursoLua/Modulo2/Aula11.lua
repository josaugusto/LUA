io.write("Digite um numero: ") local num_1 = tonumber(io.read())
io.write("Digite outro numero: ") local num_2 = tonumber(io.read())

if num_1 > num_2 then
    print("O numero " .. num_1 .. " eh MAIOR que " .. num_2)
elseif num_1 < num_2 then
    print("O numero " .. num_1 .. " eh MENOR que " .. num_2)
else 
    print("Os dois numero sao iguais!")
end


-- É possível se simular o comportamento de operadores ternários em Lua utilizando operadores lógicos.
-- Não é muito usado
local idade = 20
local mensagem = (idade >= 18) and "Maior de idade" or "Menor de idade"
print(mensagem) 

-- ou

local idade = 15
local mensagem = nil

if idade >= 18 then
    mensagem = "Maior de Idade"
else 
    mensagem = "Menor de idade"
end