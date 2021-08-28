use sakila;
SELECT 
    *
FROM
    payment
WHERE
    amount IN (1.98 , 7.98, 9.98);
    
    
use sakila;
SELECT 
    *
FROM
    customer
WHERE
    last_name LIKE '_A%W%';