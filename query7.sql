SELECT 	EMAIL
FROM 	CUSTOMER, STORE
WHERE	CUSTOMER.STORE_ID = STORE.STORE_ID
	STORE.STORE_ID = 1;

SELECT 	CUSTOMER.EMAIL
FROM	CUSTOMER
WHERE	CUSTOMER.STORE_ID = (
				SELECT STORE.STORE_ID
				FROM STORE
				WHERE STORE.STORE_ID = 1
			    );
