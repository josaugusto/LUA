--[[
    Loop For Genérico
        O loop for genérico percorre elementos em uma estrutura de dados como operador 'in'.

        Executa um bloco de código para cada valor existente na estrutura.

        A cada iteração do loop, os valores da tabela são lidos sequencialmente dependendo do iterador.
]]

local frutas = {
    banana = "amarelo",
    laranja = "laranja",
    pessego = "vermelho",
    uva = "verde"
}

-- Basicamente o operador 'in' faz todo o de pegar o iterador e retorna a chave e o valor do iterador da tabela.
for fruta, cor in pairs(frutas) do
    print("Fruta: " .. fruta .. " - Cor: " .. cor)
end

local nums = {10, 20, 30}

for i, v in ipairs(nums) do
    print(i .. " - ".. v)
end

-- ou

for _, v in ipairs(nums) do
    print(v)
end