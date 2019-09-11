-- create table
CREATE TABLE students (
  id SERIAL PRIMARY KEY,
	first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  lines_of_code_written INT NOT NULL,
  first_time_coding BOOL NOT NULL
);

-- add info to table
INSERT INTO students
(first_name, last_name, lines_of_code_written, first_time_coding)
VALUES
('Josh', 'Riley', 3000, TRUE),
('Jacob', 'Baker', 10000, FALSE),
('Jamison', 'Jensen', 5000, TRUE),
('Eric', 'Newman', 16000, False);

-- retrieve all info from table 
SELECT * FROM students;

-- retrive specific info from table
SELECT * FROM students
WHERE first_name = 'Jacob'
AND last_name = 'Baker'
OR first_name = 'Josh';

-- update information in a table , WHERE at the end of the statement 
UPDATE students 
SET first_name = 'David'
WHERE first_name = 'Eric'

-- WHERE IN 
SELECT * FROM artist
WHERE name IN ('AC/DC', 'Accept', 'Aerosmith');
  -- WHERE NOT IN returns everything except these artists
  SELECT * FROM artist
WHERE name NOT IN ('AC/DC', 'Accept', 'Aerosmith')

-- removes duplicates from column 
SELECT DISTINCT composer FROM track;

-- cant set something = to NULL have to use IS NOT NULL or IS NULL
SELECT * FROM track
WHERE composer IS NOT NULL;

--gives first x amount of entries
SELECT * FROM track LIMIT 10;
-- offset - gives 11-20 gives the next 10 results
SELECT * FROM track LIMIT 10 OFFSET 10;

-- order by ASC or DESC
SELECT * FROM track ORDER BY name ASC;
SELECT * FROM track ORDER BY name DESC;
SELECT * FROM track ORDER BY name ASC LIMIT 10;

-- aggregate components
  --avg
  --min
  --max
  --sum
SELECT avg(milliseconds) FROM track;  

-- regex 
  -- _ wildcard character
  SELECT * FROM track WHERE name LIKE 'C.O._.';
  -- A% selects all names that start with A
  SELECT * FROM track WHERE name LIKE 'A%';
  -- A%g starts with A ends with g
  -- not case sensitive
  SELECT * FROM track WHERE name ILIKE 'A%';

-- Deleting - be careful when deleting!
-- BEFORE YOU RUN DELETE, LEAVE THE LAST E off of DELETE (DELET) and make sure you are deleting the correct thing. (Replace DELET with SELECT * to see what you are deleting)
DELETE from track
WHERE track_id = 30;

-- delete entire table
DROP TABLE students;





