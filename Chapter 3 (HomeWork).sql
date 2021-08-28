/*Number 6*/

SELECT 
    vendor_name,
    vendor_contact_last_name,
    vendor_contact_first_name
FROM
    ap.vendors
ORDER BY vendor_contact_last_name ASC , vendor_contact_first_name ASC


/* Number 7*/

SELECT 
    CONCAT(vendor_contact_last_name,
            ', ',
            vendor_contact_first_name) AS 'full_name'
FROM
    ap.vendors
WHERE
    vendor_contact_last_name LIKE 'A%'
        OR vendor_contact_last_name LIKE 'B%'
        OR vendor_contact_last_name LIKE 'C%'
        OR vendor_contact_last_name LIKE 'D%'
ORDER BY vendor_contact_last_name ASC , vendor_contact_first_name ASC

/*Number 8*/
SELECT 
    invoice_due_date AS 'Due Date',
    invoice_total AS 'Invoice Total',
    0.1 * invoice_total AS '10%',
    invoice_total + (0.1 * invoice_total) AS 'Plus 10%'
FROM
    ap.invoices
WHERE
    invoice_total BETWEEN 500 AND 1000
    
/* Number 9 */
SELECT 
    invoice_number,
    invoice_total,
    payment_total + credit_total AS payment_credit_total,
    invoice_total - (payment_total) AS balance_due
FROM
    ap.invoices
WHERE
    invoice_total - (payment_total) > 50
ORDER BY balance_due DESC
LIMIT 5;

/*Number 10*/
SELECT 
    invoice_number,
    invoice_date,
    invoice_total - (payment_total + credit_total) AS balance_due,
    payment_date
FROM
    ap.invoices
WHERE
    payment_date IS NULL
    
/*Number 11*/
SELECT DATE_FORMAT(CURRENT_DATE(), '%m-%d-%Y') AS 'current_date';

/*Number 12*/
SELECT 
    50000 AS starting_principal,
    0.065 * 50000 AS interest,
    50000 + (0.065 * 50000) AS principal_plus_interest