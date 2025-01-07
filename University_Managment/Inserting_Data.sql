-- ≈÷«›… »Ì«‰«  ≈·Ï ÃœÊ· Departments
-- Departments ÃœÊ· «·√»
INSERT INTO Departments (ID, DepartmentName, FacultyID) 
VALUES
(1, 'Computer Science', 1),
(2, 'Electrical Engineering', 1),
(3, 'Mechanical Engineering', 2),
(4, 'Civil Engineering', 2),
(5, 'Business Administration', 3),
(6, 'Psychology', 3),
(7, 'Mathematics', 4),
(8, 'Physics', 4),
(9, 'Chemistry', 5),
(10, 'Biology', 5);

-- ≈÷«›… »Ì«‰«  ≈·Ï ÃœÊ· Faculties
-- Faculties ÃœÊ· «·√»
INSERT INTO Faculties (ID,Faculties, FacultyName, DeanID)
VALUES
(1,011, 'Engineering', 1),
(2,022, 'Science', 2),
(3,033, 'Management', 3),
(4,044, 'Arts', 4),
(5, 055,'Medicine', 5);

-- ≈÷«›… »Ì«‰«  ≈·Ï ÃœÊ· Courses
-- Courses ÃœÊ· «·√»
INSERT INTO Courses (ID, Name, Description, DepartmentID, ProfessorID)
VALUES
(1, 'Introduction to Programming', 'Basic programming course for beginners', 1, 1),
(2, 'Circuit Analysis', 'Course about electrical circuit theory', 2, 2),
(3, 'Mechanics of Materials', 'Study of material properties in mechanics', 3, 3),
(4, 'Fluid Mechanics', 'Study of fluid flow and dynamics', 4, 4),
(5, 'Management Principles', 'Introduction to the principles of management', 5, 5),
(6, 'Psychological Theories', 'Understanding various psychological theories', 6, 6),
(7, 'Discrete Mathematics', 'Study of mathematical structures', 7, 7),
(8, 'Quantum Physics', 'Study of the fundamental principles of quantum physics', 8, 8),
(9, 'Organic Chemistry', 'Study of organic compounds and reactions', 9, 9),
(10, 'Genetics', 'Introduction to the field of genetics', 10, 10);

-- ≈÷«›… »Ì«‰«  ≈·Ï ÃœÊ· Categories
-- Categories ÃœÊ· «·√»
INSERT INTO Categories (ID, Name, Description)
VALUES
(1, 'Core Courses', 'Required courses for all students'),
(2, 'Elective Courses', 'Elective courses based on student interests'),
(3, 'Research', 'Courses focused on research methodologies'),
(4, 'Laboratories', 'Courses with practical lab work'),
(5, 'Workshops', 'Short-term courses and workshops');

-- ≈÷«›… »Ì«‰«  ≈·Ï ÃœÊ· Courses_Categories
-- Courses_Categories ÃœÊ· «·√»
INSERT INTO Courses_Categories (ID, CourseId, CategoryId)
VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 5, 3),
(6, 6, 3),
(7, 7, 4),
(8, 8, 4),
(9, 9, 5),
(10, 10, 5);

-- ≈÷«›… »Ì«‰«  ≈·Ï ÃœÊ· Teachers
-- Teachers ÃœÊ· «·√»
INSERT INTO Teachers (ID, FirstName, LastName, Email, PhoneNumber, HireDate, DepartmentID)
VALUES
(1, 'John', 'Doe', 'john.doe@university.com', '123456789', '2010-01-01', 11),
(2, 'Alice', 'Smith', 'alice.smith@university.com', '987654321', '2011-05-12', 2),
(3, 'Robert', 'Johnson', 'robert.johnson@university.com', '543216789', '2012-08-23', 3),
(4, 'Emily', 'Davis', 'emily.davis@university.com', '456789123', '2013-11-10', 4),
(5, 'David', 'Miller', 'david.miller@university.com', '789123456', '2014-04-14', 5),
(6, 'Sarah', 'Wilson', 'sarah.wilson@university.com', '321654987', '2015-07-20', 6),
(7, 'James', 'Moore', 'james.moore@university.com', '654987321', '2016-03-05', 7),
(8, 'Olivia', 'Taylor', 'olivia.taylor@university.com', '123987654', '2017-12-10', 8),
(9, 'Lucas', 'Anderson', 'lucas.anderson@university.com', '987321654', '2018-09-15', 9),
(10, 'Sophia', 'Thomas', 'sophia.thomas@university.com', '741258963', '2019-02-19', 10);

-- ≈÷«›… »Ì«‰«  ≈·Ï ÃœÊ· Students
-- Students ÃœÊ· «·√»
INSERT INTO Students (ID, FirstName, LastName, AcademicYear, Gender, BirthDate, MajorID, PhoneNumber, Email, EnrollmentDate)
VALUES
(11, 'Alice', 'Williams', 1, 1, '2000-01-15', 5, '1234567890', 'alice.williams@university.com', '2020-09-01'),
(12, 'Bob', 'Miller', 2, 0, '1999-05-25', 2, '2345678901', 'bob.miller@university.com', '2019-09-01'),
(13, 'Charlie', 'Brown', 3, 1, '1998-07-10', 3, '3456789012', 'charlie.brown@university.com', '2018-09-01'),
(4, 'Daniel', 'Davis', 4, 0, '1997-11-22', 4, '4567890123', 'daniel.davis@university.com', '2017-09-01'),
(5, 'Eva', 'Taylor', 5, 1, '1996-03-13', 5, '5678901234', 'eva.taylor@university.com', '2016-09-01'),
(6, 'Frank', 'Jackson', 1, 0, '2000-02-28', 6, '6789012345', 'frank.jackson@university.com', '2020-09-01'),
(7, 'Grace', 'Martinez', 2, 1, '1999-08-05', 7, '7890123456', 'grace.martinez@university.com', '2019-09-01'),
(8, 'Henry', 'Hernandez', 3, 0, '1998-12-15', 8, '8901234567', 'henry.hernandez@university.com', '2018-09-01'),
(9, 'Ivy', 'Lopez', 4, 1, '1997-06-11', 9, '9012345678', 'ivy.lopez@university.com', '2017-09-01'),
(10, 'Jack', 'Gonzalez', 5, 0, '1996-10-30', 10, '0123456789', 'jack.gonzalez@university.com', '2016-09-01');

-- ≈÷«›… »Ì«‰«  ≈·Ï ÃœÊ· Enrollments
-- Enrollments ÃœÊ· «·√»
INSERT INTO Enrollments (ID, StudentID, CourseID, EnrollmentDate, Grade)
VALUES
(1, 1, 1, '2020-09-01', 95),
(2, 2, 2, '2019-09-01', 88),
(3, 3, 3, '2018-09-01', 92),
(4, 4, 4, '2017-09-01', 85),
(5, 5, 5, '2016-09-01', 90),
(6, 6, 6, '2020-09-01', 80),
(7, 7, 7, '2019-09-01', 76),
(8, 8, 8, '2018-09-01', 89),
(9, 9, 9, '2017-09-01', 84),
(10, 10, 10, '2016-09-01', 91);






