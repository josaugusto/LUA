--[[
    Filas
        Filas são estruturas de dados onde os elementos estão organizados em uma fila.

        Os dados podem ser removidos ou adicionados à uns após os outros.

        É necessário criar funções para enfileirar e desenfileirar e o uso da estrutura de dados deve ser limitado a essas funções.

        As filas seguem o padrão FIFO (first in first out)
            O primeiro dado a entrar na fila é o primeiro a sair.   
]]

-- Filas
local fila = {}

local function enfileirar(fila, valor)
    table.insert(fila, valor)
end

local function desenfileirar(fila)
    return table.remove(fila, 1)
end

local function mostrar_fila(fila)
    for i, v in ipairs(fila) do
        print(i, v)
    end
end

--[[
    Pilhas
        Pilhas são estruturas de dados onde os elementos estão organizados em uma pilha.

        Segue o padrão LIFO (last in first out)
            Ultimo a entrar, primeiro a sair.

        Podem ser utilizadas com uso exclusivo das funções table.insert() e table.remove()
]]

-- Pilha - LIFO
local pilha = {}

local function empilhar(pilha, valor)
    table.insert(pilha, valor)
end

local function desempilhar(pilha)
    return table.remove(pilha, #pilha)
end

local function mostrar_pilha(pilha)
    for i = #pilha, 1, -1 do
        print(pilha[i])
    end
end