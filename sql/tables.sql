-- As tabelas receberam a mesma nomenclatura e tipo de dados que o arquivo original.
-- tabela produtos

use Olist_Dataset;

CREATE TABLE products (
    product_id                      VARCHAR(100) NOT NULL,
    product_category_name           VARCHAR(100) NOT NULL,
    product_name_lengh              FLOAT NOT NULL,
    product_description_lenght      FLOAT NOT NULL,
    roduct_photos_qty               FLOAT,
    product_weight_g                FLOAT,
    product_length_cm               FLOAT,
    product_height_cm               FLOAT,
    product_width_cm                FLOAT
)

ALTER TABLE products ADD CONSTRAINT pk_products PRIMARY KEY (product_id)