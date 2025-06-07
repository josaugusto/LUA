-- Crie um array que armazene as notas de um aluno em cinco disciplinas. Calcule e imprima a média das notas.

local notas_aluno = {}

local soma = 0

for i = 1, 5, 1 do
    io.write("Informe a " .. i .. " nota do aluno: ")
    table.insert(notas_aluno, tonumber(io.read()))
    soma = soma + notas_aluno[i]
end

local media = soma / 5
print("MEDIA: " .. media)

-- Completed

