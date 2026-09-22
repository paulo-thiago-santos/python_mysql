import mysql.connector

conexao = mysql.connector.connect(
    host="localhost",
    user="root",
    password="sua_senha",
    database="escola"
)

cursor = conexao.cursor()

cursor.execute("SELECT * FROM alunos")
