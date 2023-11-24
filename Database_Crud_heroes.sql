CREATE DATABASE heroes_project;
USE heroes_project;

/** Criação da(s) tabela(s)*/ 

CREATE TABLE heroes(
	id  int PRIMARY KEY,
	nome_heroi VARCHAR(30),
    identidade_civil VARCHAR(30),
    habilidades TEXT,
    historia VARCHAR(4000),
	universo CHAR(10),
    funcao CHAR(10)
);

-- Variáveis da História de cada personagem
	
-- Personagens DC:
    -- História do Batman
	SET @Batman = 'Batman, também conhecido como o Cavaleiro das Trevas, é um super-herói icônico. Criado por Bob Kane e Bill Finger, 
    o Batman fez sua primeira propriedade em Detective Comics #27 em 1939. Ao contrário de muitos super-heróis, Batman não possui superpoderes, 
    mas em vez disso, confia em sua inteligência excepcional, habilidades de detetives afiados , treinamento rigoroso em artes marciais e uma 
    impressionante gama de gadgets e tecnologia de ponta. Por trás da máscara está Bruce Wayne, um bilionário de Gotham City que, após testemunhar 
    o assassinato de seus pais na infância, jurou libertar a cidade do crime e da corrupção. Com uma presença sombria e uma ética moral inabalável, 
    o Batman se tornou um dos heróis mais reverenciados e duradouros no universo dos quadrinhos, deixando sua marca não apenas como um vigilante, mas 
    como um símbolo de justiça e determinação implacáveis.';
    
    -- História do Superman
    SET @SuperMan = 'Superman, o Último Filho de Krypton, é uma figura emprestada nos quadrinhos e um dos super-heróis mais conhecidos. 
    Criado por Jerry Siegel e Joe Shuster, Superman fez sua estreia em “Action Comics #1” em 1938, marcando o início da era dos super-heróis. 
    Clark Kent, o alter ego do Superman, foi criado pelos bondosos Jonathan e Martha Kent após ser encontrado em uma nave espacial que caiu na Terra. 
    Dotado de poderes extraordinários, incluindo superforça, voo, visão de raio-x e invulnerabilidade, Superman usa seus dons para proteger a 
    humanidade dos perigos que ameaçam o planeta.Conhecido por seu uniforme icônico, capa vermelha e "S" no peito, Superman personifica valores como 
    verdade, justiça e o modo americano. Apesar de ser um ser quase divino, sua humanidade e empatia definem o caráter do Homem de Aço. Ao contrário 
    de muitos heróis, Superman não esconde sua verdadeira identidade, compartilhando sua vida como o repórter Clark Kent no Planeta Diário.';
    
    -- História da Mulher Maravilha
	SET @MulherMaravilha = 'Mulher-Maravilha, também conhecida como Diana Prince, é uma amazona e princesa guerreira da ilha paradisíaca de 
    Themyscira. Criada pelas divindades gregas, Diana possui habilidades sobre-humanas, incluindo força, velocidade e agilidade. Sua missão é 
    promover a paz e a justiça no mundo dos homens, usando seu laço mágico da verdade e habilidades de combate excepcionais. Como uma das principais
    heroínas da DC Comics, a Mulher-Maravilha personifica os valores da verdade, igualdade e compaixão.';

	-- História do Flash
	SET @Flash = 'Flash, o Velocista Escarlate, é o alter ego de vários super-heróis da DC Comics, cada um dotado da habilidade de super velocidade.
    Barry Allen é um dos Flashs mais conhecidos. Após ser atingido por um raio e banhado por produtos químicos, Barry ganha a 
    capacidade de correr em velocidades incríveis. Usando seu poder para combater o crime em Central City, o Flash é conhecido por sua personalidade
    otimista e por ser um membro crucial da Liga da Justiça. Sua velocidade permite realizar feitos extraordinários, desde desviar de balas até viajar
    no tempo.';

	-- História do Aquaman
	SET @Aquaman = 'Aquaman, também conhecido como Arthur Curry, é o rei de Atlantis e um dos heróis mais poderosos do universo DC. Meio-humano e 
    meio-atlante, Arthur possui a habilidade de comunicar-se com criaturas marinhas e comandar os elementos aquáticos. 
    Seu tridente mágico confere-lhe poderes formidáveis, tornando-o um defensor dos oceanos e da justiça. Apesar de suas origens atlantes, Aquaman
    atua como um elo entre o mundo terrestre e o subaquático, enfrentando desafios que vão além das profundezas dos oceanos.';
    
    -- História do Coringa
	SET @Coringa = 'Coringa, o Príncipe Palhaço do Crime, é um dos vilões mais infames e caóticos da galeria de inimigos do Batman. Sua origem é 
    frequentemente envolta em mistério, mas sua insanidade, riso maníaco e propensão para o caos tornam-no uma força imprevisível em Gotham City. 
    O Coringa é conhecido por seus elaborados planos, seus confrontos psicológicos com o Batman e sua falta de motivação clara além de causar anarquia
    e desordem.';

	-- História do Darkseid
	SET @Darkseid = 'Darkseid é um dos vilões mais formidáveis do universo DC, governante do planeta Apokolips. 
    Ele busca a Equação Anti-Vida, um poder cósmico que lhe permitiria controlar toda a vida no universo. Com uma força sobre-humana, 
    habilidades místicas e um intelecto implacável, Darkseid é um tirano que busca subjugar planetas inteiros. Seu objetivo de conquista o 
    coloca em constante conflito com os heróis da DC, especialmente a Liga da Justiça.';

	-- História do Lex Luthor
	SET @LexLuthor = 'Lex Luthor, magnata dos negócios e arquirrival do Superman, é um dos vilões mais inteligentes e maquiavélicos da DC Comics.
    Com uma mente genial, Luthor ressente o Superman por sua presença ameaçadora e considera o kryptoniano uma ameaça à humanidade. Usando sua riqueza
    e genialidade científica, Luthor tenta derrotar Superman e consolidar seu próprio poder. Sua busca pela supremacia o coloca em conflito não apenas
    com o kryptoniano, mas com a Liga da Justiça como um todo. Além da sua careca style que representa uma grande ameaça.';

	-- História do Charada
	SET @Charada = 'Charada, o alter ego de Edward Nigma, é um criminoso genial e obcecado por quebra-cabeças e enigmas. Motivado pela busca de 
    desafios mentais, o Charada muitas vezes deixa pistas criptografadas em seus crimes, desafiando as autoridades e o Batman a resolverem seus
    intrincados quebra-cabeças. Apesar de seus métodos questionáveis, o Charada vê seus enigmas como uma forma de arte e procura provar sua 
    superioridade intelectual através de desafios complexos e enigmas que envolvem o futuro, presente e passado dos personagens, bem como uma 
    abordagem psicológica. Aveeeeeeeee Mariaaaaaaa!!!!';
    
    -- História do Brainiac
	SET @Brainiac = 'Brainiac, uma inteligência artificial avançada e alienígena, é uma ameaça cósmica que viaja pelo universo coletando conhecimento
    e tecnologia de civilizações. Com um intelecto superior e habilidades de manipulação de dados, Brainiac é capaz de assimilar informações e até 
    mesmo reduzir planetas inteiros a miniaturas em sua busca pela perfeição. Sua busca incessante por conhecimento o coloca em conflito com diversos
    heróis, especialmente Superman, que enfrenta a ameaça de perder mundos inteiros para a insaciável coleção de Brainiac. Além de possuir milhares
    de variações pelo universo';
    
