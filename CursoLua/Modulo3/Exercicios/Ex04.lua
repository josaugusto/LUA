-- Crie uma função que aceita múltiplos argumentos e retorna o produto de todos eles.

local function produto(...)
    local numeros = {...}
    local produto = 1
    for i = 1, #numeros, 1 do
        produto = produto * numeros[i] 
    end
    return produto
end

print(produto(1, 2, 3, 4, 5, 6, 7))

-- Completed