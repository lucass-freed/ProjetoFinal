DROP DATABASE IF EXISTS projeto_final_banco;
CREATE DATABASE IF NOT EXISTS projeto_final_banco;
USE projeto_final_banco;

CREATE TABLE funcoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    setor VARCHAR(100) NOT NULL,
    tipo VARCHAR(7) NOT NULL,
    descricao TEXT,
    excluido BOOLEAN DEFAULT FALSE
);

CREATE TABLE colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_funcao INT,
    FOREIGN KEY(id_funcao) REFERENCES funcoes(id) ON UPDATE CASCADE,
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
    excluido BOOLEAN DEFAULT FALSE
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
    validadeCertificado DATE,
    excluido BOOLEAN DEFAULT FALSE
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
    FOREIGN KEY(id_empresa) REFERENCES empresas(id) ON UPDATE CASCADE,
    FOREIGN KEY (id_funcao) REFERENCES funcoes(id) ON UPDATE CASCADE,
    excluido BOOLEAN DEFAULT FALSE
);

CREATE TABLE tickets_criticidade (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR (50),
    prazo VARCHAR (20)
);

CREATE TABLE tickets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idEmpresa INT NOT NULL,
    FOREIGN KEY (idEmpresa) references empresas(id) ON UPDATE CASCADE,
    id_colaborador INT,
    FOREIGN KEY (id_colaborador) references colaboradores(id) ON UPDATE CASCADE,
	id_usuario INT NOT NULL,
	FOREIGN KEY (id_usuario) references usuarios(id) ON UPDATE CASCADE,
    sazonalidade VARCHAR(200),
    id_funcao_movimentacao INT,
    FOREIGN KEY (id_funcao_movimentacao) references funcoes(id) ON UPDATE CASCADE,
    titulo VARCHAR (150) NOT NULL,	
    criticidade VARCHAR (50),
    situacao VARCHAR (100),
    descricao TEXT,
    dataAbertura DATETIME DEFAULT CURRENT_TIMESTAMP,
    dataEncerramento DATETIME,
    procedimentoResolucao TEXT,
    excluido BOOLEAN DEFAULT FALSE
);

CREATE TABLE tickets_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idTicket INT NOT NULL,
    FOREIGN KEY (idTicket) references tickets(id) ON UPDATE CASCADE,
    idColaborador INT,
    FOREIGN KEY (idColaborador) references colaboradores(id) ON UPDATE CASCADE,
    idFuncao INT,
    FOREIGN KEY (idFuncao) references funcoes(id) ON UPDATE CASCADE,
    dataHoraMvto DATETIME DEFAULT CURRENT_TIMESTAMP, 
    observacao TEXT
);


CREATE TABLE tags(
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR (100),
    criticidade VARCHAR (50),
    excluido BOOLEAN DEFAULT FALSE
);

CREATE TABLE ticket_tags(
    idTickets INT NOT NULL,
    FOREIGN KEY (idTickets) REFERENCES tickets(id) ON UPDATE CASCADE,
    idTags INT NOT NULL,
    FOREIGN KEY (idTags) REFERENCES tags(id) ON UPDATE CASCADE
);

INSERT INTO empresas (cnpj, razaoSocial, nomeFantasia, inscricaoEstadual, email, telefone, 
	logradouro, numero, complemento, bairro, cep, cidade, uf, sistema, dataAtivacao, dataExpiracao, 
	validadeCertificado) VALUES
('50.525.544/0001-45',
'Laís Associados Ltda',
'Alfa Corretora',
'601.497.732.954',
'posvenda@ltda.com.br',
'4828208738',
'Rua Graça Aranha',
'423',
'Apto 12',
'Pio Corrêa',
'88811575',
'Criciúma',
'SC',
'SafeCorporate',
'2018-09-01',
'2019-01-08',
'2018-11-20'),

('35.392.425/0001-78',
'Miguel Ltda',
'Gueto RapBox',
'689.707.177.621',
'fabricacao@ltda.com.br',
'1129371397',
'Nestor Pestana',
'777',
'Casa',
'República',
'01303010',
'São Paulo',
'SP',
'SellerNight',
'2018-05-24',
'2019-05-24',
'2019-03-01'),

