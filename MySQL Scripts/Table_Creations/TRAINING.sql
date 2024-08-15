-- TRAINING
-- VICTOR CHAVEZ

CREATE TABLE IF NOT EXISTS TRAINING (
	TRAIN_CODE INT UNSIGNED,
    TRAIN_NAME VARCHAR(255) NOT NULL,
    TRAIN_DESC TEXT(25000) NOT NULL,
    DURATION DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (TRAIN_CODE)
    
    );

SELECT * FROM TRAINING
