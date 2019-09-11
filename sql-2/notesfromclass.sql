--Alter table
-- changes column name and updates data type
ALTER TABLE track
RENAME milliseconds 
TO seconds;
ALTER TABLE track
ALTER seconds
SET DATA TYPE FLOAT;


--Joins
--inner joins
-- i want to get state, country, phone number, and invoice total for each customer
SELECT c.state, c.country, c.phone, i.total
FROM customer AS c --aliases 
INNER JOIN invoice AS i --aliases 
ON c.customer_id = i.customer_id

-- another join example 
-- i want to get the name of each artist, and their album titles
SELECT a.name, al.title
FROM artist AS a
INNER JOIN album AS al
ON a.artist_id = al.artist_id;

--also want to get name of track on each album
SELECT a.name, al.title, t.name
FROM artist AS a
INNER JOIN album AS al
ON a.artist_id = al.artist_id
INNER JOIN track AS t
ON al.album_id = t.album_id;

-- added on to the last one to join genre 
SELECT a.name, al.title, t.name, g.name
FROM artist AS a
INNER JOIN album AS al
ON a.artist_id = al.artist_id
INNER JOIN track AS t
ON al.album_id = t.album_id
INNER JOIN genre AS g
ON t.genre_id = g.genre_id


--data normalization
-- Data normalization is the process of organizing data, colums, and relationships between tables
    --avoiding data redundancy
    -- attain data integrity
    -- avoid CRUD anomalies

--questions
    -- does each row have a primary key?
    -- do all columns only have one piece of data and no columns have similar data?
    -- does everything that's not a key describe the primary key?


--nesting queries
    --example: SELECT * FROM something WHERE something IN (SELECT name FROM something)
-- I want to get names of all the artists who have albums that start wth the letter A
SELECT name FROM artist
WHERE artist_id 
IN (SELECT artist_id FROM album WHERE title ILIKE 'a%')

--group by
SELECT unit_price, count(unit_price) FROM track
GROUP BY unit_price
