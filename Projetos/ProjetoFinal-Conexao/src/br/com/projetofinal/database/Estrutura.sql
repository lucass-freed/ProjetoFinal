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
	numero TINYINT NOT NULL,
	complemento VARCHAR(50) NOT NULL,
	bairro VARCHAR(50) NOT NULL,
	cep VARCHAR(20) NOT NULL,
	cidade VARCHAR(50) NOT NULL,
	uf VARCHAR(20) NOT NULL,
	data_admissao DATE NOT NULL,
	ctps VARCHAR(100) NOT NULL,
	pis VARCHAR(100) NOT NULL,
	FOREIGN KEY(id_funcao) REFERENCES funcoes(id)
);



CREATE TABLE empresas (
	id INT AUTO_INCREMENT PRIMARY KEY,
	cnpj VARCHAR(20) NOT NULL,
	razao_social VARCHAR(200) NOT NULL,
	nome_fantasia VARCHAR(200) NOT NULL,
	inscricao_estadual VARCHAR(30) NOT NULL,
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
	data_ativacao DATE NOT NULL,
	data_expiracao DATE NOT NULL,
	validade_certificado DATE
);

CREATE TABLE usuarios (
       id INT AUTO_INCREMENT PRIMARY KEY,
       /*id_empresa INT NOT NULL,
       id_funcao INT NOT NULL,*/
       id_empresa INT,
       id_funcao INT,
       usuario VARCHAR(100) NOT NULL,
       senha VARCHAR(150) NOT NULL,
      /* nome VARCHAR(100) NOT NULL,
       cpf VARCHAR(11) NOT NULL,
       data_nascimento DATE NOT NULL,
       telefone VARCHAR(14) NOT NULL,
       email VARCHAR(100) NOT NULL,
       usuario_master BOOLEAN,*/
		nome VARCHAR(100) NOT NULL,
       cpf VARCHAR(11) NOT NULL,
       data_nascimento DATE NOT NULL,
       telefone VARCHAR(14) NOT NULL,
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
	data_hora_mvto TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	observacao TEXT
);

CREATE TABLE tickets_sazonalidade (
	id INT AUTO_INCREMENT PRIMARY KEY,
	sazonalidade VARCHAR (150)
);

CREATE TABLE tickets (
	id INT AUTO_INCREMENT PRIMARY KEY,
	/*id_empresa INT NOT NULL,
	FOREIGN KEY (id_empresa) references empresas(id),
	id_colaborador INT NOT NULL,
	FOREIGN KEY (id_colaborador) references colaboradores(id),
	id_ticket_sazonalidade INT NOT NULL,
	FOREIGN KEY (id_ticket_sazonalidade) references tickets_sazonalidade(id),
	*/situacao VARCHAR (100),
	titulo VARCHAR (150)/*,
	data_abertura TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	sistema_operacional VARCHAR (50),
	versao_banco VARCHAR (10),
	descricao TEXT,
	data_encerramento DATE,
	procedimento_resolucao TEXT NOT NULL*/
);

CREATE TABLE tags(
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR (100)
);

CREATE TABLE ticket_tags(
	id_tickets INT NOT NULL,
	FOREIGN KEY (id_tickets) REFERENCES tickets(id),
	id_tags INT NOT NULL,
	FOREIGN KEY (id_tags) REFERENCES tags(id)
);

INSERT INTO tickets (titulo, situacao) VALUES 
("Probleminha", "Concluído"),
("Problemão urgente", "Aberto")
;

INSERT INTO empresas (cnpj, razao_social, nome_fantasia, inscricao_estadual, email, telefone, 
	logradouro, numero, complemento, bairro, cep, cidade, uf, sistema, data_ativacao, data_expiracao, 
	validade_certificado) VALUES
("50525544000145",
"Laís e Alessandra Corretores Associados Ltda",
"Alfa Corretora",
"601497732",
"posvenda@laisealessandracorretoresassociadosltda.com.br",
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
"Miguel e Cauê Casa Noturna Ltda",
"Gueto RapBox",
"689.707.177",
"fabricacao@miguelecauecasanoturnaltda.com.br",
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

INSERT INTO funcoes (nome, setor) VALUES 
("Estagiário", "Suporte");

INSERT INTO usuarios (usuario, email, senha, data_nascimento) VALUES 
('francisco','godinho@gmail.com', '123', '1994-06-04');