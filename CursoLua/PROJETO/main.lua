local Banco = require("banco")
local banco = Banco:carregarOuCriar()

while true do
    print("\n=== Terminal Bancario ===")
    print("1. Criar Conta")
    print("2. Acessar Conta")
    print("3. Deletar Conta")
    print("4. Sair")
    io.write("Escolha uma opcao: ")
    local escolha = tonumber(io.read())

    if escolha == 1 then
        banco:criarConta()
    elseif escolha == 2 then
        banco:acessarConta()
    elseif escolha == 3 then
        banco:deletarConta()
    elseif escolha == 4 then
        banco:salvarContas()
        print("Obrigado por utilizar o banco!")
        break
    else
        print("Opcao Inválida!")
    end
end