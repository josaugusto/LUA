--[[
    Lua possui funções para realizar a análise e tratamento de erros permitindo diminuir a ocorrência de erros e os seus impactos.

    Tipos de Erros em Lua:
        Erros de Sintaxe
        Erros de Tempo de Execução (Runtime Errors)
        Erros Lógicos

    Erros de Sintaxe:
        Ocorrências devido a comandos malformados que impedem a execução do código.
        Ex.: prin("Olá, Mundo!")
    
    Erros de Tempo de Execução:
        Erros que ocorrem enquanto o programa está sendo executado, geralmente causados por operações inválidas.
        Ex.: Divisão por zero

    Erros Lógicos:
        Ocasionados quanto o programa executa operações válidas, mas produz resultados inesperados devido a uma falha na lógica de programação.

        Este tipo de erro não é detectado pelo interpretador Lua e exige um processo de depuração para ser corrigido.

    Funções de Tratamento de Erros
        Lua fornece funções para lidar com erros em tempo de execução:
            error()
            assert()
            pcall()
            xpcall()

        Função error()
            Exibe uma mensagem de erro.

            error("Mensagem de erro")

        Função assert():
            Gera erros com base em condições

            assert(x >= 0, "Número negativo não é permitido")

        Função pcall()
            A função pcall() (protected call) executa uma função em um ambiente protegido. Se um erro ocorrer, a função o captura e permite que o programa continue a ser executado.

        Função xpcall()
            Similar ao pcall(), mas permite especificar uma função de tratamento de erros (error handler). Útil quando é necessário executar uma lógica específica sempre que um erro ocorre.
]]

function divide(a, b)
    return a / b
end

print(divide(15, 0)) -- erro

function raiz(x)
    assert(x >=0, "Nao tem raiz quadrada de numero negativo!") -- Exibe se a condição for falsa.
    return math.sqrt(x)
end

local status, resultado = pcall(function ()
    return divide(10, 2) -- erro divisão por 0
end)

if not status then
    print("Erro capturado: ", resultado)
else
    print("Resultado: ", resultado)
end
