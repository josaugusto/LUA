--[[

    Tendo como dados de entrada a altura de uma pessoa, construa um algoritmo que calcule seu peso ideal, usando a seguinte fórmula: (72.7*altura) – 58

]]--

io.write("Altura(cm): ") local altura = io.read("*n")
local peso_ideal = (72.7 * altura) - 58
print("Peso ideal: " .. peso_ideal .. " kg.")

-- Completed