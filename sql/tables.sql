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
);
ALTER TABLE products ADD CONSTRAINT pk_products PRIMARY KEY (product_id);

-- tabela zip_codes
CREATE TABLE zip_codes (
    zip_code VARCHAR(10) NOT NULL
);
ALTER TABLE zip_codes ADD CONSTRAINT pk_zip_code PRIMARY KEY (zip_code);

-- tabela geolocation
CREATE TABLE geolocation (
    geolocation_zip_code_prefix     VARCHAR(10),
    geolocation_lat                 DECIMAL(18,15),
    geolocation_lng                 DECIMAL(18,15),
    geolocation_city                VARCHAR(100),
    geolocation_state               VARCHAR(100)
);
ALTER TABLE geolocation ADD CONSTRAINT fk_geolocation_zip_code FOREIGN KEY (geolocation_zip_code_prefix) REFERENCES zip_codes (zip_code);

    -- a coluna de chave primaria será criada pois carga da tabela
    ALTER TABLE geolocation ADD geolocation_id INT IDENTITY(1,1);
    ALTER TABLE geolocation ADD CONSTRAINT pk_geolocation PRIMARY KEY (geolocation_id);