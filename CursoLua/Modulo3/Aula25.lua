--[[
    Uma função recursiva é uma função que chama a si mesma.
    Esse tipo de função é útil para resolver problemas que podem ser divididos
    em subproblemas menores semelhantes ao problema original, como:

    - Cálculo de fatoriais
    - Sequência de Fibonacci
    - Percursos em estruturas de dados como árvores e grafos

    A recursão precisa de uma **condição de parada** (caso base), 
    para evitar chamadas infinitas e estouro da pilha (stack overflow).
]]

-- Exemplo simples.

local num = 0

local num = 0

local function nome()
    if num < 5 then
        print("Ola, Mundo!")
        num = num + 1
        nome() -- chamada recursiva
    end
end

nome()



-- 5! = 5*4*3*2*1 = 120

local function fatorial(num)
    if num == 0 or num == 1 then
        return 1 -- caso base
    end
    return num * fatorial(num - 1) -- chamada recursiva
end

-- As chamadas de função são empilhadas.

--[[

fatorial(5)
  → 5 * fatorial(4)
     → 4 * fatorial(3)
        → 3 * fatorial(2)
           → 2 * fatorial(1)
              → return 1 (caso base)
]]

-- Quando chegamos ao caso base (condição de parada) da função recursiva, os itens da pilha começam a ser desempilhados

-- fatorial(1) = 1
-- fatorial(2) = 2 * 1 = 2
-- fatorial(3) = 3 * 2 = 6
-- fatorial(4) = 4 * 6 = 24
-- fatorial(5) = 5 * 24 = 120


print(fatorial(5))

