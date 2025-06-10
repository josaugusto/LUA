--[[
    Estruturas de Repetição
        Estruturas de repetição permitem repetir um bloco de código um determinado número de vezes.
        
        O bloco de código a ser repetido está sujeito a uma condição.

        Se a condição for verdadeira o bloco de código será executado, verificando de novo a veracidade da condição.

        Se a condição for falsa, o código segue o seu fluxo natural.

        Loops existentes:
            While, Repeat e For (Numérico e Genérico)

        Break
            Mesmo com o teste lógico do loop verdadeiro o código pode sofrer uma interrupção forçada até através do jumpstatement break.
]]

-- Loop While

local contador = 0 

-- Enquanto a [Condição] for VERDADEIRA faça tal coisa.
while contador <= 10 do
    print(contador)
    contador = contador + 1
end

print(contador) -- 11

io.write("Digite um numero (0 a 10): ") local numero = tonumber(io.read())

local i = 0

while i <= 10 do
    if i % 2 == 0 or numero*i <= 8 then
        print("=" .. numero*i)
    else
        break -- interrompe o fluxo de execução padrão de um loop
    end

    i = i + 1
end

-- Loop repeat
-- Repita tal coisa ATÉ QUE a [Condição] seja verdadeira
-- O código é executado pelo menos um vez, diferente do while
-- Loop Do-While
local x = 0

repeat
    print("Ola, Mundo! " .. x)
    x = x + 1
until x == 10


