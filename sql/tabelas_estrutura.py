#import kagglehub
import pandas as pd
import os
# Download latest version
#path = kagglehub.dataset_download("olistbr/brazilian-ecommerce")

#print("Path to dataset files:", path)

def gerar_table_pandas(path):
    tabela = f'table_{path}'
    tabela = pd.read_csv(f'C:/Users/Mariana - user/.cache/kagglehub/datasets/olistbr/brazilian-ecommerce/versions/2/{path}')

    return tabela

diretorio = 'C:/Users/Mariana - user/.cache/kagglehub/datasets/olistbr/brazilian-ecommerce/versions/2'
arquivos = os.listdir(diretorio)

for arquivo in arquivos:
    nome_tabela  = f'table_{arquivo[:-4]}'
    nome_tabela = gerar_table_pandas(arquivo)
    print(f'Colunas:{arquivo}\n {nome_tabela.info()} \n -----------------------------------------------------')