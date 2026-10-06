-- realiza a carga da tabela zip_codes
BULK INSERT zip_codes
FROM 'C:\Users\Mariana - user\OneDrive\Desktop\Projetos\Olist E-commerce Business Analytics\sql\carga\arquivos\zip_code.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    TABLOCK
)

SELECT * FROM zip_codes