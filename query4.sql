SELECT FIRST_NAME,
	LAST_NAME,
	CASE
		WHEN MANAGER_ID = 100 THEN 'GOOD'
		WHEN MANAGER_ID = 121 OR MANAGER_ID = 114 THEN 'BAD'
		ELSE 'VERY BAD'
	END AS CONDUCT
FROM EMPLOYEES
ORDER BY FIRST_NAME;
