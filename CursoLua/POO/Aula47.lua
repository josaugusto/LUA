--[[  
    Weak Tables (Tabelas Fracas) são tabelas que mantêm referências fracas às suas chaves, valores ou ambos.  
    Isso permite que o Garbage Collector (GC) remova automaticamente entradas que não são mais utilizadas em nenhum outro lugar do programa.

    Para que servem?  
    - Implementar caches que liberam memória automaticamente.  
    - Armazenar dados temporários (memoization).  
    - Evitar vazamento de memória com objetos que podem ser descartados.

    Funcionamento:
    Em Lua, tabelas mantêm por padrão referências fortes, impedindo que os dados sejam coletados.  
    Ao configurar a tabela como "fraca", indicamos ao GC que ele pode remover as entradas quando não houver outras referências a elas.

    Tipos de Weak Tables:

    1. Valores Fracos (__mode = "v")  
       O GC pode coletar os valores se não houver outras referências a eles.
       
       local t = setmetatable({}, { __mode = "v" })

    2. Chaves Fracas (__mode = "k")  
       O GC pode coletar as chaves se não houver outras referências.
       
       local t = setmetatable({}, { __mode = "k" })

    3. Chaves e Valores Fracos (__mode = "kv")  
       O GC pode coletar ambos.
       
       local t = setmetatable({}, { __mode = "kv" })

    Exemplos:
--]]

-- Exemplo: Valores Fracos
do
    local weakValues = setmetatable({}, {__mode = "v"})

    do
        local obj = {nome = "Valor Fraco"}
        weakValues["chave"] = obj
    end  -- obj sai de escopo

    collectgarbage()
    print("Valores fracos:", weakValues["chave"])  -- nil
end

-- Exemplo: Chaves Fracas
do
    local weakKeys = setmetatable({}, {__mode = "k"})

    do
        local obj = {id = 1}
        weakKeys[obj] = "Chave Fraca"
    end  -- obj sai de escopo

    collectgarbage()
    for k, v in pairs(weakKeys) do
        print("Chaves fracas:", k, v)  -- Provavelmente não imprimirá nada
    end
end

-- Exemplo: Chaves e Valores Fracos
do
    local weakBoth = setmetatable({}, {__mode = "kv"})

    do
        local key = {k = "k"}
        local value = {v = "v"}
        weakBoth[key] = value
    end  -- key e value saem de escopo

    collectgarbage()
    for k, v in pairs(weakBoth) do
        print("Chaves e valores fracos:", k, v)  -- Provavelmente não imprimirá nada
    end
end