--[[

    Faça um programa que peça o tamanho de um arquivo para download (em MB) e a velocidade de um link de Internet (em Mbps), calcule e informe o tempo aproximado de download do arquivo usando este link (em minutos).

]]--

-- 1MB = 8Mb

io.write("Tamanho do arquivo(MB): ") local tamanho_arquivo = io.read("*n")
io.write("Velocidade da Internet(Mbps): ") local velocidade_internet = io.read("*n")
local tempo_download = (tamanho_arquivo * 8) / (velocidade_internet * 60)
print("Tempo aproximado para o download: " .. tempo_download .. " minutos.")