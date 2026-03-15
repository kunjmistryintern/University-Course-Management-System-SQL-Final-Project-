-- Create Database 

create database if not exists university_management;
use university_management;

-- 1. Create Departments Table

CREATE TABLE Departments (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE
);

-- 2. Create Instructors Table

CREATE TABLE Instructors (
    InstructorID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID) ON DELETE SET NULL
);

-- 3. Create Courses Table

CREATE TABLE Courses (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    DepartmentID INT,
    Credits INT NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID) ON DELETE CASCADE
);

-- 4. Create Students Table
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    BirthDate DATE NOT NULL,
    EnrollmentDate DATE NOT NULL
);

-- 5. Create Enrollments Table
CREATE TABLE Enrollments (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    EnrollmentDate DATE NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID) ON DELETE CASCADE,
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID) ON DELETE CASCADE
);

-- Insert 10 Departments

INSERT INTO Departments (DepartmentName) VALUES 
('Computer Science'), ('Mathematics'), ('Physics'), ('Biology'), ('Chemistry'), 
('Business Administration'), ('English Literature'), ('History'), ('Psychology'), ('Economics');

-- Insert 15 Instructors

INSERT INTO Instructors (FirstName, LastName, Email, DepartmentID) VALUES 
('Alice', 'Johnson', 'alice.johnson@univ.com', 1),
('Bob', 'Lee', 'bob.lee@univ.com', 1),
('Carol', 'Martinez', 'cmartinez@univ.com', 2),
('David', 'Kim', 'dkim@univ.com', 2),
('Eve', 'Smith', 'esmith@univ.com', 3),
('Frank', 'Wright', 'fwright@univ.com', 4),
('Grace', 'Hopper', 'ghopper@univ.com', 1),
('Heidi', 'Klum', 'hklum@univ.com', 6),
('Ivan', 'Pavlov', 'ipavlov@univ.com', 9),
('Judy', 'Garland', 'jgarland@univ.com', 7),
('Kevin', 'Bacon', 'kbacon@univ.com', 8),
('Laura', 'Dern', 'ldern@univ.com', 5),
('Mike', 'Tyson', 'mtyson@univ.com', 6),
('Nina', 'Simone', 'nsimone@univ.com', 7),
('Oscar', 'Wilde', 'owilde@univ.com', 8);

-- Insert 15 Courses

INSERT INTO Courses (CourseName, DepartmentID, Credits) VALUES 
('Introduction to SQL', 1, 3),
('Data Structures', 1, 4),
('Calculus I', 2, 4),
('Linear Algebra', 2, 3),
('Differential Equations', 2, 4),
('Classical Mechanics', 3, 4),
('Genetics', 4, 4),
('Organic Chemistry', 5, 4),
('Macroeconomics', 10, 3),
('Microeconomics', 10, 3),
('Cognitive Psychology', 9, 3),
('World History', 8, 3),
('Modern Poetry', 7, 3),
('Business Ethics', 6, 3),
('Algorithms', 1, 4);

-- Insert 50 Students

