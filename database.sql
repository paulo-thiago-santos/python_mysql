CREATE DATABASE IF NOT EXISTS escola;
use escola;

-- CREATE TABLE IF NOT EXISTS funcionario (
--     id_func INT PRIMARY KEY AUTO_INCREMENT,
--     nome_func VARCHAR(500) NOT NULL,
--     telefone_func VARCHAR(20) NOT NULL,
--     cargo_func INT NOT NULL DEFAULT 0,
--     status BOOLEAN NOT NULL DEFAULT TRUE,
--     UNIQUE (telefone_func)
-- );

-- CREATE TABLE IF NOT EXISTS aluno (
--     id_aluno INT PRIMARY KEY AUTO_INCREMENT,
--     nome_aluno VARCHAR(500) NOT NULL,
--     telefone_aluno VARCHAR(20) NOT NULL,
--     nota_aluno INT DEFAULT 0,
--     status_aluno BOOLEAN NOT NULL DEFAULT TRUE,
--     id_func INT,
--     UNIQUE (telefone_aluno),
--     FOREIGN KEY (id_func)
--         REFERENCES funcionario(id_func)
-- );

-- CREATE ROLE IF NOT EXISTS 'professores';
-- GRANT SELECT (nome_aluno, nota_aluno) ON escola.aluno TO 'professores'; 
-- GRANT UPDATE (nota_aluno) ON escola.aluno TO 'professores';

-- CREATE ROLE IF NOT EXISTS 'secretarios';
-- GRANT SELECT ON escola.aluno TO 'secretarios';
-- GRANT SELECT ON escola.funcionario TO 'secretarios';
-- GRANT UPDATE ON escola.aluno TO 'secretarios';

-- CREATE ROLE IF NOT EXISTS 'gestores';
-- GRANT SELECT ON escola.aluno TO 'gestores';
-- GRANT SELECT ON escola.funcionario TO 'gestores';
-- GRANT UPDATE ON escola.funcionario TO 'gestores';

-- CREATE ROLE IF NOT EXISTS 'alunos';
-- GRANT SELECT (nome_func, cargo_func) ON escola.funcionario TO 'alunos';

-- CREATE USER IF NOT EXISTS 'prof'@'localhost' IDENTIFIED BY 'profprof';
-- GRANT 'professores' TO 'prof'@'localhost';

-- CREATE USER IF NOT EXISTS 'sec'@'localhost' IDENTIFIED BY 'secsec';
-- GRANT 'secretarios' TO 'sec'@'localhost';

-- CREATE USER IF NOT EXISTS 'ger'@'localhost' IDENTIFIED BY 'gerger';
-- GRANT 'gestores' TO 'ger'@'localhost';

-- CREATE USER IF NOT EXISTS 'alu'@'localhost' IDENTIFIED BY 'alualu';
-- GRANT 'alunos' TO 'alu'@'localhost';



-- INSERT INTO funcionario (nome_func, telefone_func) VALUES ('Prof01', '47999999999');
-- INSERT INTO funcionario (nome_func, telefone_func) VALUES ('Prof02', '47999999995');

-- SELECT * FROM funcionario;

-- INSERT INTO aluno (nome_aluno, telefone_aluno, id_func) VALUES ('Aluno01', '47999999997', 1);
-- INSERT INTO aluno (nome_aluno, telefone_aluno, id_func) VALUES ('Aluno02', '47999999998', 1);

-- SELECT * FROM aluno;
