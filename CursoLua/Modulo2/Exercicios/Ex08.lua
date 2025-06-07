io.write("Insira um ano qualquer (Ex.: 2003): ") local ano = tonumber(io.read())

if ano % 4 == 0 then
    if (ano % 100 ~= 0) or (ano % 400 == 0) then
        print("O ano eh bissexto!")
    else
         print("O ano nao eh bissexto!")
    end
else
    print("O ano nao eh bissexto!")
end


-- Completed