/* Criando o banco de dados*/
CREATE DATABASE Hot_wheels;

/*chamando*/
USE Hot_wheels;


/* Criando tabela do veiculo*/
CREATE TABLE veiculo(

	marca VARCHAR(50) NOT NULL,
	modelo VARCHAR(30) NOT NULL,
	descricao VARCHAR(50) NOT NULL,
	cor VARCHAR(12) NOT NULL,
	placa VARCHAR(14) NOT NULL,
	id_veic VARCHAR(40) NOT NULL,
/*outros*/	
	ano INT(4) NOT NULL,

	Primary key(id_veic);

);

/* Criando tabela do contrato*/
CREATE TABLE contrato(

	data VARCHAR(8) NOT NULL,
	preco_diaria FLOAT(10) NOT NULL,
	valor_seguro FLOAT(10) NOT NULL,
	veic VARCHAR(14) NOT NULL,
	cliente VARCHAR(40) NOT NULL,

	Primary key(cliente),
	foreign key (veic) references veiculo(id_veic);

);

/* Criando tabela dos clientes*/
CREATE TABLE cliente(

	nome VARCHAR(40) NOT NULL,
	endereco VARCHAR(40) NOT NULL,
	cpf INT NOT NULL,
	cor VARCHAR(40) NOT NULL,
/*outros*/
	idade VARCHAR(40) NOT NULL,
	
	Primary key(cpf);

);

/* Criando tabela da manutencao*/
CREATE TABLE manutencao(

	modelo_veic VARCHAR(40) NOT NULL,
	custo VARCHAR(40) NOT NULL,
	id_manu VARCHAR(40) NOT NULL,
	Primary key(id_manu),
	foreign key (modelo_veic) references veiculo(id_veic);

);

/*  Gera uma tabela com custo por modelo que sera usado na manutencao   */
CREATE TABLE custo_modelo(

	modelo_veic VARCHAR(40) NOT NULL,
	manutencao VARCHAR(40) NOT NULL,
	custo VARCHAR(40) NOT NULL,
	id_cus VARCHAR(40) NOT NULL,
	Primary key(id_cus),
	foreign key (manutencao) references manutencao(id_manu),
	foreign key (modelo_veic) references veiculo(id_veic);

);