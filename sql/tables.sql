-- As tabelas receberam a mesma nomenclatura e tipo de dados que o arquivo original.
use Olist_Dataset;

-- tabela produtos
CREATE TABLE products (
    product_id                      VARCHAR(100) NOT NULL,
    product_category_name           VARCHAR(100),
    product_name_lenght             INTEGER,
    product_description_lenght      INTEGER,
    product_photos_qty              INTEGER,
    product_weight_g                DECIMAL(10,2),
    product_length_cm               DECIMAL(10,2),
    product_height_cm               DECIMAL(10,2),
    product_width_cm                DECIMAL(10,2)
)

ALTER TABLE products ADD CONSTRAINT pk_products PRIMARY KEY (product_id)

DROP TABLE products