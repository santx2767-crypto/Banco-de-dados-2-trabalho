USE SeguroSmartphone;
GO

SELECT 'Fabricantes' AS tabela, COUNT(*) AS quantidade
FROM dbo.fabricante

UNION ALL

SELECT 'Clientes', COUNT(*)
FROM dbo.cliente

UNION ALL

SELECT 'Planos de seguro', COUNT(*)
FROM dbo.plano_seguro;
