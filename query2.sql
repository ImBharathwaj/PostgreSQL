-- First name begins with 'S'
SELECT * FROM ACTOR
WHERE FIRST_NAME ~ '^S'
ORDER BY FIRST_NAME;

-- First_name has an e in the second position
SELECT * FROM ACTOR
WHERE FIRST_NAME ~'^.E'
ORDER BY FIRST_NAME;

-- First_name contains b,B,c or C
SELECT * FROM ACTOR
WHERE FIRST_NAME ~* '[bc]'
ORDER BY FIRST_NAME;

-- First_name does not contain s OR S
SELECT * FROM ACTOR
WHERE FIRST_NAME !~* 'S'
ORDER BY FIRST_NAME;

-- First_name ends with n
SELECT * FROM ACTOR
WHERE FIRST_NAME ~ 'N *$'
ORDER BY FIRST_NAME;

-- First_name does not end with n
SELECT * FROM ACTOR
WHERE FIRST_NAME !~ 'N *$'
ORDER BY FIRST_NAME;

-- First_name containts a non-S character
SELECT * FROM ACTOR
WHERE FIRST_NAME ~'[^S]'
ORDER BY FIRST_NAME;
