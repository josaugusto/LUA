-- Faça um Programa que verifique se uma letra digitada é "F" ou "M". Conforme a letra escrever: F - Feminino, M - Masculino, Sexo Inválido.

io.write("Digite uma letra (A-Z): ") local letra = io.read()

if string.upper(letra) == "M" then
    print("M - Masculino")
elseif string.upper(letra) == "F" then
    print("F - Feminino")
else
    print("Sexo Invalido!")
end

-- Completed