--[[
    Biblioteca / Módulo / Pacote
        Módulos são estruturas que permitem organizar e reutilizar o código, funcionam de forma semelhante a bibliotecas.

        Facilitam a organização do código em blocos reutilizáveis, promovendo modularidade e facilitando a manutenção.
]]

local modulo = require("Modulo")

print(modulo.soma(1, 2))
print(modulo.constante) -- 2
modulo.nome("Augusto")
print(globo)