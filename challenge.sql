CREATE TABLE FirstTab (
     id integer, 
     name VARCHAR(10)
);

INSERT INTO FirstTab VALUES
(5,'Pawan'),
(6,'Sharlee'),
(7,'Krish'),
(NULL,'Avtaar');

SELECT * FROM firstTab;

CREATE TABLE SecondTab (
    id integer 
);

INSERT INTO SecondTab VALUES
(5),
(NULL);

SELECT * FROM SecondTab;

-- Q1. What will be the OUTPUT of the following statement?
 SELECT COUNT(*) 
    FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab WHERE id IS NULL );
-- the OUTPUT of the following statement will be zero(0)

-- Q2. What will be the OUTPUT of the following statement?
 SELECT COUNT(*) 
    FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab WHERE id = 5 );
-- 	the OUTPUT of the following statement will be 2

-- Q3. What will be the OUTPUT of the following statement?
 SELECT COUNT(*) 
    FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab );
-- 	the OUTPUT of the following statement will be zero(0)

-- Q4. What will be the OUTPUT of the following statement?
SELECT COUNT(*) 
    FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab WHERE id IS NOT NULL );
-- 	the OUTPUT of the following statement will be 2