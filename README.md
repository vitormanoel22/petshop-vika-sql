# Petshop Vika — Scripts SQL

Este repositório contém scripts SQL para criar e popular um banco de dados relacional do projeto **Petshop Vika** (exemplo para avaliação da disciplina).

## Estrutura dos arquivos
- `schema.sql` — Criação das tabelas (modelo lógico final). PostgreSQL.
- `inserts.sql` — Comandos `INSERT` para popular as tabelas principais com dados de exemplo.
- `selects.sql` — Consultas `SELECT` de exemplo (joins, group by, order by, limit).
- `updates_deletes.sql` — Exemplos de `UPDATE` e `DELETE` com condições.
- `README.md` — Este arquivo com instruções.

## Como executar (PostgreSQL)
1. Crie um banco (ex: `petshop_vika`) e conecte-se a ele.
2. Execute o script de schema:
   ```
   psql -U seu_usuario -d petshop_vika -f schema.sql
   ```
3. Execute os inserts:
   ```
   psql -U seu_usuario -d petshop_vika -f inserts.sql
   ```
4. Execute as consultas:
   ```
   psql -U seu_usuario -d petshop_vika -f selects.sql
   ```
5. Execute os updates/deletes conforme necessário:
   ```
   psql -U seu_usuario -d petshop_vika -f updates_deletes.sql
   ```

## Recomendação de ferramentas
- PgAdmin / psql / DBeaver para PostgreSQL.
- Se usar MySQL, adapte tipos e sintaxe (ex.: `SERIAL`).
- Mantenha versão dos scripts em GitHub e inclua um `README` com instruções.

## Observações
- As constraints (FK) têm regras de remoção para preservar integridade.
- Ajuste permissões de acesso, usuários e backups conforme políticas da sua instituição.
