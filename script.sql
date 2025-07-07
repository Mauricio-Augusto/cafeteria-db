-- Criação das tabelas
CREATE TABLE produtos (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    preco REAL NOT NULL
);

CREATE TABLE pedidos (
    id INTEGER PRIMARY KEY,
    data DATE NOT NULL,
    cliente_nome TEXT NOT NULL
);

CREATE TABLE itens_pedido (
    id INTEGER PRIMARY KEY,
    pedido_id INTEGER,
    produto_id INTEGER,
    quantidade INTEGER,
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserção de produtos
INSERT INTO produtos (id, nome, preco) VALUES (1, 'Café Expresso', 5.50);
INSERT INTO produtos (id, nome, preco) VALUES (2, 'Pão de Queijo', 3.00);
INSERT INTO produtos (id, nome, preco) VALUES (3, 'Capuccino', 6.00);

-- Inserção de pedidos
INSERT INTO pedidos (id, data, cliente_nome) VALUES (1, '2025-07-07', 'João Silva');
INSERT INTO pedidos (id, data, cliente_nome) VALUES (2, '2025-07-07', 'Maria Oliveira');
INSERT INTO pedidos (id, data, cliente_nome) VALUES (3, '2025-07-06', 'Carlos Souza');

-- Inserção de itens em pedidos
INSERT INTO itens_pedido (id, pedido_id, produto_id, quantidade) VALUES (1, 1, 1, 2); -- 2 Cafés para João
INSERT INTO itens_pedido (id, pedido_id, produto_id, quantidade) VALUES (2, 1, 2, 1); -- 1 Pão de Queijo para João
INSERT INTO itens_pedido (id, pedido_id, produto_id, quantidade) VALUES (3, 2, 3, 1); -- 1 Capuccino para Maria
