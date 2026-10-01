CREATE DATABASE IF NOT EXISTS escolay;
use escolay;

CREATE TABLE IF NOT EXISTS funcionario (
    id_func INT PRIMARY KEY AUTO_INCREMENT,
    nome_func VARCHAR(500) NOT NULL,
    telefone_func VARCHAR(20) NOT NULL,
    cargo_func INT NOT NULL DEFAULT 0,
    status BOOLEAN NOT NULL DEFAULT TRUE,
    UNIQUE (telefone_func)
);

CREATE TABLE IF NOT EXISTS aluno (
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

CREATE ROLE IF NOT EXISTS 'professores';
GRANT USAGE ON escolay.* TO 'professores';
GRANT SELECT (nome_aluno, nota_aluno) ON escolay.aluno TO 'professores'; 
GRANT UPDATE (nota_aluno) ON escolay.aluno TO 'professores';

CREATE ROLE IF NOT EXISTS 'secretarios';
GRANT USAGE ON escolay.* TO 'secretarios';
GRANT SELECT ON escolay.aluno TO 'secretarios';
GRANT SELECT ON escolay.funcionario TO 'secretarios';
GRANT UPDATE ON escolay.aluno TO 'secretarios';

CREATE ROLE IF NOT EXISTS 'gestores';
GRANT USAGE ON escolay.* TO 'gestores';
GRANT SELECT ON escolay.aluno TO 'gestores';
GRANT SELECT ON escolay.funcionario TO 'gestores';
GRANT UPDATE ON escolay.funcionario TO 'gestores';

CREATE ROLE IF NOT EXISTS 'alunos';
GRANT USAGE ON escolay.* TO 'alunos';
GRANT SELECT (nome_func, cargo_func) ON escolay.funcionario TO 'alunos';

CREATE USER IF NOT EXISTS 'prof'@'localhost' IDENTIFIED BY 'profprof';
GRANT 'professores' TO 'prof'@'localhost';
SET DEFAULT ROLE professores FOR 'prof'@'localhost';

CREATE USER IF NOT EXISTS 'sec'@'localhost' IDENTIFIED BY 'secsec';
GRANT 'secretarios' TO 'sec'@'localhost';
SET DEFAULT ROLE secretarios FOR 'sec'@'localhost';

CREATE USER IF NOT EXISTS 'ger'@'localhost' IDENTIFIED BY 'gerger';
GRANT 'gestores' TO 'ger'@'localhost';
SET DEFAULT ROLE gestores FOR 'ger'@'localhost';

CREATE USER IF NOT EXISTS 'alu'@'localhost' IDENTIFIED BY 'alualu';
GRANT 'alunos' TO 'alu'@'localhost';
SET DEFAULT ROLE alunos FOR 'alu'@'localhost';


INSERT INTO funcionario (nome_func, telefone_func) VALUES ('Prof01', '47999999999');
INSERT INTO funcionario (nome_func, telefone_func) VALUES ('Prof02', '47999999995');

SELECT * FROM funcionario;

INSERT INTO aluno (nome_aluno, telefone_aluno, id_func) VALUES ('Aluno01', '47999999997', 1);
INSERT INTO aluno (nome_aluno, telefone_aluno, id_func) VALUES ('Aluno02', '47999999998', 2);

SELECT * FROM aluno;

-- SELECT nome_func FROM funcionario;


