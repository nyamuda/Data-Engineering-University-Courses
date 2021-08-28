/*Number 1*/

USE ap;
SELECT 
    *
FROM
    vendors
        JOIN
    invoices USING (vendor_id)

/*Number 2*/
USE ap;
SELECT 
    vendor_name,
    invoice_number,
    invoice_date,
    invoice_total - (payment_total + credit_total) AS balance_due
FROM
    vendors v
        JOIN
    invoices i USING (vendor_id)
WHERE
    invoice_total - (payment_total + credit_total) > 0
ORDER BY vendor_name

/*Number 3*/
USE ap;
SELECT 
    vendor_name,
    default_account_number AS account_number,
    account_description AS 'description'
FROM
    vendors v
        JOIN
    general_ledger_accounts glc ON v.default_account_number = glc.account_number
ORDER BY account_description , vendor_name

/*Number 4*/
USE ap;
SELECT 
    vendor_name,
    invoice_date,
    invoice_number,
    invoice_sequence AS li_sequence,
    line_item_amount AS li_amount
FROM
    vendors
        JOIN
    invoices USING (vendor_id)
        JOIN
    invoice_line_items USING (invoice_id)
ORDER BY vendor_name , invoice_date , invoice_number , invoice_sequence

/*Number 5*/
USE ap;
SELECT DISTINCT
    v1.vendor_id,
    v1.vendor_name,
    CONCAT(v1.vendor_contact_first_name,
            ' ',
            v1.vendor_contact_last_name) AS contact_name
FROM
    vendors v1
        JOIN
    vendors v2 ON v1.vendor_contact_last_name = v2.vendor_contact_last_name
        AND v1.vendor_id != v2.vendor_id
        
/* Number 6*/
USE ap;
SELECT
    account_number, account_description, invoice_id
FROM
    general_ledger_accounts
        LEFT JOIN
    invoice_line_items USING (account_number)
WHERE
    invoice_id IS NULL
    
    
/*Number 7*/
USE ap;
SELECT 
    vendor_name, 'CA' AS 'vendor_state'
FROM
    vendors v1
WHERE
    vendor_state = 'CA' 
UNION SELECT 
    vendor_name, 'Outside CA' AS 'vendor_state'
FROM
    vendors v2
WHERE
    vendor_state != 'CA'
ORDER BY vendor_name
