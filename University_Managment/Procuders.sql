-- Stored Procedures for Students Table
--#Create
CREATE PROCEDURE AddStudent
    @p_FirstName VARCHAR(255),
    @p_LastName VARCHAR(255),
    @p_Email VARCHAR(255),
    @p_DateOfBirth DATE,
    @p_EnrollmentDate DATE
AS
BEGIN
    INSERT INTO Students (FirstName, LastName, Email, DateOfBirth, EnrollmentDate)
    VALUES (@p_FirstName, @p_LastName, @p_Email, @p_DateOfBirth, @p_EnrollmentDate);
END;
GO

--#ReadByID
CREATE PROCEDURE GetStudentByID
    @p_ID BIGINT
AS
BEGIN
    SELECT * FROM Students WHERE ID = @p_ID;
END;
GO

--#ReadAll
CREATE PROCEDURE GetAllStudents
AS
BEGIN
    SELECT * FROM Students;
END;
GO

--#Update
CREATE PROCEDURE UpdateStudent
    @p_ID BIGINT,
    @p_FirstName VARCHAR(255),
    @p_LastName VARCHAR(255),
    @p_Email VARCHAR(255),
    @p_DateOfBirth DATE,
    @p_EnrollmentDate DATE
AS
BEGIN
    UPDATE Students
    SET FirstName = @p_FirstName,
        LastName = @p_LastName,
        Email = @p_Email,
        BirthDate = @p_DateOfBirth,
        EnrollmentDate = @p_EnrollmentDate
    WHERE ID = @p_ID;
END;
GO

--#Delete
CREATE PROCEDURE DeleteStudent
    @p_ID BIGINT
AS
BEGIN
    DELETE FROM Students WHERE ID = @p_ID;
END;
GO


-- Stored Procedures for Courses Table
--#Create
CREATE PROCEDURE AddCourse
    @p_Name VARCHAR(255),
    @p_Description TEXT,
    @p_ProfessorID BIGINT
AS
BEGIN
    INSERT INTO Courses (Name, Description, ProfessorID)
    VALUES (@p_Name, @p_Description, @p_ProfessorID);
END;
GO

--#ReadByID
CREATE PROCEDURE GetCourseByID
    @p_ID BIGINT
AS
BEGIN
    SELECT * FROM Courses WHERE ID = @p_ID;
END;
GO

--#ReadAll
CREATE PROCEDURE GetAllCourses
AS
BEGIN
    SELECT * FROM Courses;
END;
GO

--#Update
CREATE PROCEDURE UpdateCourse
    @p_ID BIGINT,
    @p_Name VARCHAR(255),
    @p_Description TEXT,
    @p_ProfessorID BIGINT
AS
BEGIN
    UPDATE Courses
    SET Name = @p_Name,
        Description = @p_Description,
        ProfessorID = @p_ProfessorID
    WHERE ID = @p_ID;
END;
GO

--#Delete
CREATE PROCEDURE DeleteCourse
    @p_ID BIGINT
AS
BEGIN
    DELETE FROM Courses WHERE ID = @p_ID;
END;
GO


-- Stored Procedures for Enrollments Table
--#Create
CREATE PROCEDURE AddEnrollment
    @p_StudentID BIGINT,
    @p_CourseID BIGINT,
    @p_EnrollmentDate DATE,
    @p_Grade VARCHAR(10)
AS
BEGIN
    INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate, Grade)
    VALUES (@p_StudentID, @p_CourseID, @p_EnrollmentDate, @p_Grade);
END;
GO

--#ReadByID
CREATE PROCEDURE GetEnrollmentByID
    @p_ID BIGINT
AS
BEGIN
    SELECT * FROM Enrollments WHERE ID = @p_ID;
END;
GO

--#ReadAll
CREATE PROCEDURE GetAllEnrollments
AS
BEGIN
    SELECT * FROM Enrollments;
END;
GO

--#Update
CREATE PROCEDURE UpdateEnrollment
    @p_ID BIGINT,
    @p_StudentID BIGINT,
    @p_CourseID BIGINT,
    @p_EnrollmentDate DATE,
    @p_Grade VARCHAR(10)
AS
BEGIN
    UPDATE Enrollments
    SET StudentID = @p_StudentID,
        CourseID = @p_CourseID,
        EnrollmentDate = @p_EnrollmentDate,
        Grade = @p_Grade
    WHERE ID = @p_ID;
END;
GO

--#Delete
CREATE PROCEDURE DeleteEnrollment
    @p_ID BIGINT
AS
BEGIN
    DELETE FROM Enrollments WHERE ID = @p_ID;
END;
GO


-- Stored Procedures for StudentsPayment Table
--#Create
CREATE PROCEDURE AddStudentPayment
    @p_StudentID BIGINT,
    @p_AmountPaid DECIMAL(10, 2),
    @p_PaymentType VARCHAR(255),
    @p_PaymentDate DATE
AS
BEGIN
    INSERT INTO StudentsPayment (StudentID, AmountPaid, PaymentType, PaymentDate)
    VALUES (@p_StudentID, @p_AmountPaid, @p_PaymentType, @p_PaymentDate);
END;
GO

--#ReadByID
CREATE PROCEDURE GetStudentPaymentByID
    @p_ID BIGINT
AS
BEGIN
    SELECT * FROM StudentsPayment WHERE ID = @p_ID;
END;
GO

