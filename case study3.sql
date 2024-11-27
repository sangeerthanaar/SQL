create database SMS;
use SMS;

 Create Table Student(student_id INT Primary Key Auto_Increment,
     stu_name VARCHAR(50) Not Null,
     age INT Not Null,
     email VARCHAR(50) Not Null Unique
   );
select*from student;
INSERT INTO Student (stu_name, age, email) VALUES
('Alice Johnson', 20, 'alice.johnson@example.com'),
('Bob Smith', 22, 'bob.smith@example.com'),
('Charlie Davis', 21, 'charlie.davis@example.com'),
('Diana Moore', 23, 'diana.moore@example.com'),
('Evan Brown', 19, 'evan.brown@example.com');
select*from student;

Create Table Course(course_id INT Primary Key Auto_Increment,
     course_name VARCHAR(50) Not Null
     );
select*from Course;
INSERT INTO Course (course_name) VALUES
('Introduction to Programming'),
('Data Structures and Algorithms'),
('Database Management Systems'),
('Operating Systems'),
('Computer Networks');
select*from Course;

Create Table Enrollments(student_id INT,
    course_id INT, 
    grade CHAR(5),
	Primary Key (student_id, course_id),
    Foreign Key (student_id) References Student(student_id),
    Foreign Key (course_id) References Course(course_id)
    );
select*from Enrollements;
SELECT * FROM Enrollments LIMIT 0, 2000;

INSERT INTO Enrollments (student_id, course_id, grade) VALUES
(1, 1, 'A'),
(2, 2, 'B+'),
(3, 3, 'A-'),
(4, 4, 'B'),
(5, 5, 'A');
SELECT * FROM Enrollments LIMIT 0, 2000;

SELECT Student.stu_name, Course.course_name
FROM Enrollments
JOIN Student ON Enrollments.student_id = Student.student_id
JOIN Course ON Enrollments.course_id = Course.course_id;

SELECT Course.course_name, COUNT(Enrollments.student_id) AS student_count
FROM Enrollments
JOIN Course ON Enrollments.course_id = Course.course_id
GROUP BY Course.course_name;

