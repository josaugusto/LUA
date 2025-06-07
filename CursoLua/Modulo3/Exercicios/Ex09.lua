--[[
    Crie uma função adivinhaNumero que recebe um número secreto e múltiplos palpites como argumentos. A função deve retornar true se algum dos palpites for igual ao número secreto; caso contrário, false.
]]

local function adivinhaNumero(numero, ...)
    local palpites = {...}
    for _, palpite in pairs(palpites) do
        if numero == palpite then
            return true
        end
    end
    return false
end

print(adivinhaNumero(5, 2, 4, 5, 7, 8, 9))

-- Completed