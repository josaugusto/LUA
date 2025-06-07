-- Escreva uma função que divide dois números. Utilize variáveis locais e controle o escopo da função para evitar acessos externos.

local function divide(numero_1, numero_2)
    if numero_2 == 0 then
        print("Erro, nao eh possivel dividir por zero!")
        return
    end
    return numero_1 / numero_2
end

io.write(divide(2, 0))

-- Completed