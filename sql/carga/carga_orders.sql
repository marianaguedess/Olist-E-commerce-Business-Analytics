-- realiza a carga da tabela orders
BULK INSERT orders
FROM 'C:\Users\Mariana - user\OneDrive\Desktop\Projetos\Olist E-commerce Business Analytics\sql\carga\arquivos\olist_orders_dataset.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    TABLOCK
)

SELECT * FROM orders