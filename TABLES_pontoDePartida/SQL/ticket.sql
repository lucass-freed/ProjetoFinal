

CREATE TABLE ticket(
	id INT AUTO_INCREMENT PRIMARY KEY,
	id_empresa INT NOT NULL,
	FOREIGN KEY (id_empresa) references empresa (id),
	id_criticidade INT NOT NULL,
	FOREIGN KEY (id_colaborador) references colaborador (id),
	id_ticket_sazonalidade INT NOT NULL,
	FOREIGN KEY (id_ticket_sazonalidade) references ticket_sazonalidade (id),
	situacao VARCHAR (100),
	titulo VARCHAR (150),
	data_abertura DATE NOT NULL,
	sistema_operacional VARCHAR (50),
	versao_banco VARCHAR (10),
	descricao TEXT,
	data_encerramento DATE NOT NULL,
	procedimento_resolucao TEXT
);