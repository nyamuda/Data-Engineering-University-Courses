USE salon;

/* insert into location table*/

INSERT INTO
   location 
VALUES
   (
      DEFAULT, '100 N Main St.', 'Suite 3', 'Rexburg', 'ID', '83441'
   )
;
SET
   @Rexburg = last_insert_id();
INSERT INTO
   location 
VALUES
   (
      DEFAULT, '200 N Center St.', NULL, 'Rigby', 'ID', '83442'
   )
;
SET
   @Rigby = last_insert_id();
   
  
/* insert into customers table*/

   
INSERT INTO
   customers 
VALUES
   (
      DEFAULT, 'Jeana', 'Bradford', 'jb@gmail.com', '1112223333'
   )
;
SET
   @Bradford = last_insert_id();
INSERT INTO
   customers 
VALUES
   (
      DEFAULT, 'Sandra', 'Hobbs', 'sh@gmail.com', '1112223334'
   )
;
SET
   @Hobbs = last_insert_id();
INSERT INTO
   customers 
VALUES
   (
      DEFAULT, 'Ryan', 'Taylor', 'rt@gmail.com', '1112223335'
   )
;
SET
   @Taylor = last_insert_id();
INSERT INTO
   customers 
VALUES
   (
      DEFAULT, 'Michelle', 'Drake', 'md@gmail.com', '1112223336'
   )
;
SET
   @Drake = last_insert_id();
INSERT INTO
   customers 
VALUES
   (
      DEFAULT, 'Heidi', 'Nolan', 'hn@gmail.com', '1112223337'
   )
;
SET
   @Nolan = last_insert_id();
INSERT INTO
   customers 
VALUES
   (
      DEFAULT, 'Karen', 'Smith', 'ks@gmail.com', '1112223338'
   )
;
SET
   @Smith = last_insert_id();
INSERT INTO
   customers 
VALUES
   (
      DEFAULT, 'Jose', 'Mendez', 'jm@gmail.com', '1112223339'
   )
;
SET
   @Mendez = last_insert_id();
   
   
/* insert into employees table*/

INSERT INTO
   employees 
VALUES
   (
      DEFAULT, 'Jenny', 'Jensen', 'Owner', '2013-06-15', NULL, 'jensenj@salon.com', '2081112222', NULL, @Rexburg
   )
;
SET
   @Jensen = last_insert_id();
INSERT INTO
   employees 
VALUES
   (
      DEFAULT, 'Haley', 'Lopez', 'Assistant Manager', '2013-08-23', NULL, 'lopezh@salon.com', '2083334444', 1, @Rexburg
   )
;
SET
   @Lopez = last_insert_id();
INSERT INTO
   employees 
VALUES
   (
      DEFAULT, 'Robert', 'Green', 'Associate', '2014-01-03', NULL, 'greenr@salon.com', '2085556666', 2, @Rexburg
   )
;
SET
   @Green = last_insert_id();
INSERT INTO
   employees 
VALUES
   (
      DEFAULT, 'Olive', 'Adams', 'Manager', '2015-07-12', NULL, 'adamso@salon.com', '2087778888', 1, @Rigby
   )
;
SET
   @Adams = last_insert_id();
INSERT INTO
   employees 
VALUES
   (
      DEFAULT, 'Julie', 'Davis', 'Associate', '2015-10-20', NULL, 'davisj@salon.com', '2089990000', 4, @Rigby
   )
;
SET
   @Davis = last_insert_id();
   
   
/* insert into products table*/
   
INSERT INTO
   products 
VALUES
   (
      DEFAULT, 'Shampoo', 'Product', '8 oz', 4.95
   )
;
SET
   @productOne = last_insert_id();
INSERT INTO
   products 
VALUES
   (
      DEFAULT, 'Shampoo', 'Product', '16 oz', 8.95
   )
;
SET
   @productTwo = last_insert_id();
INSERT INTO
   products 
VALUES
   (
      DEFAULT, 'Conditioner', 'Product', '12 oz', 8.95
   )
;
SET
   @productThree = last_insert_id();
INSERT INTO
   products 
VALUES
   (
      DEFAULT, 'Hairspray', 'Product', '8 oz', '7.95'
   )
;
SET
   @productFour = last_insert_id();
INSERT INTO
   products 
VALUES
   (
      DEFAULT, 'Shampoo', 'Service', NULL, 8.00
   )
;
SET
   @productFive = last_insert_id();
INSERT INTO
   products 
VALUES
   (
      DEFAULT, 'Men Hair Cut', 'Service', NULL, 15.00
   )
;
SET
   @productSix = last_insert_id();
INSERT INTO
   products 
VALUES
   (
      DEFAULT, 'Women Hair Cut', 'Service', NULL, 25.00
   )
;
SET
   @productSeven = last_insert_id();
INSERT INTO
   products 
VALUES
   (
      DEFAULT, 'Color', 'Service', NULL, 50.00
   )
;
SET
   @productEight = last_insert_id();
INSERT INTO
   products 
VALUES
   (
      DEFAULT, 'Perm', 'Service', NULL, 60.00
   )
;
SET
   @productNine = last_insert_id();
   
   
   
/* insert into transactions table*/

INSERT INTO
   transactions 
VALUES
   (
      DEFAULT, '2019-03-25', @Mendez, @Jensen
   )
;
SET
   @transOne = last_insert_id();
INSERT INTO
   transactions 
VALUES
   (
      DEFAULT, '2019-03-25', @Smith, @Jensen
   )
;
SET
   @transTwo = last_insert_id();
INSERT INTO
   transactions 
VALUES
   (
      DEFAULT, '2019-03-25',  @Nolan, @Lopez
   )
;
SET
   @transThree = last_insert_id();
INSERT INTO
   transactions 
VALUES
   (
      DEFAULT, '2019-03-25', @Drake, @Green
   )
;
SET
   @transFour = last_insert_id();
INSERT INTO
   transactions 
VALUES
   (
      DEFAULT, '2019-03-25',  @Taylor, @Adams
   )
;
SET
   @transFive = last_insert_id();
   
   
/* insert into transaction_detail table*/

INSERT INTO
   transaction_detail 
VALUES
   (
      DEFAULT, 2, @productOne, @transOne
   )
, 
   (
      DEFAULT, 1, @productSix, @transOne
   )
, 
   (
      DEFAULT, 1, @productNine, @transTwo
   )
, 
   (
      DEFAULT, 3, @productThree, @transTwo
   )
, 
   (
      DEFAULT, 1, @productEight, @transThree
   )
, 
   (
      DEFAULT, 1, @productSeven, @transFour
   )
, 
   (
      DEFAULT, 1, @productTwo, @transFour
   )
, 
   (
      DEFAULT, 1, @productSix, @transFive
   )
;