-- Personagens Marvel
	-- História do Homem de Ferro
	SET @HomemDeFerro = 'Homem de Ferro, também conhecido como Tony Stark, é um magnata industrial e super-herói da Marvel Comics. Após ser gravemente
    ferido e capturado por terroristas, Stark cria uma avançada armadura tecnológica para escapar e, posteriormente, torna-se o herói blindado 
    conhecido como Homem de Ferro. Utilizando sua genialidade, Stark aprimora continuamente sua armadura e se torna um membro essencial dos Vingadores,
    usando sua tecnologia para combater ameaças globais. Sendo o maior heroi do Universo Marvel e o homem que derrotou Thanos.';

	-- História do Capitão América
	SET @CapitaoAmerica = 'Capitão América, o alter ego de Steve Rogers, é um super-soldado e um símbolo de esperança e justiça. Criado durante a 
    Segunda Guerra Mundial através do projeto de super-soldados, Rogers recebeu o soro do super-soldado, tornando-se fisicamente aprimorado. 
    Lutando contra as forças do mal ao lado dos Aliados, Capitão América é descongelado décadas depois e se torna líder dos Vingadores. 
    Com seu escudo indestrutível e habilidades sobre-humanas, ele continua a proteger o mundo moderno.';

	-- História do Thor
	SET @Thor = 'Thor, o Deus do Trovão, é um poderoso ser asgardiano da mitologia nórdica. Como príncipe de Asgard, Thor é digno do martelo mágico 
    Mjolnir, que lhe concede controle sobre os trovões e raios. Enviado à Terra como punição por seu pai Odin, Thor aprende humildade ao assumir a 
    identidade do médico Donald Blake. Ao empunhar Mjolnir, Thor protege o universo de ameaças cósmicas e se torna um membro vital dos Vingadores.';

	-- História do Hulk
	SET @Hulk = 'Hulk, o alter ego de Bruce Banner, é um cientista transformado em uma criatura verde e de imensa força devido à exposição a radiação 
    gama. Incapaz de controlar sua transformação, Banner se torna o Hulk quando sua raiva atinge um ponto crítico. Como Hulk, ele é uma força 
    incontrolável e muitas vezes luta contra ameaças além do alcance dos heróis convencionais. Apesar dos desafios, Hulk é um membro valioso dos 
    Vingadores, usando sua força colossal para proteger o mundo. Um dos poderes do hulk original que representa perigo a todos é a radiação gama 
    que emana de seu corpo quando está em seu ápice de fúria';
    
	-- História do Doutor Estranho
	SET @DoutorEstranho = 'Doutor Estranho, o Mago Supremo, é um ex-neurocirurgião, Stephen Strange, que, após um acidente de carro, busca cura para 
    suas mãos danificadas. Ele encontra o Ancião, que o inicia nas artes místicas. Agora detentor de poderes mágicos, Doutor Estranho protege a 
    realidade contra ameaças sobrenaturais, usando sua inteligência e habilidades místicas para enfrentar adversários que desafiam a compreensão 
    convencional.';

	-- História da Viúva Negra
	SET @ViuvaNegra = 'Viúva Negra, também conhecida como Natasha Romanoff, é uma ex-espiã russa que se tornou uma agente da S.H.I.E.L.D. e uma 
    das Vingadoras. Treinada desde jovem na Sala Vermelha, Natasha é uma mestra em espionagem e combate corpo a corpo. Sua notável habilidade de se
    infiltrar em organizações inimigas e sua perícia em combate tornam-na uma integrante valiosa da equipe dos heróis mais poderosos da Terra.';

	-- História do Thanos (Titã Louco)
	SET @Thanos = 'Thanos, conhecido como o Titã Louco, é um ser cósmico de imenso poder e vilão na Marvel Comics. Obcecado pela personificação da 
    Morte, Thanos busca adquirir as Joias do Infinito para tornar-se invencível. Com sua força sobre-humana e intelecto formidável, ele é uma ameaça 
    cósmica que enfrenta não apenas os Vingadores, mas todo o universo. Sua busca implacável pelo poder o coloca em conflito com heróis e entidades 
    cósmicas.';

	-- História do Duende Verde
	SET @DuendeVerde = 'Duende Verde, o alter ego de Norman Osborn, é um empresário e vilão arqui-inimigo do Homem-Aranha. Após um experimento que 
    aumentou suas habilidades e insanidade, Osborn assume a identidade do Duende Verde. Equipado com um planador voador e bombas de gás do riso, ele
    aterroriza Nova York e o Homem-Aranha. A personalidade do Duende Verde é marcada por uma combinação de inteligência calculista e insanidade. 
    Ele é conhecido por seu riso maníaco, suas ações caóticas e explosivas, se é que você me entende.';
    
    -- História do Loki
	SET @Loki = 'Loki, o Deus da Trapaça, é uma figura complexa do universo Marvel. Meio-irmão adotivo de Thor, ele é conhecido por sua astúcia e
    habilidades mágicas. Criado por Stan Lee, Larry Lieber e Jack Kirby, Loki é uma presença constante em conflitos em Asgard e na Terra. Seus poderes 
    de ilusão e manipulação fazem dele um vilão formidável e, em algumas ocasiões, um aliado improvável. Resumindo, Loki é um personagem fascinante e 
    multifacetado que usa sua astúcia e poderes mágicos para criar caos e desafiar heróis notáveis, tornando-o uma presença rigorosa
    nos quadrinhos e poderosa demais para ignorar.';

	-- História do Magneto
	SET @Magneto = 'Magneto, também conhecido como Max Eisenhardt ou Erik Lehnsher, é um mutante poderoso com a habilidade de controlar campos 
    magnéticos. Criado por Stan Lee e Jack Kirby, Magneto lidera os mutantes conhecidos como X-Men. Sua crença na superioridade mutante muitas 
    vezes o coloca em conflito com os X-Men e outros super-heróis. Magneto é um personagem complexo, cujas motivações nem sempre são completamente 
    malignas. A intenção é boa, mas os métodos são questionáveis!!';

	-- História do Doutor Octopus
	SET @DoutorOctopus = 'Doutor Octopus, também conhecido como Otto Octavius, é um vilão clássico do Homem-Aranha. Criado por Stan Lee e Steve Ditko,
    Doutor Octopus possui membros mecânicos poderosos e flexíveis, anexados a um conjunto de tentáculos controlados neuralmente. Além de sua força 
    física, Octopus é um gênio científico especializado em física atômica e robótica. Suas habilidades intelectuais e físicas o tornam um desafio 
    constante para o Homem-Aranha.';

