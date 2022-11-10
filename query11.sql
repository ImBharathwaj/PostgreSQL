SELECT FIRST_NAME
FROM EMPLOYEES
WHERE EMPLOYEE_ID IN (
			SELECT EMPLOYEE_ID
			FROM EMPLOYEES
			WHERE EMPLOYEE_ID BETWEEN 120 AND 130
		);

SELECT 	FIRST_NAME
FROM 	EMPLOYEES
WHERE 	EMPLOYEE_ID = ANY(
				SELECT 	EMPLOYEE_ID
				FROM	EMPLOYEES
				WHERE EMPLOYEE_ID BETWEEN 100 AND 120
			);

SELECT FIRST_NAME
FROM EMPLOYEES
WHERE EXISTS(
		SELECT 	EMPLOYEE_ID
		FROM 	EMPLOYEES
		WHERE 	EMPLOYEE_ID BETWEEN 130 AND 135
	);