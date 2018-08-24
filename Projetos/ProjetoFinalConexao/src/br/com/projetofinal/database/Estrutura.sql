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
	data_ativacao DATE NOT NULL,
	data_expiracao DATE NOT NULL,
	validade_certificado DATE NOT NULL
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
       telefone VARCHAR(14) NOT NULL,
       email VARCHAR(100) NOT NULL,
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
	data_hora_mvto TIMESTAMP,
	observacao TEXT
);

CREATE TABLE tickets_sazonalidade (
	id INT AUTO_INCREMENT PRIMARY KEY,
	sazonalidade VARCHAR (150)
);

CREATE TABLE tickets (
	id INT AUTO_INCREMENT PRIMARY KEY,
	id_empresa INT NOT NULL,
	FOREIGN KEY (id_empresa) references empresas(id),
	id_colaborador INT NOT NULL,
	FOREIGN KEY (id_colaborador) references colaboradores(id),
	id_ticket_sazonalidade INT NOT NULL,
	FOREIGN KEY (id_ticket_sazonalidade) references tickets_sazonalidade(id),
	situacao VARCHAR (100),
	titulo VARCHAR (150),
	data_abertura DATE NOT NULL,
	sistema_operacional VARCHAR (50),
	versao_banco VARCHAR (10),
	descricao TEXT,
	data_encerramento DATE NOT NULL,
	procedimento_resolucao TEXT NOT NULL
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

