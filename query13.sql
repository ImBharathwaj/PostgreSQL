EXPLAIN SELECT CUSTOMER_ID FROM CUSTOMER WHERE CUSTOMER_ID = 5;

VACUUM ANALYZE CUSTOMER;

EXPLAIN SELECT CUSTOMER_ID FROM CUSTOMER WHERE CUSTOMER_ID  = 5;

CREATE UNIQUE INDEX CUSTOMER_CUSTID_IDX ON CUSTOMER (CUSTOMER_ID);

EXPLAIN SELECT CUSTOMER_ID FROM CUSTOMER WHERE CUSTOMER_ID = 5;

EXPLAIN SELECT CUSTOMER_ID FROM CUSTOMER;

EXPLAIN SELECT * FROM CUSTOMER ORDER BY CUSTOMER_ID;

