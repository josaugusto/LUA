-- Implemente uma fila de atendimento em que novos clientes são adicionados à fila e o próximo cliente é atendido em ordem de chegada. Crie funções adicionaCliente e atendeCliente.

local fila = {}

local function adicionaCliente(fila, nome_cliente)
    table.insert(fila, nome_cliente)
end

local function atendeCliente(fila)
    return table.remove(fila, 1)
end

adicionaCliente(fila, "Jose Augusto")
adicionaCliente(fila, "Charles da Silva")
adicionaCliente(fila, "Pedro Augusto")
adicionaCliente(fila, "Clarice dos Santos")

print("O proximo cliente a ser atendido eh o(a): " .. atendeCliente(fila))

-- Completed