--#ReadAll
CREATE PROCEDURE GetAllStudentsPayment
AS
BEGIN
    SELECT * FROM StudentsPayment;
END;
GO

--#Update
CREATE PROCEDURE UpdateStudentPayment
    @p_ID BIGINT,
    @p_StudentID BIGINT,
    @p_AmountPaid DECIMAL(10, 2),
    @p_PaymentType VARCHAR(255),
    @p_PaymentDate DATE
AS
BEGIN
    UPDATE StudentsPayment
    SET StudentID = @p_StudentID,
        AmountPaid = @p_AmountPaid,
        PaymentType = @p_PaymentType,
        PaymentDate = @p_PaymentDate
    WHERE ID = @p_ID;
END;
GO

--#Delete
CREATE PROCEDURE DeleteStudentPayment
    @p_ID BIGINT
AS
BEGIN
    DELETE FROM StudentsPayment WHERE ID = @p_ID;
END;
GO


-- Stored Procedures for Teachers Table
--#Create
CREATE PROCEDURE AddTeacher
    @p_FirstName VARCHAR(255),
    @p_LastName VARCHAR(255),
    @p_Email VARCHAR(255),
    @p_PhoneNumber VARCHAR(50),
    @p_HireDate DATE,
    @p_DepartmentID BIGINT
AS
BEGIN
    INSERT INTO Teachers (FirstName, LastName, Email, PhoneNumber, HireDate, DepartmentID)
    VALUES (@p_FirstName, @p_LastName, @p_Email, @p_PhoneNumber, @p_HireDate, @p_DepartmentID);
END;
GO

--#ReadByID
CREATE PROCEDURE GetTeacherByID
    @p_ID BIGINT
AS
BEGIN
    SELECT * FROM Teachers WHERE ID = @p_ID;
END;
GO

--#ReadAll
CREATE PROCEDURE GetAllTeachers
AS
BEGIN
    SELECT * FROM Teachers;
END;
GO

--#Update
CREATE PROCEDURE UpdateTeacher
    @p_ID BIGINT,
    @p_FirstName VARCHAR(255),
    @p_LastName VARCHAR(255),
    @p_Email VARCHAR(255),
    @p_PhoneNumber VARCHAR(50),
    @p_HireDate DATE,
    @p_DepartmentID BIGINT
AS
BEGIN
    UPDATE Teachers
    SET FirstName = @p_FirstName,
        LastName = @p_LastName,
        Email = @p_Email,
        PhoneNumber = @p_PhoneNumber,
        HireDate = @p_HireDate,
        DepartmentID = @p_DepartmentID
    WHERE ID = @p_ID;
END;
GO

--#Delete
CREATE PROCEDURE DeleteTeacher
    @p_ID BIGINT
AS
BEGIN
    DELETE FROM Teachers WHERE ID = @p_ID;
END;
GO


-- Stored Procedures for Departments Table
--#Create
CREATE PROCEDURE AddDepartment
    @p_DepartmentName VARCHAR(255),
    @p_FacultyID BIGINT
AS
BEGIN
    INSERT INTO Departments (DepartmentName, FacultyID)
    VALUES (@p_DepartmentName, @p_FacultyID);
END;
GO

--#ReadByID
CREATE PROCEDURE GetDepartmentByID
    @p_ID BIGINT
AS
BEGIN
    SELECT * FROM Departments WHERE ID = @p_ID;
END;
GO

--#ReadAll
CREATE PROCEDURE GetAllDepartments
AS
BEGIN
    SELECT * FROM Departments;
END;
GO

--#Update
CREATE PROCEDURE UpdateDepartment
    @p_ID BIGINT,
    @p_DepartmentName VARCHAR(255),
    @p_FacultyID BIGINT
AS
BEGIN
    UPDATE Departments
    SET DepartmentName = @p_DepartmentName,
        FacultyID = @p_FacultyID
    WHERE ID = @p_ID;
END;
GO

--#Delete
CREATE PROCEDURE DeleteDepartment
    @p_ID BIGINT
AS
BEGIN
    DELETE FROM Departments WHERE ID = @p_ID;
END;
GO


-- Stored Procedures for Faculties Table
--#Create
CREATE PROCEDURE AddFaculty
    @p_FacultyName VARCHAR(255),
    @p_DeanID BIGINT
AS
BEGIN
    INSERT INTO Faculties (FacultyName, DeanID)
    VALUES (@p_FacultyName, @p_DeanID);
END;
GO

--#ReadByID
CREATE PROCEDURE GetFacultyByID
    @p_ID BIGINT
AS
BEGIN
    SELECT * FROM Faculties WHERE ID = @p_ID;
END;
GO

--#ReadAll
CREATE PROCEDURE GetAllFaculties
AS
BEGIN
    SELECT * FROM Faculties;
END;
GO

--#Update
CREATE PROCEDURE UpdateFaculty
    @p_ID BIGINT,
    @p_FacultyName VARCHAR(255),
    @p_DeanID BIGINT
AS
BEGIN
    UPDATE Faculties
    SET FacultyName = @p_FacultyName,
        DeanID = @p_DeanID
    WHERE ID = @p_ID;
END;
GO

--#Delete
CREATE PROCEDURE DeleteFaculty
    @p_ID BIGINT
AS
BEGIN
    DELETE FROM Faculties WHERE ID = @p_ID;
END;
GO
