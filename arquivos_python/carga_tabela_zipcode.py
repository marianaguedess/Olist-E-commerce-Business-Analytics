# Esse arquivo irá gerar um arquivo .csv com todos os zip code (CEPs) existentes do arquivo "olist_geolocation_dataset.csv"
# Esse novo arquivo gerado irá ser utilizado para fazer a carga dos zip code na tabela "zip_code"

import pandas as pd

geolocation_df = pd.read_csv(
    r'C:\Users\Mariana - user\OneDrive\Desktop\Projetos\Olist E-commerce Business Analytics\sql\carga\arquivos\olist_geolocation_dataset.csv'
)

coluna_zipcode = (
    geolocation_df['geolocation_zip_code_prefix']
    .dropna()
    .astype(str)
    .str.strip()
    .str.replace('\r', '', regex=False)
    .str.replace('\n', '', regex=False)
    .str.zfill(5)
    .drop_duplicates()
)

coluna_zipcode.to_csv(r'sql/carga/arquivos/zip_code.csv',index=False,sep=',')