('41.198.708/0001-86',
'Gustavo e Amanda Consultoria Financeira ME',
'Investimentos Avanço 777',
'960.075.727.514',
'orcamento@veraegiraltda.com.br',
'66998127194',
'Travessa Santa Isa',
'809',
'Sala 4',
'Conjunto Habitacional Cidade de Deus',
'78734206',
'Rondonópolis',
'MT',
'FinInvest',
'2011-02-24',
'2019-12-05',
'2019-09-28'),

('66.736.480/0001-61',
'Nina e Clara Ferragens Ltda',
'EcoFriend Reciclo de Ferragens',
'411.416.944.816',
'financeiro@ninaeclaraferragensltda.com.br',
'1238887665',
'Parque São Cristóvão',
'104',
'Sala 1',
'Parque São Cristóvão',
'12053030',
'Taubaté',
'SP',
'E-Stock',
'2013-03-27',
'2025-02-21',
'2020-01-30'),

('05.041.763/0001-02',
'Heloise e Yago Informática Ltda',
'Recayd Serviços de Implantação de Sistemas',
'544.462.858.981',
'producao@heloiseeyagoinformaticaltda.com.br',
'1626167300',
'Praça Wladimir Meirelles Ferreira',
'678',
'Conjunto 2',
'Bosque das Juritis',
'14021683',
'Ribeirão Preto',
'SP',
'Shark Link',
'2018-09-01',
'2020-09-01',
'2019-11-25');

INSERT INTO tags (titulo, criticidade) values
('Banco de Dados', 'ALTISSIMA'),
('Periféricos', 'MEDIA'),
('Comercial', 'ALTA'),
('Dúvida', 'BAIXA'),
('Operacional', 'MEDIA'),
('Rede e Internet', 'BAIXA'),
('Cadastral', 'MEDIA'),
('Fiscal', 'ALTA'),
('Financeiro', 'ALTA');


INSERT INTO funcoes (nome, setor, tipo) VALUES 
('Estagiário', 'Suporte', 'Interna'),
('Desenvolvedor', 'Desenvolvimento', 'Interna'),
('Gerente', 'Suporte', 'Interna'),
('DBA', 'Desenvolvimento', 'Interna'),
('Analista Júnior', 'Suporte', 'Interna'),
('Analista Pleno', 'Suporte', 'Interna');


INSERT INTO colaboradores (id_funcao, usuario, senha, nome, cpf, data_nascimento, telefone, email, logradouro, numero, complemento, bairro, cep, cidade, uf, 
data_admissao, ctps, pis, usuario_master) VALUES 
(1, 'thiago', '3C9909AFEC25354D551DAE21590BB26E38D53F2173B8D3DC3EEE4C047E7AB1C1EB8B85103E3BE7BA613B31BB5C9C36214DC9F14A42FD7A2FDB84856BCA5C44C2', 'Thiago Oliveira', '154.695.321-84', '1994-06-04', '(47) 997036820', 'godinho@gmail.com', 
'23423432423', '10', 'Casa', 'Bela Vista', '515346', 'Blumenau', 'SC', '1994-06-12', 'adsadasdsa', 'sadasdas', false),
(5, 'mica', '3C9909AFEC25354D551DAE21590BB26E38D53F2173B8D3DC3EEE4C047E7AB1C1EB8B85103E3BE7BA613B31BB5C9C36214DC9F14A42FD7A2FDB84856BCA5C44C2', 'Lucas Rodrigo', '154.695.321-84', '1994-06-04', '(47) 997036820', 'lucassfreed@hotmail.com', 
'23423432423', '10', 'Casa', 'Bela Vista', '515346', 'Blumenau', 'SC', '1994-06-12', 'adsadasdsa', 'sadasdas', true),
(3, 'matheus', '3C9909AFEC25354D551DAE21590BB26E38D53F2173B8D3DC3EEE4C047E7AB1C1EB8B85103E3BE7BA613B31BB5C9C36214DC9F14A42FD7A2FDB84856BCA5C44C2', 'Gabriel Ferreira', '154.695.321-84', '1994-06-04', '(47) 997036820', 'gabrielferreira@hotmail.com',
'23423432423', '10', 'Casa', 'Bela Vista', '515346', 'Blumenau', 'SC', '1994-06-12', 'adsadasdsa', 'sadasdas', true),
(2, 'lucas', '3C9909AFEC25354D551DAE21590BB26E38D53F2173B8D3DC3EEE4C047E7AB1C1EB8B85103E3BE7BA613B31BB5C9C36214DC9F14A42FD7A2FDB84856BCA5C44C2', 'Lucas Rodrigo', '154.695.321-84', '1994-06-04', '(47) 997036820', 'godinho@gmail.com', 
'23423432423', '10', 'Casa', 'Bela Vista', '515346', 'Blumenau', 'SC', '1994-06-12', 'adsadasdsa', 'sadasdas', false);

