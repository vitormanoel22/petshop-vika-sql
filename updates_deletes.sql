-- Exemplos de UPDATE (3)
-- Atualizar telefone de um cliente
UPDATE cliente SET telefone = '(11) 90000-0000' WHERE id_cliente = 1;

-- Atualizar status ou observação de um pet
UPDATE pet SET observacoes = observacoes || ' | Atualizado: passou por tratamento antipulgas' WHERE id_pet = 2;

-- Aumentar valor de um serviço em 10%
UPDATE servico SET valor = ROUND(valor * 1.10::numeric,2) WHERE id_servico = 2;

-- Exemplos de DELETE (3)
-- Deletar agendamentos antigos
DELETE FROM agendamento WHERE data < '2025-01-01';

-- Deletar pet específico (cascata configurada ao remover cliente)
DELETE FROM pet WHERE id_pet = 3;

-- Remover cliente com checagem (apenas se não tiver agendamentos futuros)
DELETE FROM cliente WHERE id_cliente = 999 AND NOT EXISTS (SELECT 1 FROM pet p JOIN agendamento a ON p.id_pet = a.id_pet WHERE p.id_cliente = cliente.id_cliente AND a.data >= CURRENT_DATE);
