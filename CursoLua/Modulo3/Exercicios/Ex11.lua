--[[
    Crie uma função safeLog que tenta abrir um arquivo e escrever uma mensagem de log. Se ocorrer um erro (como permissão negada), capture-o e retorne uma mensagem de erro amigável.
]]

local function safeLog()
    local arquivo, mensangem_erro = io.open("arquivo.txt", "r+")
    local status, resultado = pcall(
        function ()
            if not arquivo then
                error()
            else
                arquivo:write("Log")
                arquivo:close()
            end
        end)
    
    if not status then
        print("ERRO, arquivo inexistente!")
    else
        print("Mensagem de log escrita com sucesso!")
    end
end

safeLog()

-- Completed