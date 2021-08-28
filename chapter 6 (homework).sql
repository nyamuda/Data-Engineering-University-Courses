/*No.1*/
use ap;
SELECT DISTINCT
    vendor_id, SUM(invoice_total) AS 'sum_of_invoice_total'
FROM
    invoices
GROUP BY vendor_id

/*No.2*/
use ap;
SELECT 
    vendor_name, SUM(payment_total) AS 'sum_payment_total'
FROM
    vendors
        JOIN
    invoices USING (vendor_id)
GROUP BY vendor_name
ORDER BY sum_payment_total DESC


/*No. 3 */
use ap;
SELECT 
    vendor_id,
    COUNT(*) AS 'number_invoices',
    SUM(invoice_total) AS 'sum_invoice_total'
FROM
    vendors
        JOIN
    invoices USING (vendor_id)
GROUP BY vendor_id
ORDER BY number_invoices DESC

/* Number 4 */
use ap;
SELECT 
    account_description,
    COUNT(*) AS 'count_of_item',
    SUM(line_item_amount) AS 'sum_item_amount'
FROM
    general_ledger_accounts
        JOIN
    invoice_line_items USING (account_number)
GROUP BY account_description
HAVING count_of_item > 1
ORDER BY sum_item_amount DESC

/* Number 5 */
use ap;
SELECT 
    account_description,
    COUNT(*) AS 'count_of_item',
    SUM(line_item_amount) AS 'sum_item_amount'
FROM
    general_ledger_accounts
        JOIN
    invoice_line_items USING (account_number)
        JOIN
    invoices USING (invoice_id)
WHERE
    invoice_date BETWEEN '2014-04-01' AND '2014-06-30'
GROUP BY account_description
HAVING count_of_item > 1
ORDER BY sum_item_amount DESC

/*No. 6*/
use ap;
SELECT 
    account_number, SUM(line_item_amount) AS 'total_amount'
FROM
    invoice_line_items
GROUP BY account_number WITH ROLLUP

/*No.7 */
use ap;
SELECT 
    vendor_name,
    COUNT(DISTINCT account_number) AS 'distinct_accounts'
FROM
    vendors
        JOIN
    invoices USING (vendor_id)
        JOIN
    invoice_line_items USING (invoice_id)
GROUP BY vendor_name
having distinct_accounts>1

