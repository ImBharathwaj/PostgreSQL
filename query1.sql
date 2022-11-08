SELECT FIRST_NAME, LAST_NAME FROM ACTOR;

SELECT UPPER(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS 'ACTOR NAME' FROM ACTOR;

SELECT ACTOR_ID, FIRST_NAME, LAST_NAME FROM ACTOR WHERE FIRST_NAME LIKE 'JOE';

SELECT FIRST_NAME, LAST_NAME FROM ACTOR WHERE LAST_NAME LIKE '%GEN%';

SELECT FIRST_NAME, LAST_NAME FROM ACTOR WHERE LAST_NAME LIKE '%LI%' ORDER BY LAST_NAME, FIRST_NAME;

SELECT COUNTRY_ID, COUNTRY FROM COUNTRY WHERE COUNTRY IN ('AFGANISTHAN', 'BANGLADESH', 'CHINA');

ALTER TABLE ACTOR ADD COLUMN MIDDLE_NAME VARCHAR(30) AFTER FIRST_NAME;

SELECT * FROM ACTOT;

ALTER TABLE ACTOR DROP COLUMN MIDDLE_NAME;

SELECT * FROM ACTOR;

SELECT LAST_NAME AS LAST_NAME, COUNT(LAST_NAME) AS LAST_NAME_COUNT FROM ACTOR GROUP BY LAST_NAME;

SELECT LAST_NAME AS LAST_NAME, COUNT(LAST_NAME) AS LAST_NAME_COUNT FROM ACTOR GROUP BY LAST_NAME HAVING COUNT(LAST_NAME) > 1;

SELECT FIRST_NAME, LAST_NAME FROM ACTOR WHERE FIRST_NAME = 'GROUCHO' AND LAST_NAME = 'WILLIAMS';

UPDATE ACTOR SET FIRST_NAME = 'HAPRO' WHERE FIRST_NAME = 'GROUCHO' AND LAST_NAME = 'WILLIAMS';

SELECT * FROM ACTOR WHERE LAST_NAME = 'WILLIAMS';

SELECT FIRST_NAME FROM ACTOR WHERE FIRST_NAME = 'HAPRO';

UPDATE ACTOR SET FIRST_NAME = 'GROUCHO' WHERE FIRST_NAME = 'HARPO';

UPDATE ACTOR SET FIRST_NAME = CASE 
  WHEN FIRST_NAME = 'HARPO' THEN 'GROUCHO'
  WHEN FIRST_NAME = 'GROUCHO' THEN 'MUCHO GROUCHO'
  ELSE FIRST_NAME END;

SELECT * FROM ACTOR;

-- CREATE TABLE ADDRESS_NEW(
--  ADDRESS_ID INTEGER(11) NOT NULL,
--  ADDRESS VARCHAR(30) NOT NULL,
--  ADDRESS2 VARCHAR(30) NOT NULL,
--  DISTRICT VARCHAR(30) NOT NULL,
--  CITY_ID INTEGER(11) NOT NULL,
--  POSTAL_CODE INTEGER(11) NOT NULL,
--  PHONE INTEGER(10) NOT NULL,
--  LOCATION VARCHAR(30) NOT NULL,
--  LAST_UPDATE DATETIME
--);