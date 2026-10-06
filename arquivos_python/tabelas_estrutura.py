#import kagglehub
import pandas as pd
import os
# Download latest version
# path = kagglehub.dataset_download("olistbr/brazilian-ecommerce")

#print("Path to dataset files:", path)

def gerar_table_pandas(path):
    tabela = f'table_{path}'
    tabela = pd.read_csv(f'C:/Users/Mariana - user/.cache/kagglehub/datasets/olistbr/brazilian-ecommerce/versions/2/{path}')

    return tabela

diretoriodf = gerar_table_pandas('olist_geolocation_dataset.csv')
print('---------------INFORMAÇÕES GERAIS-------------')
print(diretoriodf.info())
print('---------------DADOS NULOS-------------')
print(diretoriodf.isnull().sum())
print('---------------QUANTIDADE DE VALORES ÚNICOS-------------')
print(diretoriodf.nunique())
print('---------------VALORES COLUNAS NÚMERICAS-------------')
print(diretoriodf.describe())
print('-----------------------------------')
print(diretoriodf['geolocation_zip_code_prefix'].duplicated().sum())