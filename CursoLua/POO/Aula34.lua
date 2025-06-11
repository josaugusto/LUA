-- Definição de Objetos

local Gato = {
    vida = 100,
    cor = "Preto",
    ataque = function ()
        print("Gato Atacou!")
    end
}

print(Gato.vida)
Gato.ataque()

local Button = {
    size = {100, 200},
    texto = "Clica",
}

print("Tamanho: " .. Button.size[1] .. ' X ' .. Button.size[2])
print(Button.texto)

-- Objetos: Propriedades e Métodos