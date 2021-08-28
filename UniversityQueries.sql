/* Query 1 */
SELECT 
    college, COUNT(DISTINCT course) AS courses
FROM
    colleges col
        JOIN
    departments dep ON col.college_id = dep.college_college_id
        JOIN
    courses cose ON dep.department_id = cose.departments_department_id
GROUP BY college
ORDER BY COUNT(courses) DESC

/* Query 2 */

SELECT DISTINCT
    professor_name, year, term, capacity AS 'TeachingCapacity'
FROM
    enrollment en
        JOIN
    professors prof ON en.professors_professor_id = prof.professor_id
        JOIN
    courses cos ON prof.professor_id = cos.professors_professor_id
        JOIN
    years yrs ON yrs.year_id = en.years_year_id
ORDER BY professor_name



/* Query 3 */

SELECT DISTINCT
    professor_name,year,term, COUNT(student_name) as 'StudentCount'
FROM
    enrollment en
        JOIN
    professors prof ON en.professors_professor_id = prof.professor_id
        JOIN
    courses cos ON prof.professor_id = cos.professors_professor_id
        JOIN
    years yr ON yr.year_id = en.years_year_id
        JOIN
    students st ON st.student_id = en.students_student_id
GROUP BY professor_name , year , term
ORDER BY professor_name


/*Query 4*/

SELECT DISTINCT
    professor_name
FROM
    enrollment en
        JOIN
    students st ON en.students_student_id = st.student_id
        JOIN
    professors prof ON en.professors_professor_id = prof.professor_id
        JOIN
    years yr ON en.years_year_id = yr.year_id
WHERE
    student_id = 7 AND year = '2017'
        AND term = 'Winter'
    
    
/*Query 5*/

SELECT DISTINCT
    student_name
FROM
    enrollment en
        JOIN
    students st ON en.students_student_id = st.student_id
        JOIN
    years yr ON en.years_year_id = yr.year_id
WHERE
    course_number = '388' AND year = '2016'
        AND term = 'Fall'


/*Query 6*/

SELECT 
    student_name, term, year, SUM(credits) AS 'Credits'
FROM
    enrollment en
        JOIN
    students st ON en.students_student_id = st.student_id
        JOIN
    professors prof ON en.professors_professor_id = prof.professor_id
        JOIN
    courses cs ON prof.professor_id = cs.professors_professor_id
        JOIN
    years yr ON en.years_year_id = yr.year_id
GROUP BY student_name , term , year
ORDER BY term ASC , year ASC, credits DESC
        
        
/*Query 7*/ 
  
  SELECT 
    student_name, term, year, SUM(credits) AS 'Credits'
FROM
    enrollment en
        JOIN
    students st ON en.students_student_id = st.student_id
        JOIN
    professors prof ON en.professors_professor_id = prof.professor_id
        JOIN
    courses cs ON prof.professor_id = cs.professors_professor_id
        JOIN
    years yr ON en.years_year_id = yr.year_id
GROUP BY student_name , term , year
HAVING SUM(credits) > 3
ORDER BY term ASC , year ASC , credits DESC


/*Query 8*/ 

SELECT 
    student_name, dob AS 'DOB'
FROM
    students
WHERE
    EXTRACT(MONTH FROM dob) = 9
    
/*Query 9 */

SELECT 
    student_name,
    dob AS 'DOB',
    CONCAT(ROUND(DATEDIFF('2017-01-05', dob) / 365),
            '-',
            'Yrs',
            ' ',
            ROUND((DATEDIFF('2017-01-05', dob) / 365) % 1 * 365),
            '-',
            'Days') AS 'YearDays'
FROM
    students
ORDER BY dob