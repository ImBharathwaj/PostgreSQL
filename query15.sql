DROP TABLE users;
CREATE TABLE users(
	user_id INT PRIMARY KEY,
	user_name VARCHAR(30) NOT NULL,
	email VARCHAR(50)
);
INSERT INTO users
VALUES (1, 'Sumit', 'sumit@gmail.com'),
	(2, 'Reshma', 'reshma@gmail.com'),
	(3, 'Farhana', 'farhana@gmail.com'),
	(4, 'Robin', 'robin@gmail.com'),
	(5, 'Robin', 'robin@gmail.com');
SELECT *
FROM users;
SELECT *
FROM users u
WHERE u.ctid NOT IN(
		SELECT MIN(ctid) AS ctid
		FROM users
		GROUP BY user_name
		ORDER BY ctid
	);
SELECT user_id,
	user_name,
	email
FROM (
		SELECT *,
			row_number() OVER (
				PARTITION BY user_name
				ORDER BY user_id
			) AS rn
		FROM users u
		ORDER BY user_id
	) x
WHERE x.rn <> 1;