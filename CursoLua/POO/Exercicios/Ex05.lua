--[[
    Projeto: Sistema de Biblioteca 

    Objetivo: Criar um sistema simples de gerenciamento de livros para uma biblioteca, 
    permitindo registar livros, emprestar e devolver, e procurar livros por título. 

    Descrição: 
    Crie uma classe Livro que possua os seguintes atributos: titulo (público), autor (público), 
    disponivel (privado, define se o livro está disponível ou emprestado) 

    Implemente os seguintes métodos para a classe: 

        novoLivro(titulo, autor): cria um novo livro. 

        emprestar(): muda o status do livro para "não disponível". 
        
        devolver(): muda o status do livro para "disponível". 
        
        informacoes(): imprime as informações do livro, incluindo se está disponível ou não. 
    
    Em seguida, crie uma classe Biblioteca que tenha um atributo: 

        livros (público, lista de livros) 

    Implemente os seguintes métodos para a classe Biblioteca: 

        adicionarLivro(livro): adiciona um livro à lista de livros. 

        buscarLivro(titulo): encontra e retorna um livro pela busca do título.
]]

-- Classe Livro
local Livro = {}
Livro.__index = Livro

function Livro.novoLivro(titulo, autor)
    local self = setmetatable({}, Livro)
    self.titulo = titulo
    self.autor = autor
    local disponivel = "disponivel"

    function self.info()
        print("O livro " .. self.titulo .. " do autor(a) " .. self.autor .. " Se encontra " .. disponivel .. "!")
    end

    function self.emprestar()
        disponivel = "nao disponivel"
    end

    function self.devolver()
        disponivel = "disponivel"
    end

    return self
end

-- Classe Biblioteca
local Biblioteca = {}
Biblioteca.__index = Biblioteca

function Biblioteca:new()
    return setmetatable({}, self)
end

function Biblioteca:adicionarLivro(livro)
    table.insert(self, livro)
end

function Biblioteca:buscarLivro(titulo)
    for _, livro in ipairs(self) do
        if livro.titulo == titulo then
            print("O livro de titulo: " .. titulo .. " foi encontrado!")
            return livro
        end
    end
    print("O livro de titulo: " .. titulo .. " Nao foi encontrado!")
    return nil
end

local livro1 = Livro.novoLivro("Dracula", "Bram Stoker")
local livro2 = Livro.novoLivro("Colarine", "Neil Gaiman")

local minhaBiblioteca = Biblioteca:new()

minhaBiblioteca:adicionarLivro(livro1) 
minhaBiblioteca:buscarLivro("Dracula") -- O livro de titulo: Dracula foi encontrado! 
minhaBiblioteca:buscarLivro("Colarine") -- O livro de titulo: Colarine Nao foi encontrado!
minhaBiblioteca:adicionarLivro(livro2)
minhaBiblioteca:buscarLivro("Colarine") -- O livro de titulo: Colarine foi encontrado! 

-- Completed