-- PRODUCT
-- Angelo Angel

CREATE TABLE IF NOT EXISTS PRODUCT (
	PROD_ID INT UNSIGNED,
    PROD_NAME VARCHAR(255) NOT NULL,
    PROD_DESC VARCHAR(255) NOT NULL,
    PROD_PRICE DECIMAL(5, 2) NOT NULL,
    PROD_CATEGORY VARCHAR(15),
    PROD_QTY SMALLINT NOT NULL,
    INVT_ID INT UNSIGNED,
    RECIPE_ID INT UNSIGNED,
    PRIMARY KEY (PROD_ID),
    FOREIGN KEY (INVT_ID) REFERENCES INVENTORY (INVT_ID) ON UPDATE CASCADE,
    FOREIGN KEY (RECIPE_ID) REFERENCES RECIPE (RECIPE_ID) ON UPDATE CASCADE
);

-- Enforces one-to-one relationship and ensures no duplicates of the foreign key exists
ALTER TABLE PRODUCT
ADD UNIQUE (INVT_ID);

SELECT * FROM PRODUCT;
