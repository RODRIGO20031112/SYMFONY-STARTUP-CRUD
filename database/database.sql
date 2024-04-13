-- Database: vox-desafio

-- DROP DATABASE IF EXISTS "vox-desafio";

CREATE DATABASE "vox-desafio"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Portuguese_Brazil.1252'
    LC_CTYPE = 'Portuguese_Brazil.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
-- Criar a tabela EMPRESAS
CREATE TABLE EMPRESAS (
    ID SERIAL PRIMARY KEY,
    NOME_EMPRESA VARCHAR(100),
    DATA DATE
);

-- Criar a tabela SÓCIOS
CREATE TABLE SOCIOS (
    ID SERIAL PRIMARY KEY,
    ID_EMPRESA INT REFERENCES EMPRESAS(ID),
    NOME_SOCIO VARCHAR(100),
    DATA DATE,
    FOREIGN KEY (ID_EMPRESA) REFERENCES EMPRESAS(ID) ON DELETE CASCADE
);