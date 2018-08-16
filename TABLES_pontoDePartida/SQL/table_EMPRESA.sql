CREATE TABLE empresa(

	id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	cnpj VARCHAR(20) NOT NULL,
	razao_social VARCHAR(200) NOT NULL,
	nome_fantasia VARCHAR(200) NOT NULL,
	inscricao_estadual VARCHAR(30) NOT NULL,
	email VARCHAR(100) NOT NULL,
	telefone VARCHAR(50) NOT NULL,
	rua VARCHAR(100) NOT NULL,
	numero VARCHAR(20) NOT NULL,
	complemento VARCHAR(50) NOT NULL,
	bairro VARCHAR(100) NOT NULL,
	cep VARCHAR(50) NOT NULL,
	cidade VARCHAR(100) NOT NULL,
	uf VARCHAR(2) NOT NULL,
	data_ativacao DATE NOT NULL,
	data_expiracao DATE NOT NULL,
	validade_certificado DATE NOT NULL);
	