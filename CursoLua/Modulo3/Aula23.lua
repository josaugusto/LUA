--[[
    Todos os valores e dados podem ser locais ou globais.

    O seu local e espaço de uso determina o seu escopo.

    Exemplo:
        Se um dado apenas pode ser utilizado dentro de uma função então o seu escopo é a função.

]]

-- Utilizando o 'do' podemos definir um espaço no código que possui o seu próprio escopo.
-- Os dados criados no espaço apenas poderão ser utilizados nele.

do 
    local nome = "Augusto"
    print(nome)
end

-- print(nome) -- nil

-- Variáveis globais podem ser utilizadas em todo código, variáveis locais existem apenas no bloco de código onde foram definidas.

--[[
    Funções são estruturas sujeitas a escopo
        Dados declarados em funções apenas podem ser utilizados dentro dela.

    E se quisessemos utilizar esse dado fora da função?
        Precisamos retornar esse dado.

]]

-- Parametros -> Locais
local function soma(n1, n2)
    local soma = n1 + n2
    return soma
end

print(soma(1, 6))

-- Uma função apenas pode possuir uma instrução de return a ser executada. O return marca o ponto de finalização de uma função.

-- Escopo
    -- Locais e Globais
-- Retorno
    -- Local -> Global
