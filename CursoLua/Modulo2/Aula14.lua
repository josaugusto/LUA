--[[
    OS - Sistema Operativo
        A biblioteca OS em Lua oferece funções relacionadas ao sistema operacional permitindo interações básicas como:

            Obtenção de informações de data e hora;

            Manipulação de arquivos

            Execução de comandos externos

            Controle de tempo
            ...

        Exemplos de funções da biblioteca OS:
            os.clock(), os.date([format, time]), ...
]]

-- Data atual
local data = os.date("%d/%m/%y")

print(data)

-- Clock da CPU
print(os.clock())

-- Executar comandos do SO
print(os.execute("mkdir pasta"))