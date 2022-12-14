CREATE TABLE FRIEND2(
	FIRSTNAME	CHAR(30),
	LASTNAME	CHAR(30),
	CITY		CHAR(15),
	STATE		CHAR(2),	CHECK (LENGTH(TRIM(STATE))=2),
	AGE		INTEGER		CHECK (AGE >= 0),
	GENDER		CHAR(1)		CHECK (GENDER IN ('M', 'F')),
	LAST_MET	DATE		CHECK (LAST_MET BETWEEN '1950-01-01' AND CURRENT_DATE),
	CHECK (UPPER(TRIM(FIRSTNAME)) != 'ED' OR UPPER(TRIM(LASTNAME)) != 'RIVERS')
);

INSERT INTO FRIEND2 VALUES ('ED', 'RIVERS', 'WIBBLEVILLE', 'J', -35, 'S', '1931-09-23');
