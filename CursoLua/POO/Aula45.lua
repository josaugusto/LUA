--[[
    Memoization é uma técnica de otimização que consiste em armazenar os resultados de chamadas de funções caras e reutilizá-los quando as mesmas entradas ocorrem novamente.

    Conceitos:
        Funções Caras -> Funções que repetem várias vezes operações (recursivas)

    Funcionamento
        A função executa o cálculo uma vez;

        O resultado é armazenado (normalmente em uma estrutura como um dicionário);

        Da próxima vez que a função for chamada com o mesmo valor, retorna o resultado armazenado em vez de calcular de novo.

    Memória Cache
        É um tipo de memória de alta velocidade usada para armazenar dados temporários que são acessados com frequência pelo processador.

        Serve como um intermediário entre a memória principal (RAM) e a CPU, ajudando a reduzir o tempo que o processador leva para acessar dados.
]]

local memo = {}

-- Complexidade Exponencial  
local function fibonacci_1(num)
    if memo[num] then
        return memo[num] -- Retorna um valor já computado
    end

    if num <= 1 then
        memo[num] = num
    else
        memo[num] = fibonacci_1(num - 1) + fibonacci_1(num - 2)
    end

    return memo[num]
end

print(fibonacci_1(40))

local function memoize(f)
    local cache = {}
    return function (x)
        if not cache[x] then
            cache[x] = f(x)
        end
        return cache[x]
    end
end

fibonacci_2 = memoize(function (num)
    if num <= 1 then
        return num
    else
        return fibonacci_2(num - 1) + fibonacci_2(num - 2)
    end
end)

print(fibonacci_2(40))

-- Revisar esse conteúdo depois.