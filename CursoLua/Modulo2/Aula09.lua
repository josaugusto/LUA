--[[
    Operadores Relacionais
        Os operadores relacionais permitem obter um valor booleano (true e false) com base numa relação entre dois valores.
        
        Exemplos:
            '==' -> Equivalência
            '~=' -> Diferentes

            '>' -> Maior que
            '<' -> Menor que

            '>=' -> Maior ou igual que
            '<=' -> Menor ou igual que
]]

local var1, var2 = 5 == 5, 5 ~= 6 
print(var1, var2)

local var3, var4 = 5 > 6, 5 < 6 
print(var3, var4)

local var5, var6 = 5 >= 5, 5 <= 6
print(var5, var6)