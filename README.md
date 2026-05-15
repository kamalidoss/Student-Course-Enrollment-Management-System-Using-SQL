# Student Course Enrollment Management System 🎓

## Objective
The objective of this project is to design and manage a relational database system for students, courses, and enrollments using SQL. The project demonstrates SQL joins, string functions, mathematical functions, and date functions through real-world educational data analysis.

---

## Project Description
This project contains three related tables:

1. Students
2. Courses
3. Enrollments

The database is designed to manage student information, course details, and enrollment records while demonstrating relational database concepts and SQL functions.

The project includes:
- Table creation with primary and foreign keys
- Data insertion and retrieval
- Join operations
- Mathematical functions
- String functions
- Date and time functions

---

## Database Schema

### Students Table
Stores student details.

| Column Name | Data Type | Constraints |
|-------------|-----------|-------------|
| StudentID | INT | PRIMARY KEY |
| StudentName | VARCHAR(50) | - |
| Age | INT | - |
| City | VARCHAR(50) | - |

---

### Courses Table
Stores course information.

| Column Name | Data Type | Constraints |
|-------------|-----------|-------------|
| CourseID | INT | PRIMARY KEY |
| CourseName | VARCHAR(50) | - |
| Duration | VARCHAR(20) | - |

---

### Enrollments Table
Stores enrollment details linking students and courses.

| Column Name | Data Type | Constraints |
|-------------|-----------|-------------|
| EnrollmentID | INT | PRIMARY KEY |
| StudentID | INT | FOREIGN KEY |
| CourseID | INT | FOREIGN KEY |
| EnrollmentDate | DATE | - |

---

## Features
- Relational database design
- Primary key and foreign key relationships
- Data insertion and retrieval
- INNER JOIN operations
- LEFT JOIN and RIGHT JOIN operations
- UNION operation
- Mathematical functions
- String manipulation functions
- Date and time functions
- Data formatting and transformation

---

## SQL Concepts Covered
- CREATE DATABASE
- CREATE TABLE
- INSERT INTO
- SELECT Statement
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- UNION
- ROUND()
- ABS()
- MOD()
- CONCAT()
- LENGTH()
- REPLACE()
- SUBSTRING()
- UPPER()
- LOWER()
- NOW()
- DATEDIFF()
- DATE_ADD()

---

## Queries Implemented

### Join Queries
- Display students with enrolled course names
- List all students and courses including unmatched records

### Mathematical Functions
- ROUND() for decimal precision
- ABS() for absolute values
- MOD() for remainder calculations

### String Functions
- CONCAT() to combine student name and city
- LENGTH() to count characters
- REPLACE() to modify course names
- SUBSTRING() to extract characters
- UPPER() and LOWER() for text formatting

### Date Functions
- NOW() to display current date and time
- DATEDIFF() to calculate difference between dates
- DATE_ADD() to generate follow-up dates

---

## Sample Analytical Questions Solved

1. Show students with their enrolled course names.
2. Display all students and courses including unmatched records.
3. Round decimal values using ROUND().
4. Convert negative numbers using ABS().
5. Find remainder values using MOD().
6. Merge student name and city using CONCAT().
7. Count characters in student names.
8. Modify course names using REPLACE().
9. Extract name prefixes using SUBSTRING().
10. Display uppercase and lowercase values.
11. Calculate date differences and future dates.

---

## Learning Outcomes
By completing this project, you will learn:
- How relational databases work
- How to create relationships between tables
- How SQL joins combine related data
- How mathematical and string functions work
- How to perform date calculations in SQL
- How to transform and format data using SQL functions

---

## Conclusion
This project provides practical experience in SQL database management and function-based data analysis using a student enrollment system. It demonstrates essential SQL operations commonly used in academic and business database applications.

---
