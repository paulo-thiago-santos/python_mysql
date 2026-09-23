# venv\Scripts\python.exe -m pip install mysql-connector-python
import mysql.connector

ALUNO = "paulo"

conexao = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    port=3306
)

if conexao.is_connected():
    print("Conectado ao MySQL com sucesso!")

    terminal = conexao.cursor()

    # ############CREATE DATABASE##################

    #str_to_execute = f"CREATE DATABASE {ALUNO}_db;"
    #terminal.execute(str_to_execute)
    # str_to_execute = "SHOW DATABASES"
    # terminal.execute(str_to_execute)
    # for banco in terminal:
    #     print(banco[0])

    # str_to_execute = f"USE {ALUNO}_db"
    # terminal.execute(str_to_execute)

    # ##############################################
    # ##################CREATE TABLE#################

    # str_to_execute = """
    #     CREATE TABLE alunos (
    #         id INT PRIMARY KEY AUTO_INCREMENT,
    #         nome VARCHAR(100) NOT NULL,
    #         email VARCHAR(150)
    #     )
    # """
    # terminal.execute(str_to_execute)
    # str_to_execute = "SHOW TABLES"
    # terminal.execute(str_to_execute)
    # tabelas = terminal.fetchall()
    # for tabela in tabelas:
    #     print(tabela[0])
    
    #######################################
    #############ALTER TABLE ##############

    # str_to_execute = "ALTER TABLE alunos ADD telefone VARCHAR(20);"
    # terminal.execute(str_to_execute)
    # str_to_execute = "SHOW COLUMNS FROM alunos"
    # terminal.execute(str_to_execute)
    # colunas = terminal.fetchall()
    # for coluna in colunas:
    #     print(coluna)

    # str_to_execute = "ALTER TABLE alunos MODIFY telefone int;"
    # terminal.execute(str_to_execute)
    # str_to_execute = "SHOW COLUMNS FROM alunos"
    # terminal.execute(str_to_execute)
    # colunas = terminal.fetchall()
    # for coluna in colunas:
    #     print(coluna)

    # str_to_execute = "ALTER TABLE alunos DROP COLUMN telefone;"
    # terminal.execute(str_to_execute)
    # str_to_execute = "SHOW COLUMNS FROM alunos"
    # terminal.execute(str_to_execute)
    # colunas = terminal.fetchall()
    # for coluna in colunas:
    #     print(coluna)

    ###########################################
    ##############DROP#########################

    # str_to_execute = "SHOW TABLES"
    # terminal.execute(str_to_execute)
    # tabelas = terminal.fetchall()
    # for tabela in tabelas:
    #     print(tabela[0])
    # str_to_execute = f"DROP TABLE alunos;"
    # terminal.execute(str_to_execute)
    # str_to_execute = "SHOW TABLES"
    # terminal.execute(str_to_execute)
    # tabelas = terminal.fetchall()
    # for tabela in tabelas:
    #     print(tabela[0])
    
    # str_to_execute = "SHOW DATABASES"
    # terminal.execute(str_to_execute)
    # for banco in terminal:
    #     print(banco[0])
    # str_to_execute = f"DROP DATABASE {ALUNO}_db;"
    # terminal.execute(str_to_execute)
    # conexao.commit()
    # str_to_execute = "SHOW DATABASES"
    # terminal.execute(str_to_execute)
    # for banco in terminal:
    #     print(banco[0])

    conexao.close()
