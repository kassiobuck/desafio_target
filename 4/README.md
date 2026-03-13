# Configuração de Banco de Dados SQLite com Docker

Este projeto configura um banco de dados SQLite para um sistema de cadastro de clientes, popula-o com dados de exemplo e executa uma consulta para recuperar clientes de São Paulo com seus números de telefone.

## Pré-requisitos

- Docker Desktop instalado e em execução no seu sistema.

## Arquivos

- `image.png` : Diagrama Entidade-Relacionamento. 
- `schema.sql`: Esquema do banco de dados com tabelas para estados, tipos de telefone, clientes e telefones.
- `data.sql`: Inserções de dados de exemplo para o banco de dados.
- `query.sql`: Consulta para selecionar clientes de São Paulo (SP) com seus números de telefone.
- `Dockerfile`: Configuração do Docker para construir a imagem e executar a configuração.

## Como Executar

1. **Construir a imagem Docker**:
   ```
   docker build -t mydb .
   ```

2. **Executar o contêiner**:
   ```
   docker run mydb
   ```

O contêiner irá exibir os resultados da consulta diretamente no terminal:

```
codigo_cliente|razao_social|telefone|tipo_telefone
1|Empresa A|11-1234-5678|Comercial
1|Empresa A|11-9876-5432|Celular
2|Empresa B|11-5555-6666|Residencial
```

## O Que Faz

- Cria um banco de dados SQLite (`database.db`) usando o esquema.
- Insere dados de exemplo para estados brasileiros, tipos de telefone, clientes e telefones.
- Executa uma consulta para encontrar todos os clientes em São Paulo e seus números de telefone associados.
- Imprime os resultados em formato tabular.