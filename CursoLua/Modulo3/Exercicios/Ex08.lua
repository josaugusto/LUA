--[[
    Usando tabelas e recursão, crie uma estrutura que represente uma árvore genealógica simples. A tabela pessoa deve conter o nome da pessoa e referências a seus pais, que também são tabelas. Implemente uma função imprimeFamilia que percorre a árvore genealógica e imprime o nome da pessoa e dos seus pais.
]]

local pessoa = {
    nome = "Carlos",
    pai = {
        nome = "Joao",
        pai = { nome = "Roberto" },
        mae = { nome = "Ana" }
    },
    mae = {
        nome = "Maria",
        pai = { nome = "Paulo" },
        mae = { nome = "Clara" }
    }
}

local function imprimeFamilia(pessoa, nivel)
    nivel = nivel or 0
    print(string.rep(" ", nivel) .. pessoa.nome)
    if pessoa.pai then
        imprimeFamilia(pessoa.pai, nivel + 1)
    end
    if pessoa.mae then
        imprimeFamilia(pessoa.mae, nivel + 1)
    end
end

imprimeFamilia(pessoa)

-- Completed