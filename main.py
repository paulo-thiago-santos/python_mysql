import mysql.connector

conexao = mysql.connector.connect(
    host="localhost",
    user="root",
    password="sua_senha",
    database="escola"
)

terminal = conexao.cursor()

ALUNO = "<NOME_DO_ALUNO>"

# CREATE DATABASE

str_to_execute = f"CREATE DATABASE {ALUNO}_db;"
terminal.execute(str_to_execute)

str_to_execute = f"USE {ALUNO}_db"
terminal.execute(str_to_execute)

# CREATE TABLE
str_to_execute = """
    CREATE TABLE alunos (
        id INT PRIMARY KEY AUTO_INCREMENT,
        nome VARCHAR(100) NOT NULL,
        email VARCHAR(150)
    )
"""
terminal.execute(str_to_execute)