/* Inserção dos herois e vilões dos universos DC e Marvel na tabela heroes */
INSERT INTO heroes
(id, nome_heroi, identidade_civil, habilidades, historia, universo, funcao)
VALUES
    (1, "Batman", "Bruce Wayne", "Tecnologia Avançada, Preparo, Inteligência e Liderança", @Batman, "DC", "Herói"),
    (2, "SuperMan", "Clark Kent", "Voar, Raio Lazer, Super força, Sentidos Aprimorados, Sopro Gelado, Agilidade Sobre-Humana e Super resistência", @Superman, "DC", "Herói"),
    (3, "Mulher Maravilha", "Diana", "Super força, Invulnerabilidade, Fator de Cura, e Agilidade Sobre-Humana", @MulherMaravilha, "DC", "Herói"),
    (4, "Flash", "Barry Allen", "Super Velocidade, Reação Rápida", @Flash, "DC Comics", "Herói"),
    (5, "Aquaman", "Arthur Curry", "Comunicação com Animais Marinhos, Super Força Subaquática", @Aquaman, "DC Comics", "Herói"),
    (6, "Coringa", "Arthur Fleck", "Loucura, Manipulação e deixar o SuperMan puto", @Coringa, "DC", "Vilão"),
    (7, "Tirano", "Darkseid", "Super força, Velocidade Super Humana, Invulnerabilidade, Fator de Cura, Imortalidade, Efeito Ômega
        Sanções Ômega, Manipulação da Realidade, Telecinese, Teletransporte interdimencional, Manipulação do tamanho, Levitação
        Criação de campos de força, Controle Molecular, Geração de clones e Mimetismo Rochoso", @Darkseid, "DC", "Vilão"),
    (8, "Charada", "Edward Nigma", "Genialidade em Quebra-Cabeças, Estratégias Elaboradas e Manipulação", @Charada, "DC", "Vilão"),
    (9, "Lex Luthor", "Lex Luthor", "Intelecto Genial, Engenharia e Estratégia", @LexLuthor, "DC", "Vilão"),
    (10, "Brainiac", "Vril Dox", "Intelecto Avançado, Coleta de Conhecimento, Tecnologia Avançada e Mudança de Forma", @Brainiac, "DC", "Vilão"),
    (11, "Homem de Ferro", "Tone Stark", "Tecnologia avançada, Super Inteligência, Liderança e Planejamento estratégico", @HomemDeFerro, "Marvel", "Herói"),
    (12, "Capitão América", "Chris Evans", "Super Força, Super Resistência, Instintos Aprimorados e Equipamentos de combate", @CapitaoAmerica, "Marvel", "Herói"),
    (13, "Thor", "Thor Odinson", "Força Sobrenatural, Controle sobre Trovões, Martelo Místico", @Thor, "Marvel", "Herói"),
    (14, "Hulk", "Bruce Banner", "Super Força, Regeneração, Transformação", @Hulk, "Marvel", "Herói"),
    (15, "Viúva Negra", "Natasha Romanoff", "Habilidades de Espionagem, Luta Corpo a Corpo", @ViuvaNegra, "Marvel", "Heroi"),
    (16, "Doutor Estranho", "Stephen Strange", "Magia, Manipulação da Realidade", @DoutorEstranho, "Marvel", "Herói"),
    (17, "Thanos", "Thanos", "Força Sobre-Humana, Intelecto Superior, Manopla do Infinito", @Thanos, "Marvel", "Vilão"),
    (18, "Duende Verde", "Norman Osborn", "Força Aumentada, Equipamentos Tecnológicos, Gás do Riso", @DuendeVerde, "Marvel", "Vilão"),
    (19, "Loki", "Loki Laufeyson", "Magia, Ilusões, Habilidades de Manipulação", @Loki, "Marvel", "Vilão"),
    (20, "Magneto", "Erik Lehnsher", "Controle sobre Metais, Magnetismo", @Magneto, "Marvel", "Vilão"),
    (21, "Doutor Octopus", "Otto Octavius", "Intelecto Brilhante, Tentáculos Mecânicos", @DoutorOctopus, "Marvel", "Vilão");
    
-- Testes de Seleção
SELECT * FROM heroes;
SELECT * FROM heroes WHERE id > 4 AND id < 14;
SELECT funcao, nome_heroi FROM heroes ORDER BY funcao;
-- Like
SELECT * FROM heroes WHERE funcao LIKE 'Vilão';
SELECT * FROM heroes WHERE nome_heroi LIKE 'D%'; 
SELECT * FROM heroes WHERE nome_heroi LIKE '%o%'; 

