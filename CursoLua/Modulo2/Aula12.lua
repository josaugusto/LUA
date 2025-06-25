--[[
    Goto
        O comando goto permite realizar o redirecionamento de código para labels. É um exemplo de uma jump statements.

    Jump Statements:
        goto
        break
        return
        continue (Implementado apenas em alguns ambientes)
        
    Razões para não usar o comando Goto:

        Dificulta a legibilidade do código
        Dificulta a manutenção
        Leva a código amaranhado e desorganizado
        Existem alternativas
        Pode introduzir bugs difíceis de rastrear
        Raramente é necessário
        Vai contra a natureza da programação
]]

::inicio::

print("Digite um numero: ")
local num = io.read("*n")

if num > 10 or num < 0 then
    print("O numero esta fora do limite!")
    goto inicio
else
    print("Numero aceito!")
end