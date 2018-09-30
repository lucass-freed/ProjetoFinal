DROP DATABASE IF EXISTS projeto_final_banco;
CREATE DATABASE IF NOT EXISTS projeto_final_banco CHARACTER SET utf8 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT COLLATE utf8_general_ci;
USE projeto_final_banco;

CREATE TABLE funcoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    setor VARCHAR(100) NOT NULL,
    tipo VARCHAR(7) NOT NULL,
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
    sistema VARCHAR(100),
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
    cpf VARCHAR(20) NOT NULL,
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
    idTicket INT NOT NULL,
    FOREIGN KEY (idTicket) references tickets(id),
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
	id_usuario INT NOT NULL,
	FOREIGN KEY (id_usuario) references usuarios(id),
    id_ticket_sazonalidade INT,
    FOREIGN KEY (id_ticket_sazonalidade) references tickets_sazonalidade(id),
    id_funcao_movimentacao INT,
    FOREIGN KEY (id_funcao_movimentacao) references funcoes(id),
    titulo VARCHAR (150) NOT NULL,	
    criticidade VARCHAR (50),
    situacao VARCHAR (100),
    descricao TEXT,
    dataAbertura TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    dataEncerramento DATE,
    procedimentoResolucao TEXT
);

CREATE TABLE tags(
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR (100),
    criticidade VARCHAR (50)
) CHARACTER SET utf8 COLLATE utf8_general_ci;

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
"2019-03-01"),
("41198708000186",
"Gustavo e Amanda Consultoria Financeira ME",
"Investimentos Avanço 777",
"96007572713",
"orcamento@veraegiraltda.com.br",
"66998127194",
"Travessa Santa Isa",
"809",
"Sala 4",
"Conjunto Habitacional Cidade de Deus",
"78734206",
"Rondonópolis",
"MT",
"FinInvest",
"2011-02-24",
"2019-12-05",
"2019-09-28");

INSERT INTO tags (titulo, criticidade) values
("Banco de Dados", "BAIXA"),
("Periféricos", "MEDIA"),
("Comercial", "ALTA"),
("Dúvida", "BAIXA"),
("Operacional", "ALTISSIMA"),
("Rede e Internet", "BAIXA"),
("Cadastral", "MEDIA");


INSERT INTO funcoes (nome, setor, tipo) VALUES 
("Estagiário", "Suporte", "Interna");


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
(1, 1, 'gabriel', '3C9909AFEC25354D551DAE21590BB26E38D53F2173B8D3DC3EEE4C047E7AB1C1EB8B85103E3BE7BA613B31BB5C9C36214DC9F14A42FD7A2FDB84856BCA5C44C2', 'Gabriel Ferreira', '15469532184', '1994-06-04', '(47) 997036820', 'gabrielferreira@hotmail.com', true);

INSERT INTO tickets (idEmpresa, id_usuario, titulo, criticidade, situacao, descricao, dataAbertura, dataEncerramento) VALUES 
("2", 3, "Probleminha", "BAIXA", "Concluído","Não consigo encontrar o relatório de vendas do dia 25, alguém me ajuda por favor","2018-09-01", "2018-09-05")
;

INSERT INTO tickets (idEmpresa, id_usuario, titulo, criticidade, situacao, descricao, dataAbertura) VALUES 
("1", 2, "Problemão urgente", "ALTISSIMA", "Aberto","Está aparecendo a mensagem 'Impossível conectar ao banco de dados'. Não conseguimos entrar no sistema", "2018-05-24")
;

INSERT INTO tickets (idEmpresa, id_usuario, titulo, criticidade, situacao, descricao, dataAbertura) VALUES 
("3", 1, "Problema Top", "MEDIA", "Em Andamento","Não consigo enviar mensagens pros meus clientes.", "2018-06-12")
;

INSERT INTO tickets (idEmpresa, id_usuario, titulo, criticidade, situacao, descricao, dataAbertura) VALUES 
("3", 1, "Problema Top 2", "ALTA", "Aberto","Não consigo enviar mensagens pros meus clientes.", "2018-06-12")
;

INSERT INTO ticket_tags (idTickets, idTags) values
("1", "4"),
("1", "5"),
("2", "1"),
("2", "6")
;
