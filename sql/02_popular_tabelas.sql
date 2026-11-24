
-- Projeto: SeguroSmartphone
-- Disciplina: Banco de Dados 2
-- Arquivo: 02_popular_tabelas.sql
-- Objetivo: inserir dados nas tabelas do banco.
-- Issue relacionada: #6

-- Os comandos INSERT serão adicionados abaixo,
-- respeitando a ordem dos relacionamentos entre tabelas.
  


-- Inserir fabricantes
USE SeguroSmartphone;
GO

INSERT INTO dbo.fabricante (nm_fabricante)
SELECT v.nm_fabricante
FROM (VALUES
    ('Apple'),
    ('Samsung'),
    ('Motorola'),
    ('Xiaomi'),
    ('Huawei'),
    ('LG'),
    ('Sony'),
    ('Asus'),
    ('Realme'),
    ('Oppo'),
    ('OnePlus'),
    ('Nokia'),
    ('Google'),
    ('TCL'),
    ('Infinix'),
    ('Tecno'),
    ('ZTE'),
    ('Honor'),
    ('Lenovo'),
    ('Meizu')
) AS v(nm_fabricante)
WHERE NOT EXISTS (
    SELECT 1
    FROM dbo.fabricante f
    WHERE f.nm_fabricante = v.nm_fabricante
);
GO
