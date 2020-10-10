/* cria o domínio descrição */
create domain descricao varchar(100) not null;

/* cria a tabela de usuário */
create table usuario(
    id_usuario  integer not null,
    nome        varchar(50) not null,
    senha       varchar(15) not null,
    tipo        varchar(15) not null,
    cadastro    date not null,
    constraint pk_usuario primary key(id_usuario));

/* cria a tabela de empresa */
create table empresa(
    id_empresa      integer not null,
    razao_social    varchar(100) not null,
    fantasia        varchar(60) not null,
    endereco        varchar(100) not null,
    numero          integer not null,
    bairro          varchar(60) not null,
    cidade          varchar(60) not null,
    uf              char(2) not null,
    cep             varchar(10) not null,
    telefone        varchar(14) not null,
    cnpj            varchar(18) not null,
    email           varchar(100) not null,
    cadastro        date not null,
    constraint pk_empresa primary key(id_empresa));
  
/* cria a tabela de fornecedores */
create table fornecedor(
    id_fornecedor   integer not null,
    nome            varchar(100) not null,
    endereco        varchar(100) not null,
    numero          integer not null,
    bairro          varchar(60) not null,
    cidade          varchar(60) not null,
    uf              char(2) not null,
    cep             varchar(10) not null,
    telefone        varchar(14) not null,
    cnpj            varchar(18) not null,
    email           varchar(100) not null,
    cadastro        date not null,
    constraint pk_fornecedor primary key(id_fornecedor));

/* cria a tabela de clientes */
create table cliente(
    id_cliente      integer not null,
    nome            varchar(100) not null,
    endereco        varchar(100) not null,
    numero          integer not null,
    bairro          varchar(60) not null,
    cidade          varchar(60) not null,
    uf              char(2) not null,
    cep             varchar(10) not null,
    telefone        varchar(14) not null,
    cnpj            varchar(18) not null,
    email           varchar(100) not null,
    cadastro        date not null,
    constraint pk_cliente primary key(id_cliente));

/* cria a tabela de produto */
create table produto(
    id_produto      integer not null,
    descricao       varchar(100) not null,
    id_fornecedor   integer not null,
    vl_custo        decimal(11,2) not null,
    vl_venda        decimal(11,2) not null,
    estoque         decimal(11,2) not null,
    estoque_minimo  decimal(11,2) not null,
    unidade         varchar(6),
    cadastro        date not null,
    constraint pk_produto primary key(id_produto),
    constraint fk_fornecedor_produto foreign key(id_fornecedor) references fornecedor(id_fornecedor));
  
/* cria a tabela de forma de pagamento */
create table forma_pgto(
    id_forma_pgto  integer not null,
    descricao       varchar(100) not null,
    cadastro        date not null,
    constraint pk_forma_pgto primary key(id_forma_pgto));

/* cria a tabela de compra */
create table compra(
    id_compra       integer not null,
    id_fornecedor   integer not null,
    id_forma_pgto   integer not null,
    USUARIO         varchar(50) not null,
    valor           decimal(11,2),
    cadastro        date not null,
    constraint pk_compra primary key(id_compra),
    constraint fk_fornecedor_compra foreign key(id_fornecedor) references fornecedor(id_fornecedor),
    constraint fk_forma_pgto_compra foreign key(id_forma_pgto) references forma_pgto(id_forma_pgto));
   
/* cria a tabela de itens de compra */
create table item_compra(
    id_sequencia integer not null,
    id_compra    integer not null,
    id_produto   integer not null,
    qtde         decimal(11,2) not null,
    vl_custo     decimal(11,2) not null,
    desconto     decimal(11,2),
    total_item   decimal(11,2) not null,
    constraint pk_item_compra primary key(id_sequencia, id_compra),
    constraint fk_compra_item_compra foreign key(id_compra) references compra(id_compra),
    constraint fk_produto_item_compra foreign key(id_produto) references produto(id_produto) on delete cascade);
   
/* cria a tabela de contas a pagar */
create table contas_pagar(
    id_sequencia    integer not null,
    id_compra       integer not null,
    valor_parcela   decimal(11,2) not null,
    dt_vencimento   date not null,
    dt_pagamento    date,
    atraseo         integer,
    juros           decimal(11,2),
    vl_juros        decimal(11,2),
    total_pagar     decimal(11,2),
    status          varchar(20),
    constraint pk_contas_pagar primary key(id_sequencia, id_compra),
    constraint fk_compras_contas_pagar foreign key(id_compra) references compra(id_compra) on delete cascade);

/* cria a tabela de venda */
create table venda(
    id_venda        integer not null,
    id_cliente      integer not null,
    id_forma_pgto   integer not null,
    usuario         varchar(50) not null,
    valor           decimal(11,2),
    cadastro        date not null,
    constraint pk_venda primary key(id_venda),
    constraint fk_cliente_venda foreign key(id_cliente) references cliente(id_cliente),
    constraint fk_forma_pgto_venda foreign key(id_forma_pgto) references forma_pgto(id_forma_pgto));
   
/* cria a tabela de itens de compra */
create table item_venda(
    id_sequencia    integer not null,
    id_venda        integer not null,
    id_produto      integer not null,
    qtde            decimal(11,2) not null,
    vl_custo        decimal(11,2) not null,
    desconto        decimal(11,2),
    total_item      decimal(11,2) not null,
    constraint pk_item_venda primary key(id_sequencia, id_venda),
    constraint fk_venda_item_venda foreign key(id_venda) references venda(id_venda),
    constraint fk_produto_item_venda foreign key(id_produto) references produto(id_produto) on delete cascade);
   
/* cria a tabela de contas a pagar */
create table contas_receber(
    id_sequencia    integer not null,
    id_venda        integer not null,
    valor_parcela   decimal(11,2) not null,
    dt_vencimento   date not null,
    dt_pagamento    date,
    atraso          integer,
    juros           decimal(11,2),
    vl_juros        decimal(11,2),
    total_pagar     decimal(11,2),
    status          varchar(20),
    constraint pk_contas_receber primary key(id_sequencia, id_venda),
    constraint fk_venda_contas_receber foreign key(id_venda) references venda(id_venda) on delete cascade);