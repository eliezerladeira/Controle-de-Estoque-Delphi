/* cria o generator para o campo id_usuario */
CREATE GENERATOR GEN_ID_USUARIO;

/* cria a trigger para usuario */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_USUARIO FOR USUARIO ACTIVE 
 BEFORE INSERT POSITION 0
AS 
BEGIN 
    NEW.ID_USUARIO = gen_id(GEN_ID_USUARIO,1);
END^

SET TERM ; ^

/* cria o generator para o campo id_cliente */
CREATE GENERATOR GEN_ID_CLIENTE;

/* cria a trigger para cliente */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_CLIENTE FOR CLIENTE ACTIVE 
 BEFORE INSERT POSITION 0
AS 
BEGIN 
    NEW.ID_CLIENTE = gen_id(GEN_ID_CLIENTE,1);
END^

SET TERM ; ^

/* cria o generator para o campo id_empresa */
CREATE GENERATOR GEN_ID_EMPRESA;

/* cria a trigger para empresa */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_EMPRESA FOR EMPRESA ACTIVE 
 BEFORE INSERT POSITION 0
AS 
BEGIN 
    NEW.ID_EMPRESA = gen_id(GEN_ID_EMPRESA,1);
END^

SET TERM ; ^

/* cria o generator para o campo id_fornecedores */
CREATE GENERATOR GEN_ID_FORNECEDOR;

/* cria a trigger para fornecedor */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_FORNECEDOR FOR FORNECEDOR ACTIVE 
 BEFORE INSERT POSITION 0
AS 
BEGIN 
    NEW.ID_FORNECEDOR = gen_id(GEN_ID_FORNECEDOR,1);
END^

SET TERM ; ^

/* cria o generator para o campo id_produto */
CREATE GENERATOR GEN_ID_PRODUTO;

/* cria a trigger para produtos */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_PRODUTO FOR PRODUTO ACTIVE 
 BEFORE INSERT POSITION 0
AS 
BEGIN 
    NEW.ID_PRODUTO = gen_id(GEN_ID_PRODUTO,1);
END^

SET TERM ; ^

/* cria o generator para o campo id_forma_pagto */
CREATE GENERATOR GEN_ID_FORMA_PGTO;

/* cria a trigger para forma de pagamento */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_FORMA_PGTO FOR FORMA_PGTO ACTIVE 
 BEFORE INSERT POSITION 0
AS 
BEGIN 
    NEW.ID_FORMA_PGTO = gen_id(GEN_ID_FORMA_PGTO,1);
END^

SET TERM ; ^

/* cria o generator para o campo id_compra */
CREATE GENERATOR GEN_ID_COMPRA;

/* cria a trigger para compra */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_COMPRA FOR COMPRA ACTIVE 
 BEFORE INSERT POSITION 0
AS 
BEGIN 
    NEW.ID_COMPRA = gen_id(GEN_ID_COMPRA,1);
END^

SET TERM ; ^

/* cria o generator para o campo id_venda */
CREATE GENERATOR GEN_ID_VENDA;

/* cria a trigger para venda */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_VENDA FOR VENDA ACTIVE 
 BEFORE INSERT POSITION 0
AS 
BEGIN 
    NEW.ID_VENDA = gen_id(GEN_ID_VENDA,1);
END^

SET TERM ; ^
