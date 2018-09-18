DROP DATABASE IF EXISTS projeto_final_banco;
CREATE DATABASE IF NOT EXISTS projeto_final_banco;
USE projeto_final_banco;

CREATE TABLE funcoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    setor VARCHAR(100) NOT NULL,
    descricao TEXT
);

CREATE TABLE colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_funcao INT NOT NULL,
    usuario VARCHAR(50) NOT NULL,
    senha VARCHAR(150) NOT NULL,
    nome VARCHAR(200) NOT NULL,
    cpf VARCHAR(20) NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    logradouro VARCHAR(100) NOT NULL,
    numero VARCHAR(30) NOT NULL,
    complemento VARCHAR(50) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cep VARCHAR(20) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    uf VARCHAR(20) NOT NULL,
    data_admissao DATE NOT NULL,
    ctps VARCHAR(100) NOT NULL,
    pis VARCHAR(100) NOT NULL,
    usuario_master BOOLEAN,
    FOREIGN KEY(id_funcao) REFERENCES funcoes(id)
);


CREATE TABLE empresas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cnpj VARCHAR(20) NOT NULL,
    razaoSocial VARCHAR(200) NOT NULL,
    nomeFantasia VARCHAR(200) NOT NULL,
    inscricaoEstadual VARCHAR(30) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(50) NOT NULL,
    logradouro VARCHAR(100) NOT NULL,
    numero VARCHAR(20) NOT NULL,
    complemento VARCHAR(50) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    cep VARCHAR(50) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    uf VARCHAR(2) NOT NULL,
    sistema VARCHAR(100) NOT NULL,
    dataAtivacao DATE NOT NULL,
    dataExpiracao DATE NOT NULL,
    validadeCertificado DATE
);

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_empresa INT NOT NULL,
    id_funcao INT NOT NULL,
    usuario VARCHAR(100) NOT NULL,
    senha VARCHAR(150) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    usuario_master BOOLEAN,
    FOREIGN KEY(id_empresa) REFERENCES empresas(id),
    FOREIGN KEY (id_funcao) REFERENCES funcoes(id)
);

CREATE TABLE tickets_criticidade (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR (50),
    prazo VARCHAR (20)
);

CREATE TABLE tickets_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idColaborador INT NOT NULL,
    FOREIGN KEY (idColaborador) references colaboradores(id),
    dataHoraMvto TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    observacao TEXT
);

CREATE TABLE tickets_sazonalidade (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sazonalidade VARCHAR (150)
);

CREATE TABLE tickets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idEmpresa INT NOT NULL,
    FOREIGN KEY (idEmpresa) references empresas(id),
    id_colaborador INT,
    FOREIGN KEY (id_colaborador) references colaboradores(id),
    id_ticket_sazonalidade INT,
    FOREIGN KEY (id_ticket_sazonalidade) references tickets_sazonalidade(id),
    titulo VARCHAR (150),	
    criticidade VARCHAR (50),
    situacao VARCHAR (100),
    descricao TEXT,
    sistemaOperacional VARCHAR (50),
    versaoBanco VARCHAR (10),
    dataAbertura TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    dataEncerramento DATE,
    procedimentoResolucao TEXT
);

CREATE TABLE tags(
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR (100)
);

CREATE TABLE ticket_tags(
    idTickets INT NOT NULL,
    FOREIGN KEY (idTickets) REFERENCES tickets(id),
    idTags INT NOT NULL,
    FOREIGN KEY (idTags) REFERENCES tags(id)
);

INSERT INTO empresas (cnpj, razaoSocial, nomeFantasia, inscricaoEstadual, email, telefone, 
	logradouro, numero, complemento, bairro, cep, cidade, uf, sistema, dataAtivacao, dataExpiracao, 
	validadeCertificado) VALUES
("50525544000145",
"Laís Associados Ltda",
"Alfa Corretora",
"601497732",
"posvenda@ltda.com.br",
"4828208738",
"Rua Graça Aranha",
"423",
"Apto 12",
"Pio Corrêa",
"88811575",
"Criciúma",
"SC",
"SafeCorporate",
"2013-08-31",
"2019-01-08",
"2018-11-20"),
("35392425000178",
"Miguel Ltda",
"Gueto RapBox",
"689.707.177",
"fabricacao@ltda.com.br",
"1129371397",
"Nestor Pestana",
"777",
"Casa",
"República",
"01303010",
"São Paulo",
"SP",
"SellerNight",
"2018-05-24",
"2019-05-24",
"2019-03-01");

INSERT INTO tags (titulo) values
("Banco de Dados"),
("Periféricos"),
("Comercial"),
("Dúvida"),
("Operacional"),
("Rede e Internet"),
("Cadastral");


INSERT INTO funcoes (nome, setor) VALUES 
("Estagiário", "Suporte");


