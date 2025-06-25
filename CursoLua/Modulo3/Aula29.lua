--[[
    Biblioteca Coroutine

    A biblioteca `coroutine` fornece uma forma de implementar corrotinas,
    permitindo programação cooperativa, em que funções podem ser pausadas
    e retomadas conforme necessário.

    Conceitos Fundamentais

        ▪ Corrotina:
            Uma função especial que pode ser pausada e continuada mais tarde,
            permitindo que o controle de execução volte ao chamador.

        ▪ Estado da Corrotina:
            - "suspended": criada, mas ainda não iniciada ou pausada com yield.
            - "running": em execução no momento.
            - "normal": ativa, mas chamada por outra coroutine.
            - "dead": terminou sua execução.

    Funções da Biblioteca:

        ▪ coroutine.create(func)
            Cria uma nova corrotina a partir da função `func`.
            Retorna um objeto coroutine.

        ▪ coroutine.resume(co, ...)
            Inicia ou retoma a execução da corrotina `co`.
            Retorna `true` seguido dos valores retornados por `yield` ou `func`.

        ▪ coroutine.yield(...)
            Pausa a execução da corrotina.
            Os valores passados são retornados ao `resume()` que a chamou.

        ▪ coroutine.status(co)
            Retorna o estado atual da corrotina (`suspended`, `running`, `normal`, `dead`).

        ▪ coroutine.wrap(func)
            Cria uma coroutine como `create`, mas retorna uma função.
            Ao chamar essa função, a coroutine é executada (sem usar `resume` diretamente).
]]

-- Exemplo Prático:

local co = coroutine.create(function()
    for i = 1, 10 do
        print(i)
        if i % 2 == 0 then
            coroutine.yield()
        end
    end
end)

print(coroutine.status(co)) -- suspended
coroutine.resume(co)        -- imprime 1, 2 e pausa
print(coroutine.status(co)) -- suspended
coroutine.resume(co)        -- imprime 3, 4 e pausa
coroutine.resume(co)        -- continua...

--[[
    Sub-rotinas

        Funções tradicionais chamadas por um ponto específico do código.

           Características:
            - Fluxo simples (entrada → execução → saída)
            - Não podem ser pausadas nem retomadas
            - Ideais para modularizar o código

    Corrotinas

        Corrotinas são uma forma especial de sub-rotinas que podem ser pausadas e retomadas, 
        permitindo que a execução seja controlada de forma mais flexível.

           Características:
            - Permitem `yield` (pausa) e `resume` (continuação)
            - Mantêm estado entre execuções
            - Execução cooperativa (não simultânea)
            - Úteis para simular multitarefa leve (ex: scripts de jogo, animações, I/O)

    Threads (*não implementadas nativamente em Lua*)

        Threads são funções que podem executar simultaneamente, ou seja, em paralelo, 
        dentro de um mesmo programa.

        Características:
            - Executam de forma simultânea (concorrência real)
            - Ideal para tarefas intensivas e paralelismo
            - Requer controle de sincronização (ex: mutex, semáforos)
]]