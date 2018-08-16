CREATE TABLE usuario(
       id INT AUTO_INCREMENT PRIMARY KEY,
       id_empresa INT NOT NULL,
	   FOREIGN KEY(id_empresa) REFERENCES empresa(id),
       id_usuario_funcao INT NOT NULL,
       FOREIGN KEY (id_usuario_funcao) REFERENCES usuario_funcao(id),
       usuario VARCHAR(100),
       senha VARCHAR(30),
       nome VARCHAR(100),
       cpf VARCHAR(11),
       data_nascimento DATE,
       telefone VARCHAR(14),
       email VARCHAR(100)
);

