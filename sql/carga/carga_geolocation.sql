-- realiza a carga da tabela geolocation_temp
BULK INSERT geolocation
FROM 'C:\Users\Mariana - user\OneDrive\Desktop\Projetos\Olist E-commerce Business Analytics\sql\carga\arquivos\olist_geolocation_dataset.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    TABLOCK
)