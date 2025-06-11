-- Exemplo 1: Objeto com função tradicional

local Gato = {
    vida = 100,
    cor = "Preto",
    damage = function(obj, dano)
        obj.vida = obj.vida - dano
    end
}

-- Uso:
-- print(Gato.vida)
-- Gato.damage(Gato, 20)
-- print(Gato.vida)

-- Aqui, obj é passado como argumento para a função.
-- Esse padrão funciona, mas é mais verboso e menos idiomático em Lua.

-- Exemplo 2: Usando self como convenção

local Gato_2 = {
    vida = 100,
    damage = function(self, dano)
        self.vida = self.vida - dano
    end
}

-- Uso:
-- Gato_2.damage(Gato_2, 20)

-- self é uma convenção usada para representar o próprio objeto (a tabela em questão).
-- A chamada ainda precisa passar o objeto manualmente.

-- Exemplo 3: Sintaxe com dois-pontos (:)

local Gato_3 = {
    vida = 100,
}

function Gato_3:damage(dano) -- equivalente a function Gato_3.damage(self, dano)
    self.vida = self.vida - dano
end

-- Uso:
print(Gato_3.vida)   -- 100
Gato_3:damage(40)     -- sintaxe automática: passa Gato_3 como self
print(Gato_3.vida)   -- 60

-- A sintaxe : é a forma idiomática de definir e chamar métodos em Lua. Ela automaticamente passa o objeto como primeiro argumento (chamado de self dentro da função).