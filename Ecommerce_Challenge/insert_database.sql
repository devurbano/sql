use ecommerce;
INSERT INTO cliente(Fname, Minit, Lname, CPF, rua, bairro, complemento, cidade, estado, Birthdate, email, fone) values
				   ('Carla', 'M', 'Pereira', 11223344556, 'Rua João, 22', 'Braz Mathias','casa','São Paulo', 'SP', '1998-06-19', 'carlin@yahoo.com.br', 37975787525),
				   ('Raissa','F', 'Rocha', 22113344556, 'Rua Formosa, 23', 'Braz Mathias','casa','São Paulo', 'SP', '1994-01-04', 'rah.rocha@outlook.com', 47938282922),
				   ('Tânia', 'G', 'Dias',33445566778, 'Rua dos bobos, 33', 'Braz','sobrado','São Paulo', 'SP', '1998-06-19', 'gdiastan@gmail.com', 37975787525),
				   ('Nicolash', 'P', 'Castro',99887700112, 'Avenida Paçoca, 45', 'Mathias','casa','São Paulo', 'SP', '1987-11-23', 'niconi@hotmail.com', 11952932383),
				   ('Thiago', 'L', 'Santos',11990088771, 'Rua Professora M', 'Tekomi Oboga','apt','São Paulo', 'SP', '1983-09-01', 'thi_lsantos@yahoo.com.br', 16973706639);

INSERT INTO produto (Pname, descricao, categoria, avaliacao, tamanho, cor, vlr_Venda, custo, storage_Location) values
					('Vestido', 'Vestido floral feminino', 'Roupa', 10, 'M', 'Azul', 89.99, 20, 1),
					('Fone de Ouvido Gamer', 'Fone de ouvido gamer xpto', 'Eletronico', 6, null, 'Preto', 189.99, 100, 3),
					('Tenis de corrida', 'Tenis de corrida feminino', 'Sapatos', 10, 40, 'Vermelho', 99.99, 30, 2),
					('Boneca Monster High', 'Boneca Monster High', 'Brinquedos', 9, null, null, 290.99, 50, 4),
					('Calça', 'Calça do tipo skinny c/ tem elastano', 'Roupa', 10, 'G', 'Cinza', 90, 20, 1);

INSERT INTO ordems (id_order_cliente, Order_status, Order_descricao, Freight, pgt_cash) values 
				   (1, 'Processando', 'Compra de produtos', 20, true),
				   (2, 'Enviado', 'Compra de tenis', 20, true),
				   (3, 'Entregue', 'Compra de produtos', 20, true),
				   (4, 'Cancelado', 'Compra de produtos', 20, true),
				   (5, 'Processando', 'Compra de produtos', 20, true);
                   
INSERT INTO pagamento (id_pgt_Cliente, id_pgt_Pedido, data_hora_pgt, Desc_pgt, dt_validade, valor_pgt, type_payment, n_transacao, Status_pgt) values
					  (1, 3, '2023-09-04 14:30:00', 20, null, 190, 'Cartão de crédito', '12223332', 'Processando'),
					  (2, 2, '2023-09-03 14:30:00', 10, '2023-12-03', 290, 'Cartão de crédito', '24332323', 'Processando'),
                      (3, 1, '2023-09-01 14:30:00', 0, null, 90, 'Cartão de crédito', '2333232', 'Processando'),
                      (4, 5, '2023-09-02 14:30:00', 05, '2024-12-03', 120, 'Cartão de crédito', '322323', 'Processando'),
                      (5, 4, '2023-09-01 14:30:00', 15, null, 390, 'Cartão de crédito', '23423423', 'Processando');

INSERT INTO vendedor (RSocial, cnpj_vendedor, cpf_vendedor, Nfantasia, rua, bairro, complemento, cidade, estado, email, fone) values
					 ('Vendedor 1', '12345678901234', '12345678901', 'Fantasia 1', 'Rua 1', 'Bairro 1', 'Complemento 1', 'Cidade 1', 'SP', 'email1@example.com', '11111111111'),
					 ('Vendedor 2', '23456789012345', '23456789012', 'Fantasia 2', 'Rua 2', 'Bairro 2', 'Complemento 2', 'Cidade 2', 'RJ', 'email2@example.com', '22222222222'),
					 ('Vendedor 3', '34567890123456', '34567890123', 'Fantasia 3', 'Rua 3', 'Bairro 3', 'Complemento 3', 'Cidade 3', 'GO', 'email3@example.com', '33333333333'),
					 ('Vendedor 4', '45678901234567', '45678901234', 'Fantasia 4', 'Rua 4', 'Bairro 4', 'Complemento 4', 'Cidade 4', 'CE', 'email4@example.com', '44444444444'),
					 ('Vendedor 5', '56789012345678', '56789012345', 'Fantasia 5', 'Rua 5', 'Bairro 5', 'Complemento 5', 'Cidade 5', 'PI', 'email5@example.com', '55555555555');

INSERT INTO fornecedor (RSocial, cnpj_fornecedor, Nfantasia, contato) values
					   ('Fornecedor 1', '12345678901234', 'Fantasia 1', '11111111111'),
					   ('Fornecedor 2', '56789012345678', 'Fantasia 2', '22222222222'),
					   ('Fornecedor 3', '90123456789012', 'Fantasia 3', '33333333333'),
					   ('Fornecedor 4', '23456789012345', 'Fantasia 4', '44444444444'),
					   ('Fornecedor 5', '67890123456789', 'Fantasia 5', '55555555555');

INSERT INTO estoque (id_Estoque_Produto, qtd_estoque, data_entrada, status_estoque, localizacao_estoque) values
					(1, 100, '2023-09-04', 'Disponivel', 'Localizacao 1'),
					(2, 50, '2023-09-05', 'Disponivel', 'Localizacao 2'),
					(3, 75, '2023-09-06', 'Disponivel', 'Localizacao 3'),
					(4, 0, '2023-09-07', 'Sem estoque', 'Localizacao 4'),
					(5, 200, '2023-09-08', 'Disponivel', 'Localizacao 5');

INSERT INTO produto_vendedor (id_pd_Vendedor, id_pd_Produto, quantidade, data_venda, status_venda) values
							 (1, 5, 100, '2023-09-01', 'Faturamento'),
							 (2, 4, 50, '2023-09-02', 'Pagamento'),
							 (3, 3, 25, '2023-09-03', 'Enviado'),
							 (4, 2, 40, '2023-09-04', 'Faturamento'),
  							 (5, 1, 19, '2023-09-05', 'Pagamento');

INSERT INTO produto_fornecedor (id_pf_Produto, id_pf_Fornecedor, quantidade, data_compra) values
							   (1, 10, 100, '2023-09-04'),
							   (2, 8, 200, '2023-09-05'),
							   (3, 9, 150, '2023-09-06'),
							   (4, 7, 205, '2023-09-07'),
							   (5, 6, 300, '2023-09-08');


INSERT INTO produto_pedido (id_pp_Produto, id_pp_Ordem, quantidade, status_pedido, data_pedido) values
						   (1, 5, 20, 'Pedido Completo', '2023-09-04'),
						   (2, 3, 13, 'Pedido Pendente', '2023-09-05'),
						   (3, 4, 20, 'Pedido Entregue', '2023-09-06'),
						   (4, 2, 1, 'Pedido Cancelado', '2023-09-07'),
						   (5, 1, 40, 'Pedido Completo', '2023-09-08');