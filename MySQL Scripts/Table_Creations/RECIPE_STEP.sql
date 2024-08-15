-- RECIPE_STEP
-- VICTOR CHAVEZ

CREATE TABLE IF NOT EXISTS RECIPE_STEP (
	RECIPE_STEP_ID INT UNSIGNED,
    RECIPE_ID INT UNSIGNED,
    STEP_NUM SMALLINT NOT NULL,
    STEP_DESCRIPTION VARCHAR(10000) NOT NULL,
    PRIMARY KEY (RECIPE_STEP_ID),
    FOREIGN KEY (RECIPE_ID) REFERENCES RECIPE (RECIPE_ID) ON UPDATE CASCADE
    
    );
SELECT * FROM RECIPE_STEP