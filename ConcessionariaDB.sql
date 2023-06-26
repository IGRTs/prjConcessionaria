CREATE DATABASE ConcessionariaDB;
GO
USE ConcessionariaDB
GO

Create table carrovrumvrum(
    cod_carro int primary key NOT NULL,
    nome varchar(100),
    imagem varchar(70),
    modelo varchar(50),
    combustivel varchar(30),
    cor varchar(60),
    ano date,
    km decimal(10,5),
    descricao varchar(500),
    preco money
);

GO

CREATE TABLE tblInteressados(
    cod_interessado int primary key NOT NULL,
    cod_carro int,
    celular numeric(30),
    nome varchar(30),
    foreign key (cod_carro) references carrovrumvrum(cod_carro)
);

GO

DELETE FROM carrovrumvrum WHERE cod_carro = 14;

GO

INSERT INTO carrovrumvrum (cod_carro, nome, modelo, combustivel, cor, ano, km, descricao, preco, imagem)
VALUES (1, 'CRUZE SPORT6 2023 RS TURBO 153CV', 'CRUZE SPORT6 RS', 'Gasolina e Etanol(Flex)', 'Vermelho Chili - Cor Met�lica', '2017-01-01', 10.45,'
O Chevrolet Cruze Sport6 2023 RS Turbo � um carro compacto e esportivo, oferecendo um desempenho �gil e divertido de dirigir.', 170990.00, '~/Content/Images/Carros/Dodgeyjourney.jpg');
GO
INSERT INTO carrovrumvrum (cod_carro, nome, modelo, combustivel, cor, ano, km, descricao, preco, imagem)
VALUES (6, 'Celta 1.0 LS', 'Celta', 'Gasolina', 'Prata', '2015-01-01', 60000, 'O Celta 1.0 LS � um carro compacto e econ�mico, ideal para o dia a dia na cidade.', 15000.00, '~/Content/Images/Carros/Celta.png');
GO
INSERT INTO carrovrumvrum (cod_carro, nome, modelo, combustivel, cor, ano, km, descricao, preco, imagem)
VALUES (7, 'Del Rey 1.6 GLX', 'Del Rey', 'Gasolina', 'Branco', '1990-01-01', 100000, 'O Del Rey 1.6 GLX � um cl�ssico dos anos 90, conhecido pelo seu conforto e estilo.', 12000.00, '~/Content/Images/Carros/DelRey.jpg');
GO
INSERT INTO carrovrumvrum (cod_carro, nome, modelo, combustivel, cor, ano, km, descricao, preco, imagem)
VALUES (8, 'Dobl� 1.8 Adventure', 'Dobl�', 'Flex', 'Vermelho', '2017-01-01', 35000, 'O Dobl� 1.8 Adventure � um carro espa�oso e vers�til, perfeito para viagens em fam�lia.', 40000.00, '~/Content/Images/Carros/Doblo.jpg');
GO
INSERT INTO carrovrumvrum (cod_carro, nome, modelo, combustivel, cor, ano, km, descricao, preco, imagem)
VALUES (9, 'Fox Connect 1.6 MSI', 'Fox', 'Flex', 'Azul', '2020-01-01', 20000, 'O Fox Connect 1.6 MSI � um hatch com design moderno e tecnologia avan�ada.', 35000.00, '~/Content/Images/Carros/Fox.jpg');
GO
INSERT INTO carrovrumvrum (cod_carro, nome, modelo, combustivel, cor, ano, km, descricao, preco, imagem)
VALUES (10, 'Fusca 1300', 'Fusca', 'Gasolina', 'Amarelo', '1968-01-01', 80000, 'O Fusca 1300 � um cl�ssico da Volkswagen, famoso por seu charme e confiabilidade.', 18000.00, '~/Content/Images/Carros/Fusca.jpg');
GO
INSERT INTO carrovrumvrum (cod_carro, nome, modelo, combustivel, cor, ano, km, descricao, preco, imagem)
VALUES (11, 'Gol 1.6 MSI', 'Gol', 'Flex', 'Branco', '2021-01-01', 5000, 'O Gol 1.6 MSI � um carro popular com bom desempenho e economia de combust�vel.', 45000.00, '~/Content/Images/Carros/Gol.jpg');
GO
INSERT INTO carrovrumvrum (cod_carro, nome, modelo, combustivel, cor, ano, km, descricao, preco, imagem)
VALUES (12, 'Opala Diplomata 4.1S', 'Opala', 'Gasolina', 'Preto', '1980-01-01', 120000, 'O Opala Diplomata 4.1S � um dos grandes cl�ssicos da Chevrolet, com pot�ncia e estilo.', 35000.00, '~/Content/Images/Carros/Opala.jpg');
GO
INSERT INTO carrovrumvrum (cod_carro, nome, modelo, combustivel, cor, ano, km, descricao, preco, imagem)
VALUES (13, 'Prius Hybrid', 'Prius', 'H�brido', 'Prata', '2022-01-01', 5000, 'O Prius Hybrid � um ve�culo sustent�vel e eficiente, perfeito para quem busca economia de combust�vel.', 60000.00, '~/Content/Images/Carros/Prius.jpg');
GO
INSERT INTO carrovrumvrum (cod_carro, nome, modelo, combustivel, cor, ano, km, descricao, preco, imagem)
VALUES (14, 'Uno com Escada', 'Uno-com-escada', 'Gasolina', 'Branco', '2010-01-01', 90000, 'O Uno com Escada � um ve�culo especializado para trabalhos de manuten��o e servi�os em altura.', 15000.00, '~/Content/Images/Carros/Unocomescada.png');
GO
Select * from carrovrumvrum