INSERT INTO Students (FirstName, LastName, Email, BirthDate, EnrollmentDate) VALUES 
('John', 'Doe', 'john.doe@email.com', '2000-01-15', '2022-08-01'),
('Jane', 'Smith', 'jane.smith@email.com', '1999-05-25', '2021-08-01'),
('Michael', 'Johnson', 'mjohnson@email.com', '2001-03-12', '2023-08-15'),
('Emily', 'Davis', 'edavis@email.com', '2002-07-22', '2020-08-10'),
('Daniel', 'Brown', 'dbrown@email.com', '2000-11-05', '2022-01-15'),
('Sarah', 'Miller', 'smiller@email.com', '1998-12-30', '2019-08-20'),
('James', 'Wilson', 'jwilson@email.com', '2001-02-14', '2023-08-01'),
('Emma', 'Moore', 'emoore@email.com', '2002-09-18', '2024-01-10'),
('William', 'Taylor', 'wtaylor@email.com', '1999-04-03', '2021-08-15'),
('Olivia', 'Anderson', 'oanderson@email.com', '2000-08-27', '2022-08-25'),
('Alexander', 'Thomas', 'athomas@email.com', '2001-10-11', '2020-08-01'),
('Sophia', 'Jackson', 'sjackson@email.com', '2002-01-05', '2023-01-20'),
('Matthew', 'White', 'mwhite@email.com', '1999-06-17', '2021-08-05'),
('Ava', 'Harris', 'aharris@email.com', '2003-03-25', '2024-08-01'),
('Lucas', 'Martin', 'lmartin@email.com', '2000-12-08', '2022-01-12'),
('Isabella', 'Thompson', 'ithompson@email.com', '2001-05-19', '2023-08-10'),
('Ethan', 'Garcia', 'egarcia@email.com', '1998-09-02', '2019-08-15'),
('Mia', 'Martinez', 'mmartinez@email.com', '2002-11-30', '2024-01-05'),
('Benjamin', 'Robinson', 'brobinson@email.com', '1999-07-14', '2021-08-20'),
('Charlotte', 'Clark', 'cclark@email.com', '2000-02-28', '2022-08-15'),
('Henry', 'Rodriguez', 'hrodriguez@email.com', '2001-08-09', '2023-01-15'),
('Amelia', 'Lewis', 'alewis@email.com', '2002-04-16', '2020-08-25'),
('Sebastian', 'Lee', 'slee@email.com', '1999-10-21', '2021-01-10'),
('Harper', 'Walker', 'hwalker@email.com', '2000-05-04', '2022-08-05'),
('Jack', 'Hall', 'jhall@email.com', '2003-01-31', '2024-08-15'),
('Evelyn', 'Allen', 'eallen@email.com', '2001-06-25', '2023-08-20'),
('Owen', 'Young', 'oyoung@email.com', '1998-11-12', '2019-08-10'),
('Abigail', 'Hernandez', 'ahernandez@email.com', '2002-08-07', '2024-01-20'),
('Samuel', 'King', 'sking@email.com', '1999-03-19', '2021-08-01'),
('Ella', 'Wright', 'ewright@email.com', '2000-09-22', '2022-01-05'),
('David', 'Lopez', 'dlopez@email.com', '2001-12-15', '2023-08-05'),
('Chloe', 'Hill', 'chill@email.com', '2002-05-08', '2020-08-15'),
('Wyatt', 'Scott', 'wscott@email.com', '1999-01-26', '2021-08-10'),
('Victoria', 'Green', 'vgreen@email.com', '2000-06-11', '2022-08-20'),
('Carter', 'Adams', 'cadams@email.com', '2003-02-03', '2024-08-05'),
('Grace', 'Baker', 'gbaker@email.com', '2001-07-29', '2023-01-10'),
('Luke', 'Gonzalez', 'lgonzalez@email.com', '1998-08-18', '2019-08-05'),
('Zoey', 'Nelson', 'znelson@email.com', '2002-10-14', '2024-01-15'),
('Dylan', 'Carter', 'dcarter@email.com', '1999-12-05', '2021-08-25'),
('Penelope', 'Mitchell', 'pmitchell@email.com', '2000-04-20', '2022-01-25'),
('Isaac', 'Perez', 'iperez@email.com', '2001-09-07', '2023-08-25'),
('Riley', 'Roberts', 'rroberts@email.com', '2002-02-12', '2020-08-05'),
('Gabriel', 'Turner', 'gturner@email.com', '1999-08-24', '2021-01-20'),
('Layla', 'Phillips', 'lphillips@email.com', '2000-10-01', '2022-08-10'),
('Anthony', 'Campbell', 'acampbell@email.com', '2003-04-09', '2024-08-20'),
('Lillian', 'Parker', 'lparker@email.com', '2001-11-26', '2023-08-01'),
('Lincoln', 'Evans', 'levans@email.com', '1998-05-15', '2019-08-25'),
('Natalie', 'Edwards', 'nedwards@email.com', '2002-06-03', '2024-01-25'),
('Joshua', 'Collins', 'jcollins@email.com', '1999-02-11', '2021-08-05'),
('Brooklyn', 'Stewart', 'bstewart@email.com', '2000-07-06', '2022-01-30');

-- Insert 65 Enrollments

INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate) VALUES 
(1, 1, '2022-08-05'), (2, 1, '2021-08-05'), (3, 1, '2023-08-18'), (4, 1, '2020-08-12'), 
(5, 1, '2022-01-18'), (6, 1, '2019-08-25'), (7, 1, '2023-08-05'), (8, 1, '2024-01-15'), 
(9, 1, '2021-08-20'), (10, 1, '2022-08-28'), (11, 1, '2020-08-05'), (12, 1, '2023-01-25'),
(13, 1, '2021-08-10'), (14, 1, '2024-08-05'), 
(1, 2, '2023-01-10'), (3, 2, '2024-01-15'), (5, 2, '2022-08-20'), (7, 2, '2024-01-10'), 
(9, 2, '2022-01-15'), (11, 2, '2021-01-20'), (13, 2, '2022-01-10'), (15, 2, '2022-08-15'), 
(17, 2, '2020-01-20'), (19, 2, '2022-01-25'), (21, 2, '2023-08-20'), (23, 2, '2021-08-15'),
(2, 3, '2021-08-10'), (4, 3, '2021-01-15'), (6, 3, '2020-01-20'), (8, 3, '2024-08-15'),
(10, 3, '2023-01-20'), (12, 3, '2023-08-25'), (14, 3, '2024-08-10'),
(15, 4, '2023-01-15'), (16, 4, '2024-01-20'), (17, 4, '2020-08-20'), (18, 4, '2024-08-15'),
(19, 5, '2022-08-25'), (20, 5, '2023-01-20'), (21, 5, '2024-01-15'),
(22, 6, '2021-08-25'), (23, 6, '2022-01-15'), (24, 6, '2023-08-10'), (25, 6, '2024-08-20'),
(26, 7, '2024-01-25'), (27, 7, '2020-08-15'), (28, 7, '2024-08-25'),
(29, 8, '2022-01-20'), (30, 8, '2023-01-10'), (31, 8, '2024-08-10'),
(32, 9, '2021-08-20'), (33, 9, '2022-08-15'), (34, 9, '2023-08-25'), (35, 9, '2024-08-10'),
(36, 10, '2024-01-15'), (37, 10, '2020-08-10'), (38, 10, '2024-08-20'),
(39, 11, '2022-08-30'), (40, 11, '2023-01-25'), (41, 11, '2024-08-30'),
(42, 12, '2021-08-10'), (43, 12, '2022-01-25'), (44, 12, '2023-08-15'),
(45, 13, '2024-08-25'), (46, 13, '2024-01-05'), (47, 13, '2020-08-30'),
(48, 14, '2024-08-30'), (49, 14, '2022-08-10'), (50, 14, '2023-01-05');

