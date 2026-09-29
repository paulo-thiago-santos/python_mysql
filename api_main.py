#venv\Scripts\python.exe -m pip install fastapi uvicorn sqlalchemy pymysql mysql-connector-python
#venv\Scripts\python.exe -m uvicorn main:app --host 0.0.0.0 --port 8000

# import mysql.connector
# conexao = mysql.connector.connect(
#     host="localhost",
#     user="root",
#     password="",
#     port=3306
# )

# if conexao.is_connected():
#     print("Conectado ao MySQL com sucesso!")
#     terminal = conexao.cursor()
#     str_to_execute = """
#         CREATE DATABASE escola;
#         USE escola;
#         CREATE TABLE alunos (
#             id INT AUTO_INCREMENT PRIMARY KEY,
#             nome VARCHAR(100) NOT NULL,
#             email VARCHAR(150),
#             saldo INT);
#     """
#     terminal.execute(str_to_execute)
# exit()


from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
from sqlalchemy import create_engine, Column, Integer, String
from sqlalchemy.orm import declarative_base, sessionmaker

app = FastAPI()

DATABASE_URL = "mysql+pymysql://root:@localhost:3306/escola"

engine = create_engine(DATABASE_URL)
Base = declarative_base()
Base.metadata.create_all(bind=engine)

SessionLocal = sessionmaker(
    autocommit=False,
    autoflush=False,
    bind=engine
)

class Aluno(Base):
    __tablename__ = "alunos"

    id = Column(Integer, primary_key=True, index=True)
    nome = Column(String(100), nullable=False)
    email = Column(String(150))
    saldo = Column(Integer)

class AlunoRequest(BaseModel):
    nome: str
    email: str | None = None
    saldo: int | None = None

@app.post("/alunos")
def criar_aluno(aluno: AlunoRequest):
    db = SessionLocal()
    novo_aluno = Aluno(
        nome=aluno.nome,
        email=aluno.email,
        saldo=aluno.saldo
    )
    db.add(novo_aluno)
    db.commit()
    db.refresh(novo_aluno)
    db.close()
    return novo_aluno

@app.get("/alunos")
def listar_alunos():
    db = SessionLocal()
    alunos = db.query(Aluno).all()
    db.close()
    return alunos

@app.get("/alunos/{aluno_id}")
def buscar_aluno(aluno_id: int):
    db = SessionLocal()
    aluno = db.query(Aluno).filter(Aluno.id == aluno_id).first()
    db.close()
    if aluno is None:
        raise HTTPException(status_code=404, detail="Aluno não encontrado")
    return aluno

@app.put("/alunos/{aluno_id}")
def atualizar_aluno(aluno_id: int, dados: AlunoRequest):
    db = SessionLocal()
    aluno = db.query(Aluno).filter(Aluno.id == aluno_id).first()
    if aluno is None:
        db.close()
        raise HTTPException(status_code=404,detail="Aluno não encontrado")
    aluno.nome = dados.nome
    aluno.email = dados.email
    aluno.saldo = dados.saldo
    db.commit()
    db.refresh(aluno)
    db.close()
    return aluno

@app.delete("/alunos/{aluno_id}")
def excluir_aluno(aluno_id: int):
    db = SessionLocal()
    aluno = db.query(Aluno).filter(Aluno.id == aluno_id).first()
    if aluno is None:
        db.close()
        raise HTTPException(status_code=404, detail="Aluno não encontrado")
    db.delete(aluno)
    db.commit()
    db.close()
    return {
        "mensagem": "Aluno excluído",
        "id": aluno_id
    }
