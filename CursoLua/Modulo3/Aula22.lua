-- Parâmetros / Argumentos são valores enviados a funções para uso interno.

local function soma(num_1, num_2)
    print(num_1 + num_2)
end

soma(1, 2) -- Parâmetros 1 e 2

-- POO: Argumentos
-- Imperativa / Procedural: Parêmetros

-- Funções variádicas aceitam um número ilimitado de parâmetros.
-- O operador '...' permite que a função aceite quaisquer argumentos.

local function nome(...)
    print(...) -- 10 20 30 40
    local valores = {...}
    for i, v in ipairs(valores) do -- ou ipairs({...})
        print(i, v)
    end
end

-- ... = valores 
nome(10, 20, 30, 40)


-- Função Select()
-- A função select() permite selecionar valores de um conjunto:
-- Seleciona todos os parâmetros
-- select('#', ...)

-- Seleciona uma quantidade de parâmetros
-- select(n, ...)

local function soma(...)
   print("Total de argumentos: " .. select('#', ...))
   print(select(2, ...)) -- Mostra todos os valores a partir do 2.
end

soma(20, 30, 40, 50)