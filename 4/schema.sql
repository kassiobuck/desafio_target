-- Modelo Lógico do Banco de Dados para Cadastro de Clientes

-- Tabela Estados: Armazena os estados brasileiros
CREATE TABLE Estados (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    sigla TEXT NOT NULL UNIQUE
);

-- Tabela Tipos_Telefone: Armazena os tipos de telefone
CREATE TABLE Tipos_Telefone (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    descricao TEXT NOT NULL UNIQUE
);

-- Tabela Clientes: Armazena os clientes
CREATE TABLE Clientes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    razao_social TEXT NOT NULL,
    estado_id INTEGER,
    FOREIGN KEY (estado_id) REFERENCES Estados(id)
);

-- Tabela Telefones: Armazena os telefones dos clientes
CREATE TABLE Telefones (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    cliente_id INTEGER,
    tipo_id INTEGER,
    numero TEXT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id),
    FOREIGN KEY (tipo_id) REFERENCES Tipos_Telefone(id)
);