--[[
    Encapsulamento e Controle de Acesso
        O encapsulamento consiste em restringir o acesso direto aos dados de um objeto, permitindo que sejam manipulados apenas por meio de métodos específicos.

    Vantagens:
        Segurança
        Modularidade
        Manutenção do Código
        
    Conceitos:
        Ocultação de dados:
            Esconde os detalhes internos de um objeto, evitando acesso indevido.

        Modificadores de Acesso:
            Define níveis de acesso aos atributos e métodos

        Interface controlada:
            Permite manipular os atributos apenas por meio de métodos específicos (getters e setters).
]]

ContaBancaria = {}
ContaBancaria.__index = ContaBancaria

function ContaBancaria:new(saldo)
    local self = setmetatable({}, ContaBancaria)
    local saldoPrivado = saldo or 0 -- se saldo for nil (false), então saldoPrivado recebe 0

    function self:depositar(valor) -- setter / set()
        if valor > 0 then
            saldoPrivado = saldoPrivado + valor
        end
        return saldoPrivado
    end

    function self:retirar(valor) -- getter / get()
        if valor > 0 and saldoPrivado >= valor then
            saldoPrivado = saldoPrivado - valor
            return saldoPrivado -- saldo restante após a retirada
        else
            return "Saldo Insuficiente!"
        end
    end

    function self:verSaldo() -- getter / get()
        return saldoPrivado
    end

    return self
end

local minhaConta = ContaBancaria:new(100)
print(minhaConta:verSaldo()) -- 100
print(minhaConta:depositar(100)) -- 200
print(minhaConta:retirar(300)) -- Saldo Insuficiente!
print(minhaConta:retirar(200)) -- 0