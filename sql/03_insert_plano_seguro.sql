
-- SeguroSmartphone
-- Insercao de planos de seguro - Issue #6

USE SeguroSmartphone;
GO

INSERT INTO dbo.plano_seguro
    (nm_plano, ds_descricao, pc_franquia, fl_ativo)
SELECT
    v.nm_plano,
    v.ds_descricao,
    v.pc_franquia,
    v.fl_ativo
FROM (VALUES
    ('Basico', 'Protecao essencial para smartphones.', 15.00, 1),
    ('Intermediario', 'Protecao contra acidentes e danos.', 15.00, 1),
    ('Premium', 'Cobertura ampliada para o aparelho.', 10.00, 1),
    ('Completo', 'Protecao abrangente contra diversos eventos.', 10.00, 1),
    ('Essencial', 'Plano economico com coberturas essenciais.', 20.00, 1),
    ('Protecao Total', 'Plano com ampla cobertura de danos.', 10.00, 1),
    ('Smart Plus', 'Protecao adicional para smartphones.', 12.00, 1),
    ('Smart Max', 'Cobertura ampliada para aparelhos premium.', 8.00, 1),
    ('Economico', 'Plano de baixo custo.', 20.00, 1),
    ('Familiar', 'Plano destinado a clientes com varios aparelhos.', 15.00, 1),
    ('Executivo', 'Protecao para aparelhos de alto valor.', 10.00, 1),
    ('Premium Plus', 'Cobertura premium com protecao adicional.', 8.00, 1),
    ('Digital', 'Plano simplificado de contratacao digital.', 18.00, 1),
    ('Conectado', 'Protecao para uso diario intenso.', 15.00, 1),
    ('Avancado', 'Cobertura para danos acidentais e roubo.', 12.00, 1),
    ('Gold', 'Plano especial com cobertura ampliada.', 10.00, 1),
    ('Silver', 'Plano intermediario com boa cobertura.', 15.00, 1),
    ('Bronze', 'Plano de entrada para smartphones.', 20.00, 1),
    ('Corporativo', 'Protecao para aparelhos empresariais.', 10.00, 1),
    ('Flexivel', 'Plano com protecao adaptada ao cliente.', 15.00, 1)
) AS v(nm_plano, ds_descricao, pc_franquia, fl_ativo)
WHERE NOT EXISTS (
    SELECT 1
    FROM dbo.plano_seguro p
    WHERE p.nm_plano = v.nm_plano
);
GO
