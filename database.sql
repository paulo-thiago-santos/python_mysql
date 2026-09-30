

CREATE TABLE funcionario (
    id_func INT PRIMARY KEY AUTO_INCREMENT,
    nome_func VARCHAR(500) NOT NULL,
    telefone_func VARCHAR(20) NOT NULL,
    cargo_func INT NOT NULL DEFAULT 0,
    status BOOLEAN NOT NULL DEFAULT TRUE,
    UNIQUE (telefone_func)
);

CREATE TABLE aluno (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome_aluno VARCHAR(500) NOT NULL,
    telefone_aluno VARCHAR(20) NOT NULL,
    nota_aluno INT DEFAULT 0,
    status_aluno BOOLEAN NOT NULL DEFAULT TRUE,
    id_func INT,
    UNIQUE (telefone_aluno),
    FOREIGN KEY (id_func)
        REFERENCES funcionario(id_func)
);

CREATE ROLE 'professores';
GRANT SELECT (nome_aluno, nota_aluno) ON escola.aluno TO 'professores'; 
GRANT UPDATE (nota_aluno) ON escola.aluno TO 'professores';

CREATE ROLE 'secretarios';
GRANT SELECT ON escola.aluno TO 'secretarios';
GRANT SELECT ON escola.funcionario TO 'secretarios';
GRANT UPDATE ON escola.aluno TO 'secretarios';
GRANT UPDATE (nome_func, telefone_func) ON escola.funcionario TO 'secretarios';

CREATE ROLE 'gestores';
GRANT SELECT ON escola.aluno TO 'gestores';
GRANT SELECT ON escola.funcionario TO 'gestores';
GRANT UPDATE ON escola.funcionario TO 'gestores';

CREATE ROLE 'alunos';
GRANT SELECT (nome_func, cargo_func) ON escola.funcionario TO 'alunos';

CREATE USER 'Paulo_Santos'@'localhost' IDENTIFIED BY 'Paulo_Santos'; GRANT 'professores' TO 'Paulo_Santos'@'localhost'; INSERT INTO funcionario (nome_func, telefone_func, cargo_func ) VALUES ('Paulo_Santos','47999999999',1);