INSERT INTO usuarios (id_empresa, id_funcao, usuario, senha, nome, cpf, data_nascimento, telefone, email, usuario_master) VALUES 
(1, 1, 'matheus', '3C9909AFEC25354D551DAE21590BB26E38D53F2173B8D3DC3EEE4C047E7AB1C1EB8B85103E3BE7BA613B31BB5C9C36214DC9F14A42FD7A2FDB84856BCA5C44C2', 'Matheus Werner', '15469532184', '1994-06-04', '(47) 997036820', 'godinho@gmail.com', false),
(1, 1, 'lucas', '3C9909AFEC25354D551DAE21590BB26E38D53F2173B8D3DC3EEE4C047E7AB1C1EB8B85103E3BE7BA613B31BB5C9C36214DC9F14A42FD7A2FDB84856BCA5C44C2', 'Lucas Rodrigo', '15469532184', '1994-06-04', '(47) 997036820', 'lucassfreed@hotmail.com', true),
(1, 1, 'gabriel', '3C9909AFEC25354D551DAE21590BB26E38D53F2173B8D3DC3EEE4C047E7AB1C1EB8B85103E3BE7BA613B31BB5C9C36214DC9F14A42FD7A2FDB84856BCA5C44C2', 'Gabriel Ferreira', '15469532184', '1994-06-04', '(47) 997036820', 'gabrielferreira@hotmail.com', true);

INSERT INTO tickets (idEmpresa, id_usuario, sazonalidade, titulo, criticidade, situacao, descricao, dataAbertura, dataEncerramento, procedimentoResolucao) VALUES 
('2', 3, '130 dias', 'Probleminha', 'MEDIA', 'Concluído','Não consigo encontrar o relatório de vendas do dia 25, alguém me ajuda por favor','2018-05-24 00:00:00', '2018-10-01 22:40:14', 'Procure direito... Ele deve estar aí!');

INSERT INTO tickets (idEmpresa, id_usuario, titulo, criticidade, situacao, descricao, dataAbertura) VALUES 
('1', 2, 'ME AJUDEM!!! POR FAVOR!', 'ALTISSIMA', 'Aberto','Está aparecendo a mensagem \"Impossível conectar ao banco de dados\". Não conseguimos entrar no sistema', '2018-05-24'),
('3', 1, 'Erro no envio de mensagens', 'ALTA', 'Em Andamento','Não consigo enviar mensagens para meus clientes.', '2018-06-12'),
('3', 1, 'Problema com o sistema', 'BAIXA', 'Aberto', 'Não consigo enviar mensagens pros meus clientes.', '2018-06-12'),
('5', 2, 'Erro ao validar certificado digital', 'ALTISSIMA', 'Aberto','Está ocorrendo um traceback ao realizar a vinculação do certificado digital do cliente.', '2018-10-01');

INSERT INTO ticket_tags (idTickets, idTags) VALUES
('1', '4'),
('1', '5'),
('2', '1'),
('2', '6'),
('3', '5'),
('3', '3'),
('4', '4'),
('4', '6'),
('5', '1'),
('5', '4'),
('5', '3'),
('5', '2');
