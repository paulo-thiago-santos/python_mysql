CREATE DATABASE IF NOT EXISTS escola;
use escola;

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
GRANT SELECT (nome_aluno, nota_aluno) ON escola.aluno TO 'professores'; 
GRANT UPDATE (nota_aluno) ON escola.aluno TO 'professores';

CREATE ROLE IF NOT EXISTS 'secretarios';
GRANT SELECT ON escola.aluno TO 'secretarios';
GRANT SELECT ON escola.funcionario TO 'secretarios';
GRANT UPDATE ON escola.aluno TO 'secretarios';

CREATE ROLE IF NOT EXISTS 'gestores';
GRANT SELECT ON escola.aluno TO 'gestores';
GRANT SELECT ON escola.funcionario TO 'gestores';
GRANT UPDATE ON escola.funcionario TO 'gestores';

CREATE ROLE IF NOT EXISTS 'alunos';
GRANT SELECT (nome_func, cargo_func) ON escola.funcionario TO 'alunos';
