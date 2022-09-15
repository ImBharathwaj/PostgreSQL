-- Which actors have the first name ‘Scarlett’
-- Which actors have the last name ‘Johansson’
-- How many distinct actors last names are there?
-- Which last names are not repeated?
-- Which last names appear more than once?
-- Which actor has appeared in the most films?
-- Is ‘Academy Dinosaur’ available for rent from Store 1?
-- Insert a record to represent Mary Smith renting ‘Academy Dinosaur’ from Mike Hillyer at Store 1 today .
-- When is ‘Academy Dinosaur’ due?
-- What is that average running time of all the films in the sakila DB?
-- What is the average running time of films by category?
-- Why does this query return the empty set?
-- First Question
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';
-- Second Question
SELECT *
FROM actor
WHERE last_name LIKE 'JOHANSSON';

-- Third Question
SELECT COUNT(DISTINCT last_name)
FROM actor;

-- Fourth Question
-- Selecting last name from actor table
SELECT last_name
FROM actor -- Grouping table by last name
GROUP BY last_name -- Filtering by counting lastname not repeated
HAVING COUNT(*) = 1;

-- Fifth Question
-- Selecting last name from actor table
SELECT last_name
FROM actor -- Grouping table by last name
GROUP BY last_name -- Filtering by counting lastname occurred more than once
HAVING COUNT(*) > 1;

-- Sixth Question
-- Selecting data fields from table
SELECT actor.actor_id,
    actor.first_name,
    actor.last_name,
    -- Aliasing count of actor id as Film Count
    COUNT(actor.actor_id) as film_count
-- Querying data from table actor by join with film_actor using actor_id attribute
FROM actor
    JOIN film_actor USING(actor_id)
-- Then grouping query with attribute actor_id which is used to join two tables
GROUP BY actor_id
-- Ordering in descending manner 
ORDER BY film_count DESC;
