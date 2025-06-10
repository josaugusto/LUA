--[[
    Desenvolva um gerador de tabuada, capaz de gerar a tabuada de qualquer número inteiro entre 1 e 10. O 
    usuário deve informar de qual número ele deseja ver a tabuada. A saída deve ser conforme o exemplo abaixo: 
    Tabuada de 5: 5 X 1 = 5 5 X 2 = 10 ... 5 X 10 = 5
]]

io.write("Informe o numero que voce deseja saber a tabuada: ")
local numero = io.read("*n")

for i = 1, 10, 1 do
    print(numero .. " x " .. i .. " = " .. numero * i)    
end

-- Completed