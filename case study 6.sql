create database OLP;
use OLP;

create table courses(id int primary key auto_increment,
title varchar (100) not null ,
description varchar (100)
);
select*from courses;

INSERT INTO Courses (title, description) VALUES
('Introduction to Computer Science', 'A foundational course in computer science principles.'),
('Data Structures and Algorithms', 'An in-depth look at essential data structures and algorithms.'),
('Database Management Systems', 'Learn the fundamentals of database design and SQL.'),
('Operating Systems', 'Explore the inner workings of operating systems.'),
('Artificial Intelligence', 'Introduction to AI concepts and techniques.');


create table Instructors(id int primary key auto_increment,
name varchar(100) not null,
expertis varchar(100)not null
);
select*from Instructors;

create table  Students(id int primary key auto_increment,
name varchar(100) not null,
email varchar(100) not null unique
);
select*from Students;

create table Enrollments(enrollment_date date not null,
 student_id int ,
 course_id int,
 Primary Key (student_id,course_id),
 foreign key (student_id) References Students(id),
 foreign key (course_id )References Courses(id)
 );
select*from Enrollments limit 0,2000;
 
 select students.name,courses.title
 from Enrollments
 join Students on enrollments.student_id=Students.id
 join Courses on enrollments.course_id=courses.id;
  
SELECT Courses.title, COUNT(Enrollments.student_id) AS student_count
FROM Enrollments
JOIN Courses ON Enrollments.course_id = Courses.id
GROUP BY Courses.title;


