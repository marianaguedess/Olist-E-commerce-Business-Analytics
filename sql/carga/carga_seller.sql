-- realiza a carga da tabela seller
BULK INSERT seller
FROM 'C:\Users\Mariana - user\OneDrive\Desktop\Projetos\Olist E-commerce Business Analytics\sql\carga\arquivos\olist_sellers_dataset.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    TABLOCK
)
-- tempo total de execução: 00:01:17.922
SELECT * FROM seller