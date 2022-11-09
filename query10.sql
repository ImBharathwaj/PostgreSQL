SELECT 	FIRST_NAME
FROM 	EMPLOYEES
WHERE	EMPLOYEE_ID IN (
			SELECT EMPLOYEE_ID
			FROM EMPLOYEES
			WHERE HIRE_DATE > '2007-05-21'
		);

SELECT	FIRST_NAME
FROM	EMPLOYEES
WHERE	EMPLOYEE_ID = ANY (
				SELECT 	EMPLOYEE_ID
				FROM	EMPLOYEES
				WHERE 	HIRE_DATE > '2007-05-21'
			);

SELECT 	FIRST_NAME
FROM	EMPLOYEES
WHERE	EXISTS (
		SELECT 	EMPLOYEE_ID
		FROM	EMPLOYEES
		WHERE	HIRE_DATE > '2007-05-21'
	);
