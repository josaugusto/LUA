--[[
    Objetos:
        Conjuntos de atributos e métodos que representam uma entidade do mundo real.
        Ex.: Gato1 ou ScrollWindow
    
    Classes:
        Conjunto de atributos e comportamentos que pode originar objetos;
        Objetos da mesma classe possuem as mesmas características.
        Ex.: Felinos ou Window
]]

local classe1 = {}

-- classe1.new() é o método construtor da classe
function classe1.new() -- criar um novo objeto
    local self = {}
    self.vida = 100 -- Atributo vida

    function self.takeDamage(dano) -- Método dos objetos pertencentes a essa classe
        self.vida = self.vida - dano
    end
    
    return self
end

local obj1 = classe1.new()
local obj2 = classe1.new()

print(obj1.vida)
print(obj2.vida)
obj1.takeDamage(30)
print(obj1.vida)