-- PLACED_ORDER
-- VICTOR CHAVEZ

CREATE TABLE IF NOT EXISTS PLACED_ORDER (
	ORDER_ID INT UNSIGNED,
    ORDER_DATE DATE,
    ORDER_TIME TIME NOT NULL,
    CUST_ID INT UNSIGNED,
    ATTEND_ID INT UNSIGNED,
    PRIMARY KEY (ORDER_ID),
    FOREIGN KEY (CUST_ID) REFERENCES CUSTOMER (CUST_ID) ON UPDATE CASCADE,
	FOREIGN KEY (ATTEND_ID) REFERENCES EMPLOYEE_SHIFT (ATTEND_ID) ON UPDATE CASCADE

    );
SELECT * FROM PLACED_ORDER
