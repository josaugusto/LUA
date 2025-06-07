--[[

    Manipulação de Arquivos
        A manipulação de arquivos em Lua é feita utilizando a biblioteca padrão de IO (Input/Output).

        Foi anteriormente utilizada para obter entradas do usuário.
        
        Manipulação de Arquivos:
            Abrir e fechar um arquivo
            Ler o seu conteúdo
            Escrever / Alterar o seu conteúdo
            Criar, copiar, mover e deletar o arquivo

        Processo
            Abrir o arquivo
            Realizar operações
                Escrita ou Leitura
                Criar, copiar, mover e deletar
            Fechar o arquivo
        
        -- Abrir um arquivo

            Modos de abertura
                r -> ler
                w -> escrever
                a -> adicionar novos dados ao fim do arquivo
                r+ -> leitura e escrita
                w+ -> leitura e escrita (sobrescreve o conteúdo)
                a+ -> leitura e apêndice
        
        
        local file = io.open("arquivo.txt", "r")


        -- Leitura de um arquivo

        Modos de leitura:
            *a -> lê todo o arquivo
            *l -> lê uma linha
            *n -> lê um número do arquivo
            number -> lê um número específico de bytes.

        local conteudo = file:read()

        -- Escrita de um arquivo

            local conteudo = file:write("O que escreever")
]]  


-- Manipulação de Arquivos

-- Abrir o arquivo (r, w, a, r+, w+, a+)
local file, message = io.open("Modulo2/arquivo.txt", "w")

if not file then
    print("Erro ao abrir o arquivo: " .. message)

else 
    print("Arquivo criado com sucesso!")
    file:close()
end