CREATE USER 'Açucena_da_Luz_Pereira'@'localhost' IDENTIFIED BY 'Açucena_da_Luz_Pereira'; GRANT 'alunos' TO 'Açucena_da_Luz_Pereira'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Açucena_da_Luz_Pereira','47999999999',1);
CREATE USER 'Andrieli_Lucinda_da_Silva_Oliveira'@'localhost' IDENTIFIED BY 'Andrieli_Lucinda_da_Silva_Oliveira'; GRANT 'alunos' TO 'Andrieli_Lucinda_da_Silva_Oliveira'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Andrieli_Lucinda_da_Silva_Oliveira','47999999999',1);
CREATE USER 'Arthur_José_Dias'@'localhost' IDENTIFIED BY 'Arthur_José_Dias'; GRANT 'alunos' TO 'Arthur_José_Dias'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Arthur_José_Dias','47999999999',1);
CREATE USER 'Bernardo_Pianecer'@'localhost' IDENTIFIED BY 'Bernardo_Pianecer'; GRANT 'alunos' TO 'Bernardo_Pianecer'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Bernardo_Pianecer','47999999999',1);
CREATE USER 'Bruno_Ribeiro_Guellen'@'localhost' IDENTIFIED BY 'Bruno_Ribeiro_Guellen'; GRANT 'alunos' TO 'Bruno_Ribeiro_Guellen'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Bruno_Ribeiro_Guellen','47999999999',1);
CREATE USER 'Bryan_Weichselbaum_da_Silva'@'localhost' IDENTIFIED BY 'Bryan_Weichselbaum_da_Silva'; GRANT 'alunos' TO 'Bryan_Weichselbaum_da_Silva'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Bryan_Weichselbaum_da_Silva','47999999999',1);
CREATE USER 'Daiane_do_Carmo_Rodrigues'@'localhost' IDENTIFIED BY 'Daiane_do_Carmo_Rodrigues'; GRANT 'alunos' TO 'Daiane_do_Carmo_Rodrigues'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Daiane_do_Carmo_Rodrigues','47999999999',1);
CREATE USER 'Douglas_de_Araújo_Ávila'@'localhost' IDENTIFIED BY 'Douglas_de_Araújo_Ávila'; GRANT 'alunos' TO 'Douglas_de_Araújo_Ávila'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Douglas_de_Araújo_Ávila','47999999999',1);
CREATE USER 'Eduardo_de_Oliveira_Dorneles'@'localhost' IDENTIFIED BY 'Eduardo_de_Oliveira_Dorneles'; GRANT 'alunos' TO 'Eduardo_de_Oliveira_Dorneles'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Eduardo_de_Oliveira_Dorneles','47999999999',1);
CREATE USER 'Eduardo_Pietro_da_Silva_Pereira'@'localhost' IDENTIFIED BY 'Eduardo_Pietro_da_Silva_Pereira'; GRANT 'alunos' TO 'Eduardo_Pietro_da_Silva_Pereira'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Eduardo_Pietro_da_Silva_Pereira','47999999999',1);
CREATE USER 'Emerson_de_Carvalho_Soares'@'localhost' IDENTIFIED BY 'Emerson_de_Carvalho_Soares'; GRANT 'alunos' TO 'Emerson_de_Carvalho_Soares'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Emerson_de_Carvalho_Soares','47999999999',1);
CREATE USER 'Gabriel_Anacleto_Farias'@'localhost' IDENTIFIED BY 'Gabriel_Anacleto_Farias'; GRANT 'alunos' TO 'Gabriel_Anacleto_Farias'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Gabriel_Anacleto_Farias','47999999999',1);
CREATE USER 'Gabriel_Bitencourt_Cordeiro'@'localhost' IDENTIFIED BY 'Gabriel_Bitencourt_Cordeiro'; GRANT 'alunos' TO 'Gabriel_Bitencourt_Cordeiro'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Gabriel_Bitencourt_Cordeiro','47999999999',1);
CREATE USER 'Guilherme_Felipe_de_França'@'localhost' IDENTIFIED BY 'Guilherme_Felipe_de_França'; GRANT 'alunos' TO 'Guilherme_Felipe_de_França'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Guilherme_Felipe_de_França','47999999999',1);
CREATE USER 'Guilherme_Gonsales_Machado'@'localhost' IDENTIFIED BY 'Guilherme_Gonsales_Machado'; GRANT 'alunos' TO 'Guilherme_Gonsales_Machado'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Guilherme_Gonsales_Machado','47999999999',1);
CREATE USER 'Gustavo_Matteucci_Bitencourt_Medeiros'@'localhost' IDENTIFIED BY 'Gustavo_Matteucci_Bitencourt_Medeiros'; GRANT 'alunos' TO 'Gustavo_Matteucci_Bitencourt_Medeiros'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Gustavo_Matteucci_Bitencourt_Medeiros','47999999999',1);
CREATE USER 'Henrique_Éder_Anacleto'@'localhost' IDENTIFIED BY 'Henrique_Éder_Anacleto'; GRANT 'alunos' TO 'Henrique_Éder_Anacleto'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Henrique_Éder_Anacleto','47999999999',1);
CREATE USER 'Izabela_Bernado_Scatola'@'localhost' IDENTIFIED BY 'Izabela_Bernado_Scatola'; GRANT 'alunos' TO 'Izabela_Bernado_Scatola'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Izabela_Bernado_Scatola','47999999999',1);
CREATE USER 'João_Victor_dos_Santos'@'localhost' IDENTIFIED BY 'João_Victor_dos_Santos'; GRANT 'alunos' TO 'João_Victor_dos_Santos'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('João_Victor_dos_Santos','47999999999',1);
CREATE USER 'Kevin_Gabriel_Kuster_de_Souza_Corrêa'@'localhost' IDENTIFIED BY 'Kevin_Gabriel_Kuster_de_Souza_Corrêa'; GRANT 'alunos' TO 'Kevin_Gabriel_Kuster_de_Souza_Corrêa'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Kevin_Gabriel_Kuster_de_Souza_Corrêa','47999999999',1);
CREATE USER 'Lesly_Priscila_Souza_Gonzáles'@'localhost' IDENTIFIED BY 'Lesly_Priscila_Souza_Gonzáles'; GRANT 'alunos' TO 'Lesly_Priscila_Souza_Gonzáles'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Lesly_Priscila_Souza_Gonzáles','47999999999',1);
CREATE USER 'Lucas_Matteucci_Bitencourt_Medeiros'@'localhost' IDENTIFIED BY 'Lucas_Matteucci_Bitencourt_Medeiros'; GRANT 'alunos' TO 'Lucas_Matteucci_Bitencourt_Medeiros'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Lucas_Matteucci_Bitencourt_Medeiros','47999999999',1);
CREATE USER 'Matheus_Calda'@'localhost' IDENTIFIED BY 'Matheus_Calda'; GRANT 'alunos' TO 'Matheus_Calda'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Matheus_Calda','47999999999',1);
CREATE USER 'Murillo_de_Sousa_Batista'@'localhost' IDENTIFIED BY 'Murillo_de_Sousa_Batista'; GRANT 'alunos' TO 'Murillo_de_Sousa_Batista'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Murillo_de_Sousa_Batista','47999999999',1);
CREATE USER 'Nicolas_Augusto_Eickhoff_Alves'@'localhost' IDENTIFIED BY 'Nicolas_Augusto_Eickhoff_Alves'; GRANT 'alunos' TO 'Nicolas_Augusto_Eickhoff_Alves'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Nicolas_Augusto_Eickhoff_Alves','47999999999',1);
CREATE USER 'Pablo_Victor_Velinski'@'localhost' IDENTIFIED BY 'Pablo_Victor_Velinski'; GRANT 'alunos' TO 'Pablo_Victor_Velinski'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Pablo_Victor_Velinski','47999999999',1);
CREATE USER 'Pedro_Mariano_da_Silva'@'localhost' IDENTIFIED BY 'Pedro_Mariano_da_Silva'; GRANT 'alunos' TO 'Pedro_Mariano_da_Silva'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Pedro_Mariano_da_Silva','47999999999',1);
CREATE USER 'Rafaela_da_Silva_Ferreira'@'localhost' IDENTIFIED BY 'Rafaela_da_Silva_Ferreira'; GRANT 'alunos' TO 'Rafaela_da_Silva_Ferreira'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Rafaela_da_Silva_Ferreira','47999999999',1);
CREATE USER 'Rudinei_Martins_Kuhn'@'localhost' IDENTIFIED BY 'Rudinei_Martins_Kuhn'; GRANT 'alunos' TO 'Rudinei_Martins_Kuhn'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Rudinei_Martins_Kuhn','47999999999',1);
CREATE USER 'Tatiana_Santos'@'localhost' IDENTIFIED BY 'Tatiana_Santos'; GRANT 'alunos' TO 'Tatiana_Santos'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Tatiana_Santos','47999999999',1);
CREATE USER 'Vinicius_Gabriel_Mendes'@'localhost' IDENTIFIED BY 'Vinicius_Gabriel_Mendes'; GRANT 'alunos' TO 'Vinicius_Gabriel_Mendes'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Vinicius_Gabriel_Mendes','47999999999',1);
CREATE USER 'Vitor_Brais_Pagani'@'localhost' IDENTIFIED BY 'Vitor_Brais_Pagani'; GRANT 'alunos' TO 'Vitor_Brais_Pagani'@'localhost'; INSERT INTO aluno (nome_aluno,telefone_aluno,id_func) VALUES ('Vitor_Brais_Pagani','47999999999',1);

