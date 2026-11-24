
-- Projeto: SeguroSmartphone
-- Insercao de clientes - Issue #6

USE SeguroSmartphone;
GO

INSERT INTO dbo.cliente
    (nm_cliente, nr_cpf, ds_email, nr_telefone, dt_nascimento)
SELECT
    v.nm_cliente,
    v.nr_cpf,
    v.ds_email,
    v.nr_telefone,
    v.dt_nascimento
FROM (VALUES
    ('Joao Silva', '00000000001', 'joao@email.example', '48990000001', '1995-03-12'),
    ('Maria Santos', '00000000002', 'maria@email.example', '48990000002', '1992-07-21'),
    ('Pedro Oliveira', '00000000003', 'pedro@email.example', '48990000003', '1998-11-05'),
    ('Ana Costa', '00000000004', 'ana@email.example', '48990000004', '1990-01-18'),
    ('Lucas Pereira', '00000000005', 'lucas@email.example', '48990000005', '1997-09-23'),
    ('Julia Ferreira', '00000000006', 'julia@email.example', '48990000006', '1994-05-14'),
    ('Gabriel Almeida', '00000000007', 'gabriel@email.example', '48990000007', '1999-12-30'),
    ('Beatriz Rodrigues', '00000000008', 'beatriz@email.example', '48990000008', '1993-04-09'),
    ('Rafael Martins', '00000000009', 'rafael@email.example', '48990000009', '1996-08-17'),
    ('Camila Souza', '00000000010', 'camila@email.example', '48990000010', '1991-02-25'),
    ('Felipe Lima', '00000000011', 'felipe@email.example', '48990000011', '1998-06-11'),
    ('Larissa Gomes', '00000000012', 'larissa@email.example', '48990000012', '1995-10-03'),
    ('Bruno Ribeiro', '00000000013', 'bruno@email.example', '48990000013', '1992-12-19'),
    ('Mariana Carvalho', '00000000014', 'mariana@email.example', '48990000014', '1997-03-27'),
    ('Thiago Lopes', '00000000015', 'thiago@email.example', '48990000015', '1994-09-08'),
    ('Amanda Fernandes', '00000000016', 'amanda@email.example', '48990000016', '1990-07-16'),
    ('Diego Barbosa', '00000000017', 'diego@email.example', '48990000017', '1996-01-29'),
    ('Isabela Rocha', '00000000018', 'isabela@email.example', '48990000018', '1993-11-22'),
    ('Vinicius Dias', '00000000019', 'vinicius@email.example', '48990000019', '1999-05-06'),
    ('Leticia Nunes', '00000000020', 'leticia@email.example', '48990000020', '1991-08-31')
) AS v(nm_cliente, nr_cpf, ds_email, nr_telefone, dt_nascimento)
WHERE NOT EXISTS (
    SELECT 1
    FROM dbo.cliente c
    WHERE c.nr_cpf = v.nr_cpf
);
GO
