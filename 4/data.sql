-- Inserir dados de teste

-- Estados
INSERT INTO Estados (nome, sigla) VALUES ('Acre', 'AC');
INSERT INTO Estados (nome, sigla) VALUES ('Alagoas', 'AL');
INSERT INTO Estados (nome, sigla) VALUES ('Amapá', 'AP');
INSERT INTO Estados (nome, sigla) VALUES ('Amazonas', 'AM');
INSERT INTO Estados (nome, sigla) VALUES ('Bahia', 'BA');
INSERT INTO Estados (nome, sigla) VALUES ('Ceará', 'CE');
INSERT INTO Estados (nome, sigla) VALUES ('Distrito Federal', 'DF');
INSERT INTO Estados (nome, sigla) VALUES ('Espírito Santo', 'ES');
INSERT INTO Estados (nome, sigla) VALUES ('Goiás', 'GO');
INSERT INTO Estados (nome, sigla) VALUES ('Maranhão', 'MA');
INSERT INTO Estados (nome, sigla) VALUES ('Mato Grosso', 'MT');
INSERT INTO Estados (nome, sigla) VALUES ('Mato Grosso do Sul', 'MS');
INSERT INTO Estados (nome, sigla) VALUES ('Minas Gerais', 'MG');
INSERT INTO Estados (nome, sigla) VALUES ('Pará', 'PA');
INSERT INTO Estados (nome, sigla) VALUES ('Paraíba', 'PB');
INSERT INTO Estados (nome, sigla) VALUES ('Paraná', 'PR');
INSERT INTO Estados (nome, sigla) VALUES ('Pernambuco', 'PE');
INSERT INTO Estados (nome, sigla) VALUES ('Piauí', 'PI');
INSERT INTO Estados (nome, sigla) VALUES ('Rio de Janeiro', 'RJ');
INSERT INTO Estados (nome, sigla) VALUES ('Rio Grande do Norte', 'RN');
INSERT INTO Estados (nome, sigla) VALUES ('Rio Grande do Sul', 'RS');
INSERT INTO Estados (nome, sigla) VALUES ('Rondônia', 'RO');
INSERT INTO Estados (nome, sigla) VALUES ('Roraima', 'RR');
INSERT INTO Estados (nome, sigla) VALUES ('Santa Catarina', 'SC');
INSERT INTO Estados (nome, sigla) VALUES ('São Paulo', 'SP');
INSERT INTO Estados (nome, sigla) VALUES ('Sergipe', 'SE');
INSERT INTO Estados (nome, sigla) VALUES ('Tocantins', 'TO');

-- Tipos de Telefone
INSERT INTO Tipos_Telefone (descricao) VALUES ('Comercial');
INSERT INTO Tipos_Telefone (descricao) VALUES ('Residencial');
INSERT INTO Tipos_Telefone (descricao) VALUES ('Celular');

-- Clientes
INSERT INTO Clientes (razao_social, estado_id) VALUES ('Empresa A', 25); -- SP
INSERT INTO Clientes (razao_social, estado_id) VALUES ('Empresa B', 25); -- SP
INSERT INTO Clientes (razao_social, estado_id) VALUES ('Empresa C', 19); -- RJ

-- Telefones
INSERT INTO Telefones (cliente_id, tipo_id, numero) VALUES (1, 1, '11-1234-5678'); -- Empresa A, Comercial
INSERT INTO Telefones (cliente_id, tipo_id, numero) VALUES (1, 3, '11-9876-5432'); -- Empresa A, Celular
INSERT INTO Telefones (cliente_id, tipo_id, numero) VALUES (2, 2, '11-5555-6666'); -- Empresa B, Residencial
INSERT INTO Telefones (cliente_id, tipo_id, numero) VALUES (3, 1, '21-1111-2222'); -- Empresa C, Comercial