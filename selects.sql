-- Consultas exemplares (SELECT) para avaliação
-- 1) Listar todos os agendamentos com dados do pet, tutor e serviço
SELECT a.id_agendamento, a.data, a.hora,
       p.nome AS nome_pet, p.especie, p.raca,
       c.nome AS nome_tutor, s.tipo_servico, s.valor, f.nome AS funcionario
FROM agendamento a
JOIN pet p ON a.id_pet = p.id_pet
JOIN cliente c ON p.id_cliente = c.id_cliente
JOIN servico s ON a.id_servico = s.id_servico
JOIN funcionario f ON a.id_funcionario = f.id_funcionario
ORDER BY a.data, a.hora
LIMIT 50;

-- 2) Clientes com número de pets e últimos atendimento (subconsulta + group)
SELECT c.id_cliente, c.nome, COUNT(p.id_pet) AS total_pets,
  (SELECT MAX(a.data) FROM agendamento a JOIN pet pp ON a.id_pet = pp.id_pet WHERE pp.id_cliente = c.id_cliente) AS ultima_visita
FROM cliente c
LEFT JOIN pet p ON p.id_cliente = c.id_cliente
GROUP BY c.id_cliente, c.nome
ORDER BY total_pets DESC;

-- 3) Serviços mais realizados (contagem por tipo)
SELECT s.tipo_servico, COUNT(a.id_agendamento) AS vezes_realizado, SUM(s.valor) AS faturamento_estimado
FROM servico s
LEFT JOIN agendamento a ON a.id_servico = s.id_servico
GROUP BY s.tipo_servico
ORDER BY vezes_realizado DESC;

-- 4) Buscar pets por nome (filtro) e ordenar por idade (uso de WHERE e ORDER BY)
SELECT * FROM pet WHERE nome ILIKE '%lu%' ORDER BY idade DESC;
