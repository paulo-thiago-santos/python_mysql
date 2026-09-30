docker run -d \
  --name mysql-server \
  -p 3306:3306 \
  -e MYSQL_ROOT_PASSWORD=123456 \
  -e MYSQL_DATABASE=escola \
  -e MYSQL_USER=usuario \
  -e MYSQL_PASSWORD=123456 \
  mysql:8.4


import mysql.connector

conexao = mysql.connector.connect(
    host="localhost",
    port=3306,
    user="root",
    password="123456",
    database="escola"
)

cursor = conexao.cursor()

with open("database.sql", "r", encoding="utf-8") as arquivo:
    sql = arquivo.read()

for comando in sql.split(";"):
    comando = comando.strip()

    if comando:
        cursor.execute(comando)

conexao.commit()

cursor.close()
conexao.close()

print("Arquivo SQL executado com sucesso!")
