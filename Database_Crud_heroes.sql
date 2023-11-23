CREATE DATABASE heroes_project;
USE heroes_project;

/** Criação da(s) tabela(s)*/ 

CREATE TABLE heroes(
	id  int PRIMARY KEY,
	nome_heroi VARCHAR(30),
    identidade_falsa VARCHAR(30),
    idade int,
    poderes VARCHAR(40),
    história VARCHAR(4000),
	universo CHAR(10),
    funcao CHAR(10)
);

-- Alterações nas colunas
ALTER TABLE heroes CHANGE história historia integer(5) unsigned;
ALTER TABLE heroes CHANGE identidade_falsa identidade_civil integer(5) unsigned;
ALTER TABLE heroes CHANGE poderes habilidades integer(5) unsigned;
ALTER TABLE heroes DROP COLUMN idade;
ALTER TABLE heroes MODIFY COLUMN  habilidades TEXT;



/* Inserção de valores nas colunas */
INSERT INTO heroes(id, nome_heroi, identidade_civil, habilidades, historia, universo, funcao)
VALUES(
	(1, "Batman", "Bruce Wayne", "Tecnologia Avançada, Preparo, Inteligência e Liderança", "DC", "herói"),
    (2, "SuperMan", "Clark Kent", "Voar, Raio Lazer, Super força, Sentidos Aprimorados, Sopro Gelado, Agilidade Sobre-Humana e Super resistência", "DC", "herói"),
    (3, "Mulher Maravilha", "Diana", "Super força, Invulnerabilidade, Fator de Cura, e Agilidade Sobre-Humana", "DC", "heroi"),
    (4, "Flash", "Barry Allen", "Super Velocidade, Reação Rápida", "DC Comics", "heroi"),
	(5, "Aquaman", "Arthur Curry", "Comunicação com Animais Marinhos, Super Força Subaquática", "DC Comics", "heroi"),
    (6, "Coringa", "Arthur Fleck", "Loucura, Manipulação e deixar o SuperMan puto", "DC", "Vilão"),
    (7, "Tirano", "Darkside", "Super força, Velocidade Super Humana, Invulnerabilidade, Fator de Cura, Imortalidade, Efeito Ômega
	Sanções Ômega, Manipulação da Realidade, Telecinese, Teletransporte interdimencional, Manipulação do tamanho, Levitação
	Criação de campos de força, Controle Molecular, Geração de clones e Mimetismo Rochoso", "DC", "Vião"),
    (8, "Charada", "Edward Nigma", "Genialidade em Quebra-Cabeças, Estratégias Elaboradas e Manipulação", "DC", "vilao"),
    (9, "Lex Luthor", "Lex Luthor", "Intelecto Genial, Engenharia e Estratégia", "DC", "vilao"),
    (10, "Brainiac", "Vril Dox", "Intelecto Avançado, Coleta de Conhecimento, Tecnologia Avançada e Mudança de Forma", "DC", "vilao"),
    (11, "Homem de Ferro", "Tone Stark", "Tecnologia avançada, Super Inteligência, Liderança e Planejamento estratégico", "Marvel", "heroi"),
    (12, "Capitão América", "Chris Evans", "Super Força, Super Resistência, Instintos Aprimorados e Equipamentos de combate", "Marvel", "heroi"),
    (13, "Thor", "Thor Odinson", "Força Sobrenatural, Controle sobre Trovões, Martelo Místico", "Marvel", "heroi"),
	(14, "Hulk", "Bruce Banner", "Super Força, Regeneração, Transformação", "Marvel", "heroi"),
	(15, "Viúva Negra", "Natasha Romanoff", "Habilidades de Espionagem, Luta Corpo a Corpo", "Marvel", "heroi"),
	(16, "Doutor Estranho", "Stephen Strange", "Magia, Manipulação da Realidade", "Marvel", "heroi"),
    (17, "Thanos", "Thanos", "Força Sobre-Humana, Intelecto Superior, Manopla do Infinito", "Marvel", "vilao"),
	(18, "Duende Verde", "Norman Osborn", "Força Aumentada, Equipamentos Tecnológicos, Gás do Riso", "Marvel", "vilao"),
	(19, "Loki", "Loki Laufeyson", "Magia, Ilusões, Habilidades de Manipulação", "Marvel", "vilao"),
	(20, "Magneto", "Erik Lehnsher", "Controle sobre Metais, Magnetismo", "Marvel", "vilao"),
	(21, "Doutor Octopus", "Otto Octavius", "Intelecto Brilhante, Tentáculos Mecânicos", "Marvel", "vilao")
);

