-- SQL 2 --

-- alter table
--adding a new column and its value type
ALTER TABLE <table name> (
    ADD COLUMN <column_name> <valuetype>
);

--deleting columns from your table
ALTER TABLE <table name>
DROP COLUMN <column_name>;

--changing a column’s data type
ALTER TABLE <table name>
ALTER <column_name>
SET DATA TYPE decimal;

--rename table name
ALTER TABLE <table name>
RENAME TO <new table name>;

--rename column name
ALTER TABLE <table name>
RENAME COLUMN <column_name>
TO <new column_name>;

--add primary keys to a column after column has been created
ALTER TABLE <table name>
ADD PRIMARY KEY (column_name you are setting as primary key);

--add foreign keys to a column after column has been created
ALTER TABLE <table name>
ADD FOREIGN KEY (column_name you are setting as foreign key);
-when creating a table and you are setting up REFERENCES
CREATE TABLE <table name> (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    subject_id INT REFERENCES subjects (id)
)

--Joins
--inner joins
SELECT <column names>
FROM <table 1>
INNER JOIN <table 2>
ON <primary key> = <foreign key>

