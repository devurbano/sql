create database if not exists ecommerce;
use ecommerce;

create table cliente
(
	idCliente int auto_increment primary key not null,
    Fname varchar(10) not null,
    Minit char(3) not null,
    Lname varchar(20) not null,
    CPF char(11) not null,
    rua varchar(45),
    bairro varchar(45),
    complemento varchar(45),
    cidade varchar(45),
    estado char(2),
    Birthdate date not null,
    email varchar(40) not null,
    fone char(11) not null,
	constraint unique_cpf_client unique (CPF)
);

create table produto
(
	idProduto int auto_increment primary key not null,
    Pname varchar(20) not null,
    descricao varchar(45) not null,
    categoria enum ('Eletronico','Roupa','Sapatos','Brinquedos') not null,
    avaliacao float,
    tamanho varchar(2),
    cor varchar(10),
    vlr_Venda float not null,
    custo float not null,
    storage_Location int
);

create table ordems
(
	idOrder int auto_increment primary key not null,
    id_order_cliente int not null,
    Order_status enum ('Cancelado', 'Processando', 'Enviado', 'Entregue') default 'Processando',
    Order_descricao varchar(245),
    Freight float,
    pgt_cash bool default false,
    constraint fk_order_client foreign key (id_order_cliente) references cliente(idCliente)
    on update cascade
);

create table pagamento
(
	idPagamento int auto_increment primary key not null,
	id_pgt_Cliente int not null,
    id_pgt_Pedido int not null,
	data_hora_pgt datetime,
	Desc_pgt float,
	dt_validade date,
	valor_pgt float,
	type_payment ENUM ('Cartão de crédito','Boleto','Cartão de débito','Pix','Dois cartões'),
	n_transacao varchar(120) unique,
	Status_pgt ENUM ('Cancelado', 'Processando', 'Enviado', 'Entregue'),
    constraint fk_pgt_cliente FOREIGN KEY (id_pgt_Cliente) REFERENCES cliente(idCliente),
    constraint fk_pgt_pedido FOREIGN KEY (id_pgt_Pedido) REFERENCES ordems(idOrder)
);

create table vendedor
(
	idVendedor int auto_increment not null primary key,
    RSocial varchar(45) not null,
    cnpj_vendedor char(14) not null,
	cpf_vendedor char(11) not null,
    Nfantasia varchar(45),
    rua varchar(45),
    bairro varchar(45),
    complemento varchar(45),
    cidade varchar(45),
    estado char(2),
    email varchar(40) not null,
    fone char(11) not null,
    constraint unique_cnpj_vendedor unique(cnpj_vendedor),
    constraint unique_cpf_vendedor unique(cpf_vendedor)
);

create table fornecedor
(
	idFornecedor int auto_increment not null primary key,
    RSocial varchar(45) not null,
    cnpj_fornecedor char(14) unique not null,
    Nfantasia varchar(45),
    contato char (11) not null,
    constraint unique_cnpj unique(cnpj_fornecedor)
);

create table estoque
(
	idEstoque int auto_increment not null primary key,
    id_Estoque_Produto int not null,
    qtd_estoque int not null,
    data_entrada date,
    status_estoque enum('Disponivel','Sem estoque'),
    localizacao_estoque varchar(100),
    constraint fk_e_produto foreign key(id_Estoque_Produto) references produto(idProduto)
);

create table produto_vendedor
(
	id_pd_Vendedor int not null,
    id_pd_Produto int not null,
    quantidade int not null,
    data_venda date not null,
    status_venda enum('Faturamento', 'Pagamento', 'Enviado'),
    primary key (id_pd_Vendedor, id_pd_Produto),
    constraint fk_pd_vendedor foreign key(id_pd_Vendedor) references vendedor(idVendedor),
    constraint fk_pd_produto foreign key(id_pd_Produto) references produto(idProduto)
);

create table produto_fornecedor
(
	id_pf_Produto int not null,
    id_pf_Fornecedor int not null,
    quantidade int not null,
    data_compra date not null,
    primary key (id_pf_Produto, id_pf_Fornecedor),
    constraint fk_pf_produto foreign key(id_pf_Produto) references produto(idProduto),
    constraint fk_pf_Fornecedor foreign key(id_pf_Fornecedor) references fornecedor(idFornecedor)
);

create table produto_pedido
(
	id_pp_Produto int not null,
    id_pp_Ordem int not null,
    quantidade int,
    status_pedido ENUM('Pedido em Atraso', 'Pedido Completo', 'Pedido Pendente', 'Pedido Cancelado', 'Pedido Entregue', 'Pedido Devolvido'),
    data_pedido date,
    primary key (id_pp_Produto, id_pp_Ordem),
    constraint fk_pp_produto foreign key(id_pp_Produto) references produto(idProduto),
    constraint fk_pp_pedido foreign key (id_pp_Ordem) references ordems(idOrder)
);