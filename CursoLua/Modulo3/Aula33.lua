--[[
    A biblioteca debug oferece funções para inspecionar, manipular e depurar o código em execução.

    Útil para desenvolvedores que precisam de informações sobre o comportamento interno de códigos.

    Pilha de Chamadas
        Armazena as funções que foram chamadas e ainda não terminaram de executar.

        Cada vez que uma função é chamada, o ambiente de execução (como o interpretador Lua) coloca essa chamada de função no topo da piçha.

        Quando uma função termina, ela é removida (ou "desempilhada") do topo da pilha, e o controle retorna para a função que a chamou.
        
]]

-- Não vi muita útilidade nessa biblioteca visto que existe o debug do próprio Visual Code