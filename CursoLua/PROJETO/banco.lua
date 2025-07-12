local Banco = {}
Banco.__index = Banco

local Conta = require("conta")
local arquivo = "contas.txt"

function Banco.new()
    local self = setmetatable({}, Banco)
    self.contas = {}
    return self
end

function Banco:salvarContas()
    local file = io.open(arquivo, "w")
    if file then
        for _, conta in pairs(self.contas) do
            file:write(conta.usuario .. "," .. conta.senha .. "," .. conta.saldo .. "\n")
        end
        file:close()
    end
end

function Banco:carregarOuCriar()
    local self = Banco.new()
    local file = io.open(arquivo, "r")
    
    if file then
        for line in file:lines() do
            local usuario, senha, saldo = line:match("([^,]+),([^,]+),([^,]+)")
            saldo = tonumber(saldo)
            self.contas[usuario] = Conta.new(usuario, senha, saldo)
        end
        file:close()
    end
    return self
end

return Banco