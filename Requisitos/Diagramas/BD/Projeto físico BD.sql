CREATE TABLE IF NOT EXISTS categorias (
	ctg_codigo SERIAL PRIMARY KEY,
	ctg_nome VARCHAR(20) NOT NULL UNIQUE,
	ctg_status BOOL NOT NULL DEFAULT TRUE
);

CREATE TABLE IF NOT EXISTS formaDePagamento (
	frmPgmto_codigo SERIAL PRIMARY KEY,
	frmPgmto_tipo VARCHAR(20) NOT NULL,
	frmPgmto_descricao VARCHAR(30) NOT NULL,
	frmPgmto_instituicaoFin VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS receita (
	rct_codigo SERIAL PRIMARY KEY,
	rct_tipoLancamento VARCHAR(20) NOT NULL,
	rct_modeloLancamento VARCHAR(20) NOT NULL,
	rct_descricao VARCHAR(60) NOT NULL,
	rct_dataCadastro DATE NOT NULL,
	rct_dataDeRecebimento DATE NOT NULL,
	rct_categoria INT4 NOT NULL,
	rct_valor FLOAT8 NOT NULL,
	rct_frmPagmto INT4 NOT NULL,
	CONSTRAINT fk_categoria FOREIGN KEY(rct_categoria) REFERENCES categorias(ctg_codigo),
	CONSTRAINT fk_frmPgmto FOREIGN KEY(rct_frmPagmto) REFERENCES formaDePagamento(frmPgmto_codigo)
);

CREATE TABLE IF NOT EXISTS despesa (
	rct_codigo SERIAL PRIMARY KEY,
	rct_tipoLancamento VARCHAR(20) NOT NULL,
	rct_modeloLancamento VARCHAR(20) NOT NULL,
	rct_descricao VARCHAR(60) NOT NULL,
	rct_dataCadastro DATE NOT NULL,
	rct_dataDeVencimento DATE NOT NULL,
	rct_dataDePagamento DATE,
	rct_categoria INT4 NOT NULL,
	rct_valor FLOAT8 NOT NULL,
	rct_frmPagmto INT4 NOT NULL,
	CONSTRAINT fk_categoria FOREIGN KEY(rct_categoria) REFERENCES categorias(ctg_codigo),
	CONSTRAINT fk_frmPgmto FOREIGN KEY(rct_frmPagmto) REFERENCES formaDePagamento(frmPgmto_codigo)
);