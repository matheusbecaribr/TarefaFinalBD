CREATE DATABASE loja;
USE loja;

CREATE TABLE categoria(
	cd INT PRIMARY KEY
	AUTO_INCREMENT,
	nome VARCHAR(100)
);

CREATE TABLE produto(
	cd INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR( 120),
	qtd INT(10),
	valor DECIMAL(10,2),
	id_categoria INT,
	FOREIGN KEY (id_categoria)
	REFERENCES categoria(cd)
);

CREATE TABLE vendedor(
	cd INT PRIMARY KEY
	AUTO_INCREMENT,
	nome VARCHAR(100),
	salario DECIMAL(10,2)
);

CREATE TABLE estado(
	cd INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(30),
	sigla CHAR(2)
);

CREATE TABLE cidade(
	cd INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100),
	id_estado INT,
	FOREIGN KEY (id_estado) REFERENCES estado(cd)
);

CREATE TABLE cliente(
	cd INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100),
	telefone VARCHAR(100),
	sexo CHAR(1),
	status CHAR(8),
	id_cidade INT,
	FOREIGN KEY (id_cidade) REFERENCES cidade(cd)
);

CREATE TABLE pedido(
	cd INT PRIMARY KEY AUTO_INCREMENT,
	id_cliente INT,
	id_vendedor INT,
	dt_pedido DATE,
	vl_total DECIMAL(10,2),
	FOREIGN KEY (id_cliente) REFERENCES cliente(cd),
	FOREIGN KEY (id_vendedor) REFERENCES vendedor(cd)
);

CREATE TABLE item_pedido(
	cd INT PRIMARY KEY AUTO_INCREMENT,
	id_pedido INT,
	id_produto INT,
	qt_produto INT,
	vl_unitario DECIMAL(10,2),
	FOREIGN KEY (id_pedido) REFERENCES pedido(cd),
	FOREIGN KEY (id_produto) REFERENCES produto(cd)
);

/*insert das categorias*/

INSERT INTO categoria VALUES(NULL, "Elétrica");
INSERT INTO categoria VALUES(NULL, "Hidráulica");
INSERT INTO categoria VALUES(NULL, "Ferragem");
INSERT INTO categoria VALUES(NULL, "Construção");
INSERT INTO categoria VALUES(NULL, "Ferramentas");

/*insert dos produtos em cada categoria*/

INSERT INTO produto VALUES(NULL, "Carregador Turbo Triplo Gorila Shield", 50, "97.97", 1);
INSERT INTO produto VALUES(NULL, "Disjuntor Din Tripolar 3p 50a Curva C Lorenzetti", 70, "67.90", 1);
INSERT INTO produto VALUES(NULL, "Extensão Elétrica 5 Tomadas 2x0,75mm 3Metros Lexman", 50, "32.90", 1);
INSERT INTO produto VALUES(NULL, "Autotransformador 300VA Bivolt Lexman", 30, "99.90", 1);
INSERT INTO produto VALUES(NULL, "Chave Teste Digital Dt-1 Western", 50, "09.90", 1);

INSERT INTO produto VALUES(NULL, "Fita Veda Rosca 18mmx25m Equation", 80, "06.49", 2);
INSERT INTO produto VALUES(NULL, "Mangueira Flexível Baixa Pressão 1/2 40cm Plastilit", 50, "07.99", 2);
INSERT INTO produto VALUES(NULL, "Torneira para Parede de Cozinha Bica Alta Cromado Niterói Delinia", 20, "89.90", 2);
INSERT INTO produto VALUES(NULL, "Anel de Vedação Borracha Esgoto 100mm ou 4 Tigre", 70, "03.26", 2);
INSERT INTO produto VALUES(NULL, "Ducha Higiênica 1,2m Branca e Cromada Sensea", 30, "77.90", 2);

INSERT INTO produto VALUES(NULL, "Banqueta Escada Alumínio 3 Degraus 0,62m 120kg Prata e Laranja Botafogo", 30, "89.49", 3);
INSERT INTO produto VALUES(NULL, "Escada Alumínio 4 Degraus 1,3m 120kg Prata e Vermelho Botafogot", 30, "97.99", 3);
INSERT INTO produto VALUES(NULL, "Grade De Proteção Para Porta 85x70cm Plus Preta Tubline", 45, "59.90", 3);
INSERT INTO produto VALUES(NULL, "Cofre com Senha Aço Cinza Standers", 10, "85.25", 3);
INSERT INTO produto VALUES(NULL, "Kit para Porta de Correr de Madeira 1,86m Aço", 50, "80.90", 3);

INSERT INTO produto VALUES(NULL, "Tijolo Comum de Barro 4,3x9,1x18cm 10 Unidades Grupo Tomino", 250, "8.49", 3);
INSERT INTO produto VALUES(NULL, "Argamassa Contrapiso Interno e Externo Cinza 50kg Votorantim", 200, "25.99", 3);
INSERT INTO produto VALUES(NULL, "Telha Ecológica Stilo 3D Vermelho 2,00mx95cm Onduline", 150, "84.90", 3);
INSERT INTO produto VALUES(NULL, "Cimento CP II E 32 Saco de 50kg Tupi", 200, "32.90", 3);
INSERT INTO produto VALUES(NULL, "Bloco de Concreto Celular Autoclavado 60x30x10cm Sical", 250, "11.79", 3);

INSERT INTO produto VALUES(NULL, "Serrote Ponta 12' Max", 50, "33.71", 3);
INSERT INTO produto VALUES(NULL, "Furadeira De Impacto Tramontina 500 W 220 V 3/8", 30, "92.99", 3);
INSERT INTO produto VALUES(NULL, "Jogo de Chave Allen Abaulada com 10 peças 1,5 A 10mm Mega", 100, "17.90", 3);
INSERT INTO produto VALUES(NULL, "Alicate Desencapador Crimpador Cortador Automático Luatek Alicate", 100, "89.90", 3);
INSERT INTO produto VALUES(NULL, "Caneta De Teste Elétrico Profissional Com Alarme E Lanterna", 150, "49.00", 3);

/*insert dos vendedores*/

INSERT INTO vendedor VALUES(NULL, "Guilherme Araujo Sales", "1500.00");
INSERT INTO vendedor VALUES(NULL, "Pedro Luis Ribeiro de Alencar", "1500.00");
INSERT INTO vendedor VALUES(NULL, "Kayk Almeia de Arruda Santos", "1500.00");

/*insert dos estados*/

INSERT INTO estado VALUES(NULL, "São Paulo", "SP");
INSERT INTO estado VALUES(NULL, "Santa Catarina", "SC");
INSERT INTO estado VALUES(NULL, "Amazônas", "AM");

/*insert das cidades em cada estado*/

INSERT INTO cidade VALUES(NULL, "Peruibe", 1);
INSERT INTO cidade VALUES(NULL, "Santos", 1);
INSERT INTO cidade VALUES(NULL, "Sao Paulo", 1);

INSERT INTO cidade VALUES(NULL, "Florianopolis", 2);
INSERT INTO cidade VALUES(NULL, "Sao Jose", 2);
INSERT INTO cidade VALUES(NULL, "Itapema", 2);

INSERT INTO cidade VALUES(NULL, "Manaus", 3);
INSERT INTO cidade VALUES(NULL, "Manacapuru", 3);
INSERT INTO cidade VALUES(NULL, "Guajara", 3);

/*insert dos clientes em cada cidade*/

INSERT INTO cliente VALUES(NULL, "Gustavo Guanabira", "567879345", "M", "ATIVO", 3);
INSERT INTO cliente VALUES(NULL, "Hector Vieira Saldivar", "13902304065", "M", "INATIVO", 1);
INSERT INTO cliente VALUES(NULL, "Manoel Gomes", "456456567", "M", "ATIVO", 3);
INSERT INTO cliente VALUES(NULL, "Eddie Van Halen", "19552020", "M", "INATIVO", 3);
INSERT INTO cliente VALUES(NULL, "Deep Purple", "035036503530", "M", "INATIVO", 3);
INSERT INTO cliente VALUES(NULL, "Kurt Cobain", "0924914238", "M", "INATIVO", 2);
INSERT INTO cliente VALUES(NULL, "Jannis Joplin", "23524624", "F", "INATIVO", 3);
INSERT INTO cliente VALUES(NULL, "Rodolfo Professor", "9235235246", "M", "ATIVO", 1);
INSERT INTO cliente VALUES(NULL, "Eddie Vedder", "992352634", "M", "ATIVO", 3);

/*insert pedidos*/

INSERT INTO pedido VALUES(NULL, 1, 2, "");