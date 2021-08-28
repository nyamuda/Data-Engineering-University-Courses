/* No.1 */ 
USE ap;
INSERT INTO terms (terms_id,terms_description,terms_due_days)
VALUES (6,'Net due 120 days',120)



/* No.2 */ 
USE ap;
UPDATE terms 
SET 
    terms_description = 'Net due 125 days',
    terms_due_days = 125
WHERE
    terms_id = 6
    
    
/* No.3 */ 
USE ap;
DELETE FROM terms
WHERE
    terms_id = 6
    

/* No.4 */ 
USE ap;
INSERT INTO invoices
VALUES (115,32,'AX-014-027',date('2014-08-01'),434.58,0.00,0.00,2,date('2014-08-31'),NULL)


/* No. 5*/
USE ap;
INSERT INTO invoice_line_items (invoice_id,invoice_sequence,account_number,line_item_amount,line_item_description)
VALUES
(115,1,160,180.23,'Hard drive'),
(115,2,527,254.35,'Exchange Server update')


/*No 6*/
USE ap;
UPDATE invoices 
SET 
    credit_total = 0.1 * invoice_total,
    payment_total = 0.9 * invoice_total
WHERE
    invoice_id = 115
    
    
/*No 7*/
USE ap;
UPDATE vendors
SET 
    default_account_number=403
WHERE
    vendor_id = 44
    
    

/*No 8*/
USE ap;
UPDATE invoices 
SET 
    terms_id = 2
WHERE
    vendor_id IN (SELECT 
            vendor_id
        FROM
            vendors
        WHERE
            default_terms_id = 2)
            

/*No 9*/
USE ap;
DELETE FROM invoice_line_items
WHERE invoice_id=115;

DELETE FROM invoices 
WHERE
    invoice_id = 115