INSERT INTO colaboradores (id_funcao, usuario, senha, nome, cpf, data_nascimento, telefone, email, logradouro, numero, complemento, bairro, cep, cidade, uf, 
data_admissao, ctps, pis, usuario_master) VALUES 
(1, 'thiago', '3C9909AFEC25354D551DAE21590BB26E38D53F2173B8D3DC3EEE4C047E7AB1C1EB8B85103E3BE7BA613B31BB5C9C36214DC9F14A42FD7A2FDB84856BCA5C44C2', 'Thiago Oliveira', '154.695.321-84', '1994-06-04', '(47) 997036820', 'godinho@gmail.com', 
'23423432423', '10', 'Casa', 'Bela Vista', '515346', 'Blumenau', 'SC', '1994-06-12', 'adsadasdsa', 'sadasdas', false),
(1, 'mica', '3C9909AFEC25354D551DAE21590BB26E38D53F2173B8D3DC3EEE4C047E7AB1C1EB8B85103E3BE7BA613B31BB5C9C36214DC9F14A42FD7A2FDB84856BCA5C44C2', 'Lucas Rodrigo', '154.695.321-84', '1994-06-04', '(47) 997036820', 'lucassfreed@hotmail.com', 
'23423432423', '10', 'Casa', 'Bela Vista', '515346', 'Blumenau', 'SC', '1994-06-12', 'adsadasdsa', 'sadasdas', true),
(1, 'matheus', '3C9909AFEC25354D551DAE21590BB26E38D53F2173B8D3DC3EEE4C047E7AB1C1EB8B85103E3BE7BA613B31BB5C9C36214DC9F14A42FD7A2FDB84856BCA5C44C2', 'Gabriel Ferreira', '154.695.321-84', '1994-06-04', '(47) 997036820', 'gabrielferreira@hotmail.com',
'23423432423', '10', 'Casa', 'Bela Vista', '515346', 'Blumenau', 'SC', '1994-06-12', 'adsadasdsa', 'sadasdas', true);

INSERT INTO usuarios (id_empresa, id_funcao, usuario, senha, nome, cpf, data_nascimento, telefone, email, usuario_master) VALUES 
(1, 1, 'francisco', '3C9909AFEC25354D551DAE21590BB26E38D53F2173B8D3DC3EEE4C047E7AB1C1EB8B85103E3BE7BA613B31BB5C9C36214DC9F14A42FD7A2FDB84856BCA5C44C2', 'Francisco Sens', '15469532184', '1994-06-04', '(47) 997036820', 'godinho@gmail.com', false),
(1, 1, 'lucas', '3C9909AFEC25354D551DAE21590BB26E38D53F2173B8D3DC3EEE4C047E7AB1C1EB8B85103E3BE7BA613B31BB5C9C36214DC9F14A42FD7A2FDB84856BCA5C44C2', 'Lucas Rodrigo', '15469532184', '1994-06-04', '(47) 997036820', 'lucassfreed@hotmail.com', true),
(1, 1, 'gabriel', '3C9909AFEC25354D551DAE21590BB26E38D53F2173B8D3DC3EEE4C047E7AB1C1EB8B85103E3BE7BA613B31BB5C9C36214DC9F14A42FD7A2FDB84856BCA5C44C2m', 'Gabriel Ferreira', '15469532184', '1994-06-04', '(47) 997036820', 'gabrielferreira@hotmail.com', true);

INSERT INTO tickets (idEmpresa, titulo, criticidade, situacao, descricao,
sistemaOperacional, versaoBanco, dataAbertura, dataEncerramento) VALUES 
("2","Probleminha", "Baixa", "Concluído","Não consigo encontrar o relatório de vendas do dia 25, alguém me ajuda por favor", "Win10", "9.4","2018-09-01", "2018-09-05")
;

INSERT INTO tickets (idEmpresa, titulo, criticidade, situacao, descricao,
sistemaOperacional, versaoBanco, dataAbertura, dataEncerramento) VALUES 
("1","Problemão urgente", "Altíssima", "Aberto","Está aparecendo a mensagem 'Impossível conectar ao banco de dados'. Não conseguimos entrar no sistema", "Windows 7", "9.2", "2018-09-01", "2018-09-05")
;

INSERT INTO tickets (idEmpresa, titulo, criticidade, situacao, descricao,
sistemaOperacional, versaoBanco, dataAbertura, dataEncerramento) VALUES 
("1","Problemão urgente", "Altíssima", "Pendente","Está aparecendo a mensagem 'Impossível conectar ao banco de dados'. Não conseguimos entrar no sistema", "Windows 7", "9.2", "2018-09-01", "2018-09-05")
;

INSERT INTO ticket_tags (idTickets, idTags) values
("1", "4"),
("1", "5"),
("2", "1"),
("2", "6")
;
