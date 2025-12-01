-- Schema: Petshop VIKA (PostgreSQL dialect)
-- Create tables (model lógico final)
CREATE TABLE cliente (
  id_cliente SERIAL PRIMARY KEY,
  nome VARCHAR(150) NOT NULL,
  telefone VARCHAR(30),
  endereco VARCHAR(255)
);

CREATE TABLE funcionario (
  id_funcionario SERIAL PRIMARY KEY,
  nome VARCHAR(150) NOT NULL,
  funcao VARCHAR(100)
);

CREATE TABLE servico (
  id_servico SERIAL PRIMARY KEY,
  tipo_servico VARCHAR(100) NOT NULL,
  duracao INTEGER, -- duração em minutos
  valor NUMERIC(10,2) NOT NULL
);

CREATE TABLE pet (
  id_pet SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  especie VARCHAR(50),
  raca VARCHAR(80),
  idade INTEGER,
  observacoes TEXT,
  id_cliente INTEGER NOT NULL REFERENCES cliente(id_cliente) ON DELETE CASCADE
);

CREATE TABLE agendamento (
  id_agendamento SERIAL PRIMARY KEY,
  data DATE NOT NULL,
  hora TIME NOT NULL,
  id_pet INTEGER NOT NULL REFERENCES pet(id_pet) ON DELETE CASCADE,
  id_servico INTEGER NOT NULL REFERENCES servico(id_servico) ON DELETE RESTRICT,
  id_funcionario INTEGER NOT NULL REFERENCES funcionario(id_funcionario) ON DELETE SET NULL
);
-- Indexes for performance
CREATE INDEX idx_pet_cliente ON pet(id_cliente);
CREATE INDEX idx_agendamento_pet ON agendamento(id_pet);
CREATE INDEX idx_agendamento_data ON agendamento(data);