select * from courses ;
select * from departments ;
select * from enrollments ;
select * from instructors ;
select * from students ;
-- ********************************************************************************************************************************************************** --

-- 1. perform crud operations on all tables <--- <--- <---

-- create 
insert into courses (coursename, departmentid, credits) values ('advanced machine learning', 1, 4);

-- update
update courses set credits = 5 where coursename = 'advanced machine learning';

-- read 
select * from courses where coursename = 'advanced machine learning';

-- delete
delete from courses where coursename = 'advanced machine learning';

-- 2. retrieve students who enrolled after 2022 <--- <--- <---

select * from students where EnrollmentDate < '2022-12-31' ;

-- 3. retrieve courses offered by the mathematics department with a limit of 5 courses

select c.* from courses c
join departments d on c.DepartmentID = d.DepartmentID
where DepartmentName = 'mathematics'
limit 5 ;

-- 4. get the number of students enrolled in each course, filtering for courses with more than 5 students <--- <--- <---

select courseid, count(studentid) as total_students 
from enrollments 
group by courseid 
having count(studentid) > 5;

-- 5. find students who are enrolled in both introduction to sql and data structures

select s.studentid, s.firstname, s.lastname 
from students s 
join enrollments e on s.studentid = e.studentid 
join courses c on e.courseid = c.courseid 
where c.coursename in ('introduction to sql', 'data structures') 
group by s.studentid, s.firstname, s.lastname 
having count(distinct c.courseid) = 2;

-- 6. find students who are either enrolled in introduction to sql or data structures

select distinct s.studentid, s.firstname, s.lastname 
from students s 
join enrollments e on s.studentid = e.studentid 
join courses c on e.courseid = c.courseid 
where c.coursename in ('introduction to sql', 'data structures');

-- 7. calculate the average number of credits for all courses

select avg(credits) as average_credits from courses;

-- 8. find the maximum salary of instructors in the computer science department

-- salary column is not there in instructors table 

-- 9. count the number of students enrolled in each department

select d.departmentname, count(distinct e.studentid) as total_students 
from departments d 
join courses c on d.departmentid = c.departmentid 
join enrollments e on c.courseid = e.courseid 
group by d.departmentname;

-- 10. inner join: retrieve students and their corresponding courses

select s.firstname, s.lastname, c.coursename 
from students s 
inner join enrollments e on s.studentid = e.studentid 
inner join courses c on e.courseid = c.courseid;

-- 11. left join: retrieve all students and their corresponding courses, if any

select s.firstname, s.lastname, c.coursename 
from students s 
left join enrollments e on s.studentid = e.studentid 
left join courses c on e.courseid = c.courseid;

-- 12. subquery: find students enrolled in courses that have more than 10 students

select * from students 
where studentid in (
select studentid 
from enrollments 
where courseid in (
select courseid 
from enrollments 
group by courseid 
having count(studentid) > 10
)
);

-- 13. extract the year from the enrollmentdate of students

select studentid, firstname, lastname, extract(year from enrollmentdate) as enrollment_year 
from students;

-- 14. concatenate the instructor's first and last name

select instructorid, concat(firstname, ' ', lastname) as full_name 
from instructors;

-- 15. calculate the running total of students enrolled in courses

select courseid, enrollmentdate, 
count(studentid) over (partition by courseid order by enrollmentdate) as running_total_students 
from enrollments;

-- 16. label students as 'senior' or 'junior' based on their year of enrollment

select studentid, firstname, lastname, enrollmentdate,
case 
when enrollmentdate < current_date - interval 4 year then 'senior' 
else 'junior' 
end as student_status 
from students;

