/* Number 1 */
use ap;
SELECT 
    invoice_total,
    FORMAT(invoice_total, 1),
    CONVERT( invoice_total , SIGNED),
    CAST(invoice_total AS SIGNED)
FROM
    invoices
    
    
/* Number 2 */
use ap;
SELECT 
    invoice_date,
    CAST(invoice_date AS DATETIME),
    CAST(invoice_date AS CHAR (7))
FROM
    invoices