--[[
    Garbage Collector (GC) em Lua
    --------------------------------
    O Garbage Collector é responsável por gerenciar automaticamente a memória em Lua,
    liberando objetos que não são mais acessíveis (sem referências). Isso evita vazamentos
    de memória e melhora a eficiência do programa.

    Funcionamento (Coleta Incremental e Opcionalmente Geracional)
    
    1. Marcação (Mark):
        - O GC percorre os objetos acessíveis a partir das "raízes" (variáveis globais, pilha, etc.)
        - Marca os objetos que ainda estão em uso como "vivos".

    2. Varredura (Sweep):
        - Os objetos que não foram marcados (sem referências) são considerados lixo.
        - Sua memória é liberada.

    3. Compactação (Opcional):
        - Em algumas implementações, a memória pode ser reorganizada para reduzir fragmentação.

    Modo Geracional (Lua 5.4+)
        - O GC passa a usar um modelo baseado em gerações:
            • Geração nova: objetos recém-criados, coletados com frequência.
            • Geração antiga: objetos que sobreviveram várias coletas, verificados com menor frequência.
        - Objetos promovidos à geração antiga são considerados mais "estáveis".
        - Isso reduz o custo total da coleta de lixo, aumentando a performance geral.

    Controle Manual do GC
    
        collectgarbage("collect")         -- Força a coleta de lixo imediatamente.
        collectgarbage("count")           -- Retorna a memória usada (em KB).
        collectgarbage("setpause", 200)   -- Controla o intervalo entre ciclos do GC (padrão: 100).
        collectgarbage("setstepmul", 150) -- Define a agressividade da coleta (padrão: 100).
        
        collectgarbage("incremental")     -- Ativa o modo incremental (padrão até Lua 5.3).
        collectgarbage("generational")    -- Ativa o modo geracional (disponível a partir do Lua 5.4).
]]

-- Exemplo Prático:

local t = {}

for i = 1, 1e6 do
    t[i] = {value = i}  -- Cria muitos objetos na memória
end

print("Memoria antes da coleta:")
print(collectgarbage("count"))

t = nil  -- Remove referências (tabela agora é lixo)

collectgarbage("collect")  -- Força a liberação de memória

print("Memoria após a coleta:")
print(collectgarbage("count"))

-- Revisar esse conteúdo depois.