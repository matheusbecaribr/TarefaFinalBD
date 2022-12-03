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
INSERT INTO cliente VALUES(NULL, "Pedro Vitor Garcia", "992352634", "M", "ATIVO", 3);

/*insert pedidos*/

INSERT INTO pedido VALUES(NULL, 1, 1, "11.09.2001", 14615.80);
INSERT INTO item_pedido VALUES(NULL, 1, 1, 150, 97.97);
INSERT INTO item_produto VALUES(NULL, 1, 3, 2, 32.90);

INSERT INTO pedido VALUES(NULL, 2, 1, "08.08.2008", 293.67);
INSERT INTO item_pedido VALUES(NULL, 2, 8, 3, 89.90);
INSERT INTO item_produto VALUES(NULL, 2, 7, 3, 7.99);

INSERT INTO pedido VALUES(NULL, 3, 1, "30.11.2019", 126.7);
INSERT INTO item_pedido VALUES(NULL, 3, 21, 1, 33.71);
INSERT INTO item_produto VALUES(NULL, 3, 22, 1, 92.99);

INSERT INTO pedido VALUES(NULL, 4, 1, "06.10.2020", 42.89);
INSERT INTO item_pedido VALUES(NULL, 4, 3, 1, 32.90);
INSERT INTO item_produto VALUES(NULL, 4, 5, 1, 09.99);

INSERT INTO pedido VALUES(NULL, 5, 1, "03.05.0365", 42.89);
INSERT INTO item_pedido VALUES(NULL, 5, 3, 1, 32.90);
INSERT INTO item_produto VALUES(NULL, 5, 5, 1, 09.99);

INSERT INTO pedido VALUES(NULL, 6, 1, "06.10.2020", 163.15);
INSERT INTO item_pedido VALUES(NULL, 6, 14, 1, 85.25);
INSERT INTO item_produto VALUES(NULL, 6, 10, 1, 77.90);

INSERT INTO pedido VALUES(NULL, 7, 1, "04.10.1970", 51.61);
INSERT INTO item_pedido VALUES(NULL, 7, 21, 1, 33.71);
INSERT INTO item_produto VALUES(NULL, 7, 23, 1, 17.90);

INSERT INTO pedido VALUES(NULL, 8, 1, "30.11.2022", 177.16);
INSERT INTO item_pedido VALUES(NULL, 8, 16, 1, 08.49);
INSERT INTO item_produto VALUES(NULL, 8, 17, 1, 25.99);
INSERT INTO item_pedido VALUES(NULL, 8, 18, 1, 97.99);
INSERT INTO item_produto VALUES(NULL, 8, 19, 1, 32.90);
INSERT INTO item_pedido VALUES(NULL, 8, 20, 1, 11.79);

INSERT INTO pedido VALUES(NULL, 9, 1, "04.10.1970", 51.61);
INSERT INTO item_pedido VALUES(NULL, 9, 21, 1, 33.71);
INSERT INTO item_produto VALUES(NULL, 9, 22, 1, 92.99);
INSERT INTO item_pedido VALUES(NULL, 9, 17, 1, 25.99);
INSERT INTO item_produto VALUES(NULL, 9, 19, 1, 32.90);

INSERT INTO pedido VALUES(NULL, 8, 1, "04.10.1970", 51.61);
INSERT INTO item_pedido VALUES(NULL, 10, 16, 1, 08.49);
INSERT INTO item_produto VALUES(NULL, 10, 17, 1, 25.99);
INSERT INTO item_pedido VALUES(NULL, 10, 18, 1, 97.99);
INSERT INTO item_produto VALUES(NULL, 10, 19, 1, 32.90);
INSERT INTO item_pedido VALUES(NULL, 10, 20, 1, 11.79);

/*funções*/

SELECT * FROM cliente WHERE status = "ATIVO";

SELECT * FROM cliente WHERE status = "INATIVO";

SELECT * FROM produto WHERE  id_categoria = "2";

SELECT * FROM produto WHERE valor <= "200.00";

SELECT * FROM cliente WHERE sexo = "F";

SELECT * FROM pedido WHERE MONTH (dt_pedido) = MONTH(CURRENT_DATE());

SELECT * FROM pedido WHERE DAY (dt_pedido) = day(CURRENT_DATE());

SELECT SUM(vl_total) FROM pedido WHERE MONTH(dt_pedido) = MONTH(NOW()) AND YEAR(dt_pedido) = YEAR(NOW());

SELECT * FROM item_pedido WHERE id_pedido ='4';

SELECT * FROM pedido WHERE id_cliente ="2";

SELECT v.nome, count(p.id_vendedor) AS quantidade FROM vendedor v INNER JOIN pedido p WHERE p.id_vendedor = v.cd;

SELECT nome FROM produto WHERE qtd < "50";

SELECT nome FROM produto ORDER BY cd;

SELECT AVG(valor) FROM produto;

SELECT min(valor) FROM produto;

SELECT max(valor) FROM produto;