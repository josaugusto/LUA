--[[
    Modificadores de Acesso

    + Público (public):
        - Acessíveis diretamente pelos objetos da classe.
        - Podem ser herdadas por outras classes.
        - Exemplo: atributos ou métodos acessíveis externamente.

    - Privada (private):
        - Não acessíveis pelos objetos da classe.
        - Não são herdadas por subclasses.
        - Usadas para encapsular dados e comportamentos internos.
        - Exemplo: atributos ou métodos internos.

    # Estáticas (Static):
        - Pertencem à classe, e não aos objetos.
        - Podem ser acessadas sem a criação de instâncias.
        - Úteis para utilitários ou dados compartilhados por todas as instâncias.
]]

-- Publicas 
    -- Os objetos possuem acesso

Gato = {}
Gato.__index = Gato

function Gato:new(nome, cor)
    local obj = setmetatable({}, Gato) -- Cria um objeto da classe Gato
    -- cor e nome são propriedades públicas
    obj.nome = nome 
    obj.cor = cor
    return obj
end

function Gato:miar()
    print("MIAU!")
end

local gato1 = Gato:new("Berenice", "Preto")
print(gato1.nome) -- Acessa o atributo público de gato1
gato1:miar() -- Acessa o método público de gato1

-- Privadas
    -- Os objetos não possuem acesso

Usuario = {}
Usuario.__index = Usuario

function Usuario:new(nome)
    local senha = "1234" -- Propriedade privada
    local self = setmetatable({}, Usuario)

    function self:getNome()
        return nome
    end

    function self:autenticar(s)
        return s == senha
    end

    return self
end

local u = Usuario:new("Maria")
print(u:getNome())           -- Maria
print(u:autenticar("1234"))  -- true
print(u.senha) -- nil 


-- Estática
    -- Não necessita de objetos

Conta = {}
Conta.__index = Conta
Conta.totalContas = 0 -- Propriedade estática (pertence apenas a classe)

function Conta:new(nome)
    local self = setmetatable({}, Conta)
    self.nome = nome
    self.saldo = 0
    Conta.totalContas = Conta.totalContas + 1
    return self
end

function Conta:getNome()
    return self.nome
end

function Conta:getSaldo()
    return self.saldo
end


function Conta:getTotalContas()
    return Conta.totalContas
end

local c1 = Conta:new("Augusto")
print(c1:getNome()) -- Método público
print(Conta:getTotalContas()) -- Estático (não precisa de instância)
