
/* Inserting data into students table */

insert into students
values
(default,'Paul','M','Dallas','TX','1996-02-22');
SET @Paul = last_insert_id();

insert into students
values
(default,'Katie','F','Provo','UT','1995-07-22');
set @Katie=last_insert_id();

insert into students
values
(default,'Kelly','F','Provo','UT','1998-06-22');
set @Kelly=last_insert_id();

insert into students
values
(default,'Devon','M','Mesa','AZ','2000-07-22');
set @Devon=last_insert_id();

insert into students
values
(default,'Mandy','F','Topeka','KS','1996-11-22');
set @Mandy=last_insert_id();

insert into students
values
(default,'Alece','F','Rigby','ID','1997-05-22');
set @Alece=last_insert_id();

insert into students
values
(default,'Bryce','M','Bozeman','MT','1997-11-22');
set @Bryce=last_insert_id();

insert into students
values
(default,'Preston','M','Decatur','TN','1996-09-22');
set @Preston=last_insert_id();

insert into students
values
(default,'Julia','F','Rexburg','ID','1998-09-22');
set @Julia=last_insert_id();

insert into students
values
(default,'Susan','F','Mesa','AZ','1998-09-08');
set @Susan=last_insert_id();



/* Inserting data into professors table */

insert into professors
values
(default,'Morring');
set @Morring=last_insert_id();

insert into professors
values
(default,'Nate');
set @Nate=last_insert_id();

insert into professors
values
(default,'Barrus');
set @Barrus=last_insert_id();

insert into professors
values
(default,'Barney');
set @Barney=last_insert_id();

insert into professors
values
(default,'Jensen');
set @Jensen=last_insert_id();


/* Inserting data into colleges table */
insert into colleges
values
(default,'College of Business and Communication');
set @Business=last_insert_id();

insert into colleges
values
(default,'College of Language and Letters');
set @Language_college=last_insert_id();


/* Inserting data into departments table */

insert into departments
values
(default,'Computer Information Technology','CIT',@Business);
set @Computer_dept=last_insert_id();

insert into departments
values
(default,'Economics','ECON',@Business);
set @Economics_dept=last_insert_id();


insert into departments
values
(default,'Humanities and Philosophy','HUM',@Language_college);
set @Humanity_dept=last_insert_id();


/* Inserting data into courses table */

insert into courses
values
(default,'Intro to Databases','111',3,35,@Computer_dept,@Barney);
set @Database_course=last_insert_id();

insert into courses
values
(default,'Intro to Databases','111',3,30,@Computer_dept,@Morring);
set @Database_course=last_insert_id();

insert into courses
values
(default,'Micro Economics','150',3,50,@Economics_dept,@Nate);
set @Micro_course=last_insert_id();

insert into courses
values
(default,'Econometrics','388',4,35,@Economics_dept,@Nate);
set @Metrics_course=last_insert_id();

insert into courses
values
(default,'The Classical Heritage','376',2,30,@Humanity_dept,@Jensen);
set @Heritage_course=last_insert_id();

/* Inserting data into student_course table */

insert into student_course
values
(@Alece,@Database_course),
(@Bryce,@Database_course),
(@Bryce,@Micro_course),
(@Bryce,@Heritage_course),
(@Devon,@Heritage_course),
(@Julia,@Micro_course),
(@Katie,@Metrics_course),
(@Kelly,@Metrics_course),
(@Mandy,@Metrics_course),
(@Mandy,@Heritage_course),
(@Paul,@Database_course),
(@Paul,@Micro_course),
(@Preston,@Micro_course),
(@Susan,@Database_course);


/* Inserting data into years table */

insert into years
values
(default,'2016');
set @Year_2016=last_insert_id();

insert into years
values
(default,'2017');
set @Year_2017=last_insert_id();


/* Inserting data into year_course table */

insert into year_course
values
(@Year_2016,@Database_course),
(@Year_2016,@Micro_course),
(@Year_2016,@Heritage_course),
(@Year_2016,@Metrics_course),
(@Year_2017,@Database_course),
(@Year_2017,@Micro_course),
(@Year_2017,@Heritage_course);


/* Inserting data into sections table */

insert into sections
values
(1);
set @Section_1=last_insert_id();

insert into sections
values
(2);
set @Section_2=last_insert_id();

insert into sections
values
(3);
set @Section_3=last_insert_id();


/* Inserting data into section_course table */

insert into section_course
values
(@Database_course,@Section_1),
(@Database_course,@Section_2),
(@Database_course,@Section_3),
(@Micro_course,@Section_1),
(@Micro_course,@Section_2),
(@Metrics_course,@Section_1),
(@Heritage_course,@Section_1);


/* Inserting data into terms table */
insert into terms
values
(default,'Winter',@Year_2016),
(default,'Fall',@Year_2016),
(default,'Winter',@Year_2017),
(default,'Fall',@Year_2017);