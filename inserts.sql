-- Inserts: popular tabelas principais do Petshop VIKA
-- Clientes
INSERT INTO cliente (nome, telefone, endereco) VALUES
('Ana Souza','(11) 91234-5678','Rua das Flores, 123'),
('Bruno Lima','(11) 99876-5432','Av. Central, 45'),
('Carla Mendes','(11) 91200-1111','Praça da Liberdade, 10');

-- Funcionários
INSERT INTO funcionario (nome, funcao) VALUES
('João Pereira','Groomer'),
('Mariana Silva','Veterinária'),
('Lucas Santos','Atendente');

-- Serviços
INSERT INTO servico (tipo_servico, duracao, valor) VALUES
('Banho Simples',30,45.00),
('Tosa Completa',60,80.00),
('Consulta Veterinária',30,120.00),
('Vacinação',15,60.00);

-- Pets (assumindo os ids de cliente: 1,2,3)
INSERT INTO pet (nome, especie, raca, idade, observacoes, id_cliente) VALUES
('Luna','Canina','Poodle',3,'Hiperativa',1),
('Thor','Canina','SRD',5,'Alérgico a pulgas',2),
('Mimi','Felina','Siamês',2,'Portadora de alergia leve',3);

-- Agendamentos (uso de funções de data como exemplo)
INSERT INTO agendamento (data, hora, id_pet, id_servico, id_funcionario) VALUES
('2025-12-01','09:00',1,1,1),
('2025-12-01','10:30',2,2,1),
('2025-12-02','11:00',3,3,2),
('2025-12-03','14:00',1,4,2);
