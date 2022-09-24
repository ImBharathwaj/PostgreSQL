-- To assign a string in SQL we use single quotes like below
-- select 'nothing';
-- but this won't work for this string below
-- select 'I'm Nothing';
-- For that we can use double dollar sign $$string$$
-- In this assigning string we can write '\' backslash

SELECT $$I'm Nothing this is backslash \$$;

-- Example PL/pgSQL code for double dollar quotes
DO
  'DECLARE
    film_count INTEGER;
  BEGIN
    SELECT COUNT(*) INTO film_count
    FROM film;
    RAISE NOTICE $$the number of films : %$$, film_count;
  END;';
