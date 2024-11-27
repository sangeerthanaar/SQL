create database LBD;
use LBD;

create table Book( id INT Primary Key Auto_Increment,
title VARCHAR(100) Not Null,
author VARCHAR(50) Not Null,
published_year YEAR Not Null,
genre VARCHAR(30));
select*from Book;

create table Member(id INT Primary Key Auto_Increment,
     member_name VARCHAR(50) Not Null,
     membership_date DATE Not Null
);
select*from member;

create table Borrowing (id INT Primary Key Auto_Increment,
book_id INT,
member_id INT,
borrow_date DATE Not Null,
return_date DATE,
Foreign Key(Book_id)References Book(id),
Foreign Key(member_id) References Member(id)
);
select*from Borrowing;

INSERT INTO Book(id,title, author, published_year, genre)
VALUES 
(1,'The Great Gatsby', 'F. Scott Fitzgerald', 1925, 'Fiction'),
(2,'To Kill a Mockingbird', 'Harper Lee', 1960, 'Fiction'),
INSERT INTO Book(title, author, published_year, genre)VALUES 
('The Catcher in the Rye', 'J.D. Salinger', 1951, 'Literary Fiction'),
('Moby-Dick', 'Herman Melville', 1851, 'Adventure');
select*from Book;

