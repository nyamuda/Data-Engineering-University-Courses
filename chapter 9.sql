/* Number 1 */

use ap;
SELECT 
    invoice_total,
    ROUND(invoice_total, 1),
    ROUND(invoice_total, 0)
FROM
    invoices
    

/* Number 2 */
use ex;
SELECT 
    start_date,
    DATE_FORMAT(start_date, '%b/%e/%y'),
    DATE_FORMAT(start_date, '%c/%e/%y'),
    DATE_FORMAT(start_date, '%r'),
    DATE_FORMAT(start_date, '%c/%e/%y %r')
FROM
    date_sample
    
    

/* Number 3 */
use ap;
SELECT 
    vendor_name,
    UPPER(vendor_name),
    vendor_phone,
    RIGHT(vendor_phone, 4),
    CONCAT_WS('.',
            SUBSTRING(vendor_phone, 2, 3),
            SUBSTRING(vendor_phone, 7, 3),
            SUBSTRING(vendor_phone, 11, 4)) AS 'with_dots',
    CASE
        WHEN
            LOCATE(' ',
                    SUBSTRING_INDEX(vendor_name, ' ', 2)) > 0
        THEN
            SUBSTRING(SUBSTRING_INDEX(vendor_name, ' ', 2),
                LOCATE(' ', vendor_name) + 1)
        ELSE ' '
    END AS 'second_word'
FROM
    vendors
    
    

/* Number 4 */
use ap;
SELECT 
    invoice_number,
    invoice_date,
    DATE_ADD(invoice_date, INTERVAL 30 DAY),
    payment_date,
    DATEDIFF(payment_date, invoice_date) AS 'days_to_pay',
    MONTH(invoice_date),
    YEAR(invoice_date)
FROM
    invoices
WHERE
    DATE_FORMAT(invoice_date, '%M') = 'May'