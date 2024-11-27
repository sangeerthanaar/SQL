create database HMS;
use HMS;

Create Table Patients(id INT Primary Key Auto_Increment,
     patient_name VARCHAR(50) Not Null,
     age INT Not Null, 
     gender VARCHAR(10),
     contact VARCHAR(50)
);
select*from Patients;
INSERT INTO Patients (patient_name, age, gender, contact) VALUES
('Arjun Kumar', 45, 'Male', 'arjun.kumar@example.com'),
('Priya Singh', 32, 'Female', 'priya.singh@example.com'),
('Rahul Mehta', 29, 'Male', 'rahul.mehta@example.com'),
('Sneha Patel', 37, 'Female', 'sneha.patel@example.com'),
('Vikram Joshi', 50, 'Male', 'vikram.joshi@example.com');
select*from Patients;

Create Table Doctors(id INT Primary Key Auto_Increment,
     doctor_name VARCHAR(50) Not Null,
     specialization VARCHAR(50) Not Null
);
select*from Doctors;
INSERT INTO Doctors (doctor_name, specialization) VALUES
('Dr. Anjali Sharma', 'Cardiology'),
('Dr. Rajesh Gupta', 'Neurology'),
('Dr. Sneha Rao', 'Pediatrics'),
('Dr. Vikram Singh', 'Orthopedics'),
('Dr. Priya Mehta', 'Dermatology');
select*from Doctors;

Create Table Appointments (id INT Primary Key Auto_Increment,
     patient_id INT,
     Foreign Key(patient_id) References Patients(id),
     doctor_id INT, 
     Foreign Key(doctor_id) References Doctors(id),
     appointment_date DATE Not Null,
     status ENUM('Scheduled', 'Completed', 'Cancelled')
);
select*from Appointments;
INSERT INTO Appointments (patient_id, doctor_id, appointment_date, status) VALUES
(1, 1, '2024-12-01', 'Scheduled'),
(2, 2, '2024-12-02', 'Completed'),
(3, 3, '2024-12-03', 'Cancelled'),
(4, 4, '2024-12-04', 'Scheduled'),
(5, 5, '2024-12-05', 'Completed');
select*from Appointments;

select patient_name,doctor_name









