/* Query 1 */
USE salon;
SELECT 
    CONCAT_WS(' ', first_name, last_name) AS name,
    product_name,
    (price * quantity) AS price
FROM
    transaction_detail td
        JOIN
    transactions tran ON td.transaction_table_tran_id = tran.tran_id
        JOIN
    products prod ON prod.product_id = td.products_product_id
        JOIN
    customers cus ON cus.customer_id = tran.customers_customer_id
ORDER BY last_name


/* Query 2*/
USE salon;
SELECT 
    CONCAT_WS(' ', first_name, last_name) AS full_name,
    SUM(price * quantity) AS total_spend
FROM
    transaction_detail td
        JOIN
    transactions tran ON td.transaction_table_tran_id = tran.tran_id
        JOIN
    products prod ON prod.product_id = td.products_product_id
        JOIN
    customers cus ON cus.customer_id = tran.customers_customer_id
GROUP BY (CONCAT_WS(' ', first_name, last_name))
ORDER BY total_spend DESC


/* Query 3 */
USE salon;
SELECT 
    CONCAT_WS(' ', emp_first_name, emp_last_name) AS employee_name,
    SUM(price * quantity) AS total_revenue
FROM
    transaction_detail td
        JOIN
    transactions tran ON td.transaction_table_tran_id = tran.tran_id
        JOIN
    products prod ON prod.product_id = td.products_product_id
        JOIN
    employees em ON em.employee_id = tran.employees_employee_id
GROUP BY (CONCAT_WS(' ', emp_first_name, emp_last_name))
ORDER BY total_revenue DESC

/*Query 4 */
USE salon;
SELECT
    CONCAT_WS(' ', em.emp_first_name, em.emp_last_name) AS employee_name,
    CONCAT_WS(' ',
            em2.emp_first_name,
            em2.emp_last_name) AS manager,
    em2.title AS manager_title
FROM
    employees em
        JOIN
    employees em2 ON em.manager_id = em2.employee_id
