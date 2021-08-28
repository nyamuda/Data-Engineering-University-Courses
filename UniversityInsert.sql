/* Inserting data into students table */

INSERT INTO students
VALUES (DEFAULT,'Paul','M','Dallas','TX','1996-02-22');


SET @Paul = last_insert_id();


INSERT INTO students
VALUES (DEFAULT,'Katie','F','Provo','UT','1995-07-22');


SET @Katie=last_insert_id();


INSERT INTO students
VALUES (DEFAULT,'Kelly','F','Provo','UT','1998-06-22');


SET @Kelly=last_insert_id();


INSERT INTO students
VALUES (DEFAULT,'Devon','M','Mesa','AZ','2000-07-22');


SET @Devon=last_insert_id();


INSERT INTO students
VALUES (DEFAULT,'Mandy','F','Topeka','KS','1996-11-22');


SET @Mandy=last_insert_id();


INSERT INTO students
VALUES (DEFAULT,'Alece','F','Rigby','ID','1997-05-22');


SET @Alece=last_insert_id();


INSERT INTO students
VALUES (DEFAULT,'Bryce','M','Bozeman','MT','1997-11-22');


SET @Bryce=last_insert_id();


INSERT INTO students
VALUES (DEFAULT,'Preston','M','Decatur','TN','1996-09-22');


SET @Preston=last_insert_id();


INSERT INTO students
VALUES (DEFAULT,'Julia','F','Rexburg','ID','1998-09-22');


SET @Julia=last_insert_id();


INSERT INTO students
VALUES (DEFAULT,'Susan','F','Mesa','AZ','1998-09-08');


SET @Susan=last_insert_id();

/* Inserting data into professors table */
INSERT INTO professors
VALUES (DEFAULT,'Morring');


SET @Morring=last_insert_id();


INSERT INTO professors
VALUES (DEFAULT,'Nate');


SET @Nate=last_insert_id();


INSERT INTO professors
VALUES (DEFAULT,'Barrus');


SET @Barrus=last_insert_id();


INSERT INTO professors
VALUES (DEFAULT,'Barney');


SET @Barney=last_insert_id();


INSERT INTO professors
VALUES (DEFAULT,'Jensen');


SET @Jensen=last_insert_id();

/* Inserting data into colleges table */


INSERT INTO colleges
VALUES (DEFAULT,'College of Business and Communication');


SET @Business=last_insert_id();


INSERT INTO colleges
VALUES (DEFAULT,'College of Language and Letters');


SET @Language_college=last_insert_id();


/* Inserting data into departments table */


INSERT INTO departments
VALUES (DEFAULT,'Computer Information Technology','CIT',@Business);


SET @Computer_dept=last_insert_id();


INSERT INTO departments
VALUES (DEFAULT,'Economics','ECON',@Business);


SET @Economics_dept=last_insert_id();


INSERT INTO departments
VALUES (DEFAULT,'Humanities and Philosophy','HUM',@Language_college);


SET @Humanity_dept=last_insert_id();


/* Inserting data into courses table */


INSERT INTO courses
VALUES (DEFAULT,'Intro to Databases','111',3,35,@Computer_dept,@Barney);

SET @Database_course_barney=last_insert_id();


INSERT INTO courses
VALUES (DEFAULT,'Intro to Databases','111',3,30,@Computer_dept,@Morring);


SET @Database_course_morring=last_insert_id();


INSERT INTO courses
VALUES (DEFAULT,'Micro Economics','150',3,50,@Economics_dept,@Nate);


SET @Micro_course=last_insert_id();


INSERT INTO courses
VALUES (DEFAULT,'Econometrics','388',4,35,@Economics_dept,@Barrus);


SET @Metrics_course=last_insert_id();


INSERT INTO courses
VALUES (DEFAULT,'The Classical Heritage','376',2,30,@Humanity_dept,@Jensen);


SET @Heritage_course=last_insert_id();

/* Inserting data into student_course table */


INSERT INTO student_course
VALUES (@Alece,@Database_course_barney),
       (@Bryce,@Database_course_morring),
       (@Bryce,@Micro_course),
       (@Bryce,@Heritage_course),
       (@Devon,@Heritage_course),
       (@Julia,@Micro_course),
       (@Katie,@Metrics_course),
       (@Kelly,@Metrics_course),
       (@Mandy,@Metrics_course),
       (@Mandy,@Heritage_course),
       (@Paul,@Database_course_morring),
       (@Paul,@Micro_course),
       (@Preston,@Micro_course),
       (@Susan,@Database_course_morring);
       

/* Inserting data into years table */


INSERT INTO years
VALUES (DEFAULT,'2016');


SET @Year_2016=last_insert_id();


INSERT INTO years
VALUES (DEFAULT,'2017');


SET @Year_2017=last_insert_id();

/* Inserting data into year_course table */
INSERT INTO year_course
VALUES (@Year_2016,@Database_course_morring),
       (@Year_2016,@Micro_course),
       (@Year_2016,@Heritage_course),
       (@Year_2016,@Metrics_course),
       (@Year_2017,@Database_course_morring),
       (@Year_2017,@Database_course_barney),
       (@Year_2017,@Micro_course),
       (@Year_2017,@Heritage_course);


/* Inserting data into terms table */

INSERT INTO terms
VALUES (DEFAULT,'Winter',@Year_2016),
       (DEFAULT,'Fall',@Year_2016),
       (DEFAULT,'Winter',@Year_2017),
       (DEFAULT,'Fall',@Year_2017);
       
       
       
/* Inserting data into enrollment table */
INSERT INTO enrollment
VALUES 
(DEFAULT,'111','Winter','3',@Alece,@Barney,@Year_2017),
(default,'111','Winter','2',@Bryce,@Morring,@Year_2017),
(default,'150','Winter','1',@Bryce,@Nate,@Year_2017),
(default,'376','Winter','1',@Bryce,@Jensen,@Year_2017),
(default,'376','Fall','1',@Devon,@Jensen,@Year_2016),
(default,'150','Winter','2',@Julia,@Nate,@Year_2017),
(default,'388','Fall','1',@Katie,@Barrus,@Year_2016),
(default,'388','Fall','1',@Kelly,@Barrus,@Year_2016),
(default,'388','Fall','1',@Mandy,@Barrus,@Year_2016),
(default,'376','Fall','1',@Mandy,@Jensen,@Year_2016),
(default,'111','Fall','1',@Paul,@Morring,@Year_2016),
(default,'150','Fall','2',@Paul,@Nate,@Year_2016),
(default,'150','Winter','2',@Preston,@Nate,@Year_2017),
(DEFAULT,'111','Winter','2',@Susan,@Morring,@Year_2017);


