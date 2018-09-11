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
	data_hora_mvto TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	observacao TEXT
);

CREATE TABLE tickets_sazonalidade (
	id INT AUTO_INCREMENT PRIMARY KEY,
	sazonalidade VARCHAR (150)
);

CREATE TABLE tickets (
	id INT AUTO_INCREMENT PRIMARY KEY,
	idEmpresa INT /*NOT NULL*/,
	/*FOREIGN KEY (idEmpresa) references empresas(id),
	/*id_colaborador INT NOT NULL,
	FOREIGN KEY (id_colaborador) references colaboradores(id),
	id_ticket_sazonalidade INT NOT NULL,
	FOREIGN KEY (id_ticket_sazonalidade) references tickets_sazonalidade(id),
	*/
	titulo VARCHAR (150),	
	criticidade VARCHAR (50),
	situacao VARCHAR (100),
	descricao TEXT	/*,
	dataAbertura TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	sistema_operacional VARCHAR (50),
	versaoBanco VARCHAR (10),
	dataEncerramento DATE,
	procedimentoResolucao TEXT NOT NULL*/
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
(1, 'thiago', '123', 'Thiago Oliveira', '154.695.321-84', '1994-06-04', '(47) 997036820', 'godinho@gmail.com', 
'23423432423', '10', 'Casa', 'Bela Vista', '515346', 'Blumenau', 'SC', '1994-06-12', 'adsadasdsa', 'sadasdas', false),
(1, 'mica', '123', 'Lucas Rodrigo', '154.695.321-84', '1994-06-04', '(47) 997036820', 'lucassfreed@hotmail.com', 
'23423432423', '10', 'Casa', 'Bela Vista', '515346', 'Blumenau', 'SC', '1994-06-12', 'adsadasdsa', 'sadasdas', true),
(1, 'matheus', '123', 'Gabriel Ferreira', '154.695.321-84', '1994-06-04', '(47) 997036820', 'gabrielferreira@hotmail.com',
'23423432423', '10', 'Casa', 'Bela Vista', '515346', 'Blumenau', 'SC', '1994-06-12', 'adsadasdsa', 'sadasdas', true);

INSERT INTO usuarios (id_empresa, id_funcao, usuario, senha, nome, cpf, data_nascimento, telefone, email, usuario_master) VALUES 
(1, 1, 'francisco', '123', 'Francisco Sens', '15469532184', '1994-06-04', '(47) 997036820', 'godinho@gmail.com', false),
(1, 1, 'lucas', '123', 'Lucas Rodrigo', '15469532184', '1994-06-04', '(47) 997036820', 'lucassfreed@hotmail.com', true),
(1, 1, 'gabriel', '123', 'Gabriel Ferreira', '15469532184', '1994-06-04', '(47) 997036820', 'gabrielferreira@hotmail.com', true);

INSERT INTO tickets (titulo, criticidade, situacao, descricao) VALUES 
("Probleminha", "Baixa", "Concluído","Não consigo encontrar o relatório de vendas do dia 25, alguém me ajuda por favor"),
("Problemão urgente", "Altíssima", "Aberto","Está aparecendo a mensagem 'Impossível conectar ao banco de dados'. Não conseguimos entrar no sistema")
;

INSERT INTO ticket_tags (idTickets, idTags) values
("1", "4"),
("1", "5"),
("2", "1"),
("2", "6")
;
