
CREATE DATABASE StudentsDB;
USE StudentsDB;

-- CREATE TABLES

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Age INT,
    City VARCHAR(50)
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Duration VARCHAR(20)
);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);


-- INSERT SAMPLE DATA

INSERT INTO Students VALUES
(1, 'Aarav', 21, 'Chennai'),
(2, 'Meera', 22, 'Bangalore'),
(3, 'Karthik', 23, 'Hyderabad'),
(4, 'Divya', 21, 'Delhi');

INSERT INTO Courses VALUES
(101, 'Data Analytics', '3 Months'),
(102, 'Python Programming', '2 Months'),
(103, 'SQL Basics', '1 Month');

INSERT INTO Enrollments VALUES
(1001, 1, 101, '2025-05-10'),
(1002, 2, 102, '2025-06-01'),
(1003, 3, 103, '2025-06-15');

-- 1.Show students with their enrolled course names.

select s.studentname,c.coursename 
from courses as c
inner join enrollments as e on e.courseid=c.courseid
inner join students as s on e.studentid=s.studentid;

INSERT INTO Courses VALUES (104, 'Power BI', '2 Months');

-- 2.List all students and their courses, including those without matches.

select s.studentname,c.coursename
from courses as c
left join enrollments as e on e.courseid=c.courseid
left join students as s on e.studentid=s.studentid

union

select s.studentname,c.coursename
from courses as c
right join enrollments as e on e.courseid=c.courseid
right join students as s on e.studentid=s.studentid;

-- 3.Round the value 123.4567 to two decimal places using the ROUND() function

select round(123.4567,2);

-- 4.Use ABS() to convert negative numbers to positive and MOD() to find the remainder when 25 is divided by 4.

select abs(-20000);
select mod(25,4);

-- 5.Use CONCAT() to merge StudentName and City into one column like “Aarav from Chennai.

select concat(studentname, ' ', city) as students_city
from students;

-- 6. Use LENGTH() to display each student’s name along with its character count.

select studentname, length(studentname) name_length from students;

-- 7. Use REPLACE() to modify course names in the Courses table.

select coursename, replace(coursename,'SQL','Database') updated_coursename from courses;

-- 8.Use SUBSTRING() to extract the first 3 characters from StudentName.

select studentname, substring(studentname,1,3) code_prefix
from students;

-- 9.Use UPPER() and LOWER() to show each name in uppercase and lowercase

select studentname, upper(studentname) upper_name, lower(studentname) lower_name
from students;

/*   1.	Use NOW() to display the current date and time.
     2.	Use DATEDIFF() to find the number of days between '2025-06-01' and '2025-05-10'.
     3.	Use DATE_ADD() to add 10 days to each student’s EnrollmentDate.
*/

select e.studentid,s.studentname,enrollmentdate, 
	   date_add(enrollmentdate, interval 10 day) as followup_date,
       datediff('2025-06-01','2025-05-10') Days_Difference,
       now() as Current_DateTime
from enrollments as e
inner join students as s on s.studentid=e.studentid;








