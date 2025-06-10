--[[
    Operadores Lógicos
        Operadores Lógicos permitem combinar duas expresões booleanas. Podem ser utilizados para comparar dois valores booleanos ou expressões relacionais.

    Operadores:
        'AND' -> Tradução: 'e'
        'OR' -> Tradução: 'ou'
        'NOT' -> Tradução 'não'
]]

-- Conjunção:
print(true and true) -- true
print(true and false) -- false

-- Disjunção:
print(true or false) -- true
print(false or false) -- false

-- Negação:
print(not true) -- false
print(not false) -- true