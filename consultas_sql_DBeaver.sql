-- Validando as categorias e subcategorias distintas
SELECT DISTINCT CATEGORIA, SUBCATEGORIA
FROM despesas
ORDER BY 1, 2;

-- Atualizando categorias e descrições específicas
UPDATE despesas
SET CATEGORIA = 'Beleza'
WHERE SUBCATEGORIA = 'Condicionador Colorido Cabelo';

UPDATE despesas
SET CATEGORIA = 'Assinatura',
    SUBCATEGORIA = 'iFood Club',
    DESCRICAO = 'Assinatura iFood Club'
WHERE DESCRICAO = 'iFood Club';

UPDATE despesas
SET CATEGORIA = 'Assinatura',
    SUBCATEGORIA = 'Wellhub Academia',
    DESCRICAO = 'Plano Academia Wellhub Jeff Candido'
WHERE DESCRICAO = 'Jeff Cândido';

UPDATE despesas
SET CATEGORIA = 'Assinatura',
    SUBCATEGORIA = 'Kindle Unlimited'
WHERE DESCRICAO = 'Kindle Unlimited Amazon';

-- Adicionando nova coluna de recorrência
ALTER TABLE despesas ADD COLUMN RECORRENCIA TEXT;

-- Preenchendo a coluna de recorrência
UPDATE despesas
SET RECORRENCIA = 'Mensal'
WHERE CATEGORIA = 'Assinatura'
   OR DESCRICAO = 'Mensalidade Faculdade Estácio';

UPDATE despesas
SET RECORRENCIA = 'Pontual'
WHERE RECORRENCIA IS NULL;

-- Inserindo novos dados manualmente
INSERT INTO despesas (DATA, DESCRICAO, CATEGORIA, SUBCATEGORIA, VALOR, RECORRENCIA)
VALUES 
('2025-01-13','Imposto Motinha IPVA', 'Transporte','IPVA',479.56,'Anual'),
('2024-12-04','Crunchyroll Tikito', 'Assinatura','Crunchyroll',50.00,'Anual'),
('2024-11-25','Eppi Cinema Tikito', 'Assinatura','Eppi Cinema',86.00,'Anual'),
('2025-02-10','Spotify Rodolfo', 'Assinatura','Spotify',56.00,'Anual');

-- Removendo a informação de horário na coluna DATA
UPDATE despesas
SET DATA = DATE(DATA);

-- Verificando a tabela final
SELECT * FROM despesas;
