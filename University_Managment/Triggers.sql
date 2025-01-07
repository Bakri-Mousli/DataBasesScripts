
-- Triggers For Table Students 
-- Create
CREATE TRIGGER trg_Students_INSERT
ON [dbo].[Students]
AFTER INSERT
AS
BEGIN
    DECLARE @Details NVARCHAR(MAX);

    SELECT @Details = STRING_AGG(CONCAT('ID: ', ID, ', Name: ', FirstName, ' ', LastName), '; ')
    FROM inserted;

    INSERT INTO [dbo].[LogTable] (TableName, Action, Details)
    VALUES ('Students', 'INSERT', @Details);
END;
GO

-- Update
CREATE TRIGGER trg_Students_UPDATE
ON [dbo].[Students]
AFTER UPDATE
AS
BEGIN
    DECLARE @Details NVARCHAR(MAX);

    SELECT @Details = STRING_AGG(CONCAT('ID: ', ID, ', UpdatedFields: ', 'FirstName: ', FirstName, ', LastName: ', LastName), '; ')
    FROM inserted;

    INSERT INTO [dbo].[LogTable] (TableName, Action, Details)
    VALUES ('Students', 'UPDATE', @Details);
END;
GO

-- Delete
CREATE TRIGGER trg_Students_DELETE
ON [dbo].[Students]
AFTER DELETE
AS
BEGIN
    DECLARE @Details NVARCHAR(MAX);

    SELECT @Details = STRING_AGG(CONCAT('ID: ', ID, ', Name: ', FirstName, ' ', LastName), '; ')
    FROM deleted;

    INSERT INTO [dbo].[LogTable] (TableName, Action, Details)
    VALUES ('Students', 'DELETE', @Details);
END;
GO

-- Triggers For Table Courses 
-- Create
CREATE TRIGGER trg_Courses_INSERT
ON [dbo].[Courses]
AFTER INSERT
AS
BEGIN
    DECLARE @Details NVARCHAR(MAX);

    SELECT @Details = STRING_AGG(CONCAT('ID: ', ID, ', Name: ', Name), '; ')
    FROM inserted;

    INSERT INTO [dbo].[LogTable] (TableName, Action, Details)
    VALUES ('Courses', 'INSERT', @Details);
END;
GO

-- Update
CREATE TRIGGER trg_Courses_UPDATE
ON [dbo].[Courses]
AFTER UPDATE
AS
BEGIN
    DECLARE @Details NVARCHAR(MAX);

    SELECT @Details = STRING_AGG(CONCAT('ID: ', ID, ', UpdatedFields: ', 'Name: ', Name), '; ')
    FROM inserted;

    INSERT INTO [dbo].[LogTable] (TableName, Action, Details)
    VALUES ('Courses', 'UPDATE', @Details);
END;
GO

-- Delete
CREATE TRIGGER trg_Courses_DELETE
ON [dbo].[Courses]
AFTER DELETE
AS
BEGIN
    DECLARE @Details NVARCHAR(MAX);

    SELECT @Details = STRING_AGG(CONCAT('ID: ', ID, ', Name: ', Name), '; ')
    FROM deleted;

    INSERT INTO [dbo].[LogTable] (TableName, Action, Details)
    VALUES ('Courses', 'DELETE', @Details);
END;
GO

-- Triggers For Table Departments 
-- Create
CREATE TRIGGER trg_Departments_INSERT
ON [dbo].[Departments]
AFTER INSERT
AS
BEGIN
    DECLARE @Details NVARCHAR(MAX);

    SELECT @Details = STRING_AGG(CONCAT('ID: ', ID, ', DepartmentName: ', DepartmentName), '; ')
    FROM inserted;

    INSERT INTO [dbo].[LogTable] (TableName, Action, Details)
    VALUES ('Departments', 'INSERT', @Details);
END;
GO

-- Update
CREATE TRIGGER trg_Departments_UPDATE
ON [dbo].[Departments]
AFTER UPDATE
AS
BEGIN
    DECLARE @Details NVARCHAR(MAX);

    SELECT @Details = STRING_AGG(CONCAT('ID: ', ID, ', UpdatedFields: ', 'DepartmentName: ', DepartmentName), '; ')
    FROM inserted;

    INSERT INTO [dbo].[LogTable] (TableName, Action, Details)
    VALUES ('Departments', 'UPDATE', @Details);
END;
GO

-- Delete
CREATE TRIGGER trg_Departments_DELETE
ON [dbo].[Departments]
AFTER DELETE
AS
BEGIN
    DECLARE @Details NVARCHAR(MAX);

    SELECT @Details = STRING_AGG(CONCAT('ID: ', ID, ', DepartmentName: ', DepartmentName), '; ')
    FROM deleted;

    INSERT INTO [dbo].[LogTable] (TableName, Action, Details)
    VALUES ('Departments', 'DELETE', @Details);
END;
GO

-- Triggers For Table Faculties 
-- Create
CREATE TRIGGER trg_Faculties_INSERT
ON [dbo].[Faculties]
AFTER INSERT
AS
BEGIN
    DECLARE @Details NVARCHAR(MAX);

    SELECT @Details = STRING_AGG(CONCAT('ID: ', ID, ', FacultyName: ', FacultyName), '; ')
    FROM inserted;

    INSERT INTO [dbo].[LogTable] (TableName, Action, Details)
    VALUES ('Faculties', 'INSERT', @Details);
END;
GO

-- Update
CREATE TRIGGER trg_Faculties_UPDATE
ON [dbo].[Faculties]
AFTER UPDATE
AS
BEGIN
    DECLARE @Details NVARCHAR(MAX);

    SELECT @Details = STRING_AGG(CONCAT('ID: ', ID, ', UpdatedFields: ', 'FacultyName: ', FacultyName), '; ')
    FROM inserted;

    INSERT INTO [dbo].[LogTable] (TableName, Action, Details)
    VALUES ('Faculties', 'UPDATE', @Details);
END;
GO

-- Delete
CREATE TRIGGER trg_Faculties_DELETE
ON [dbo].[Faculties]
AFTER DELETE
AS
BEGIN
    DECLARE @Details NVARCHAR(MAX);

    SELECT @Details = STRING_AGG(CONCAT('ID: ', ID, ', FacultyName: ', FacultyName), '; ')
    FROM deleted;

    INSERT INTO [dbo].[LogTable] (TableName, Action, Details)
    VALUES ('Faculties', 'DELETE', @Details);
END;
GO

-- Triggers For Table Teachers 
-- Create
CREATE TRIGGER trg_Teachers_INSERT
ON [dbo].[Teachers]
AFTER INSERT
AS
BEGIN
    DECLARE @Details NVARCHAR(MAX);

    SELECT @Details = STRING_AGG(CONCAT('ID: ', ID, ', Name: ', FirstName, ' ', LastName), '; ')
    FROM inserted;

    INSERT INTO [dbo].[LogTable] (TableName, Action, Details)
    VALUES ('Teachers', 'INSERT', @Details);
END;
GO

-- Update
CREATE TRIGGER trg_Teachers_UPDATE
ON [dbo].[Teachers]
AFTER UPDATE
AS
BEGIN
    DECLARE @Details NVARCHAR(MAX);

    SELECT @Details = STRING_AGG(CONCAT('ID: ', ID, ', UpdatedFields: ', 'FirstName: ', FirstName, ', LastName: ', LastName), '; ')
    FROM inserted;

    INSERT INTO [dbo].[LogTable] (TableName, Action, Details)
    VALUES ('Teachers', 'UPDATE', @Details);
END;
GO

-- Delete
CREATE TRIGGER trg_Teachers_DELETE
ON [dbo].[Teachers]
AFTER DELETE
AS
BEGIN
    DECLARE @Details NVARCHAR(MAX);

    SELECT @Details = STRING_AGG(CONCAT('ID: ', ID, ', Name: ', FirstName, ' ', LastName), '; ')
    FROM deleted;

    INSERT INTO [dbo].[LogTable] (TableName, Action, Details)
    VALUES ('Teachers', 'DELETE', @Details);
END;
GO

-- Triggers For Table Enrollments 
-- Create
CREATE TRIGGER trg_Enrollments_INSERT
ON [dbo].[Enrollments]
AFTER INSERT
AS
BEGIN
    DECLARE @Details NVARCHAR(MAX);

    SELECT @Details = STRING_AGG(CONCAT('ID: ', ID, ', StudentID: ', StudentID, ', CourseID: ', CourseID), '; ')
    FROM inserted;

    INSERT INTO [dbo].[LogTable] (TableName, Action, Details)
    VALUES ('Enrollments', 'INSERT', @Details);
END;
GO

-- Update
CREATE TRIGGER trg_Enrollments_UPDATE
ON [dbo].[Enrollments]
AFTER UPDATE
AS
BEGIN
    DECLARE @Details NVARCHAR(MAX);

    SELECT @Details = STRING_AGG(CONCAT('ID: ', ID, ', UpdatedFields: ', 'StudentID: ', StudentID, ', CourseID: ', CourseID), '; ')
    FROM inserted;

    INSERT INTO [dbo].[LogTable] (TableName, Action, Details)
    VALUES ('Enrollments', 'UPDATE', @Details);
END;
GO

-- Delete
CREATE TRIGGER trg_Enrollments_DELETE
ON [dbo].[Enrollments]
AFTER DELETE
AS
BEGIN
    DECLARE @Details NVARCHAR(MAX);

    SELECT @Details = STRING_AGG(CONCAT('ID: ', ID, ', StudentID: ', StudentID, ', CourseID: ', CourseID), '; ')
    FROM deleted;

    INSERT INTO [dbo].[LogTable] (TableName, Action, Details)
    VALUES ('Enrollments', 'DELETE', @Details);
END;
GO

-- Triggers For Table StudentsPayment 
-- Create
CREATE TRIGGER trg_StudentsPayment_INSERT
ON [dbo].[StudentsPayment]
AFTER INSERT
AS
BEGIN
    DECLARE @Details NVARCHAR(MAX);

    SELECT @Details = STRING_AGG(CONCAT('ID: ', ID, ', StudentId: ', StudentId, ', AmountPaid: ', AmountPaid), '; ')
    FROM inserted;

    INSERT INTO [dbo].[LogTable] (TableName, Action, Details)
    VALUES ('StudentsPayment', 'INSERT', @Details);
END;
GO

-- Update
CREATE TRIGGER trg_StudentsPayment_UPDATE
ON [dbo].[StudentsPayment]
AFTER UPDATE
AS
BEGIN
    DECLARE @Details NVARCHAR(MAX);

    SELECT @Details = STRING_AGG(CONCAT('ID: ', ID, ', UpdatedFields: ', 'AmountPaid: ', AmountPaid), '; ')
    FROM inserted;

    INSERT INTO [dbo].[LogTable] (TableName, Action, Details)
    VALUES ('StudentsPayment', 'UPDATE', @Details);
END;
GO

-- Delete
CREATE TRIGGER trg_StudentsPayment_DELETE
ON [dbo].[StudentsPayment]
AFTER DELETE
AS
BEGIN
    DECLARE @Details NVARCHAR(MAX);

    SELECT @Details = STRING_AGG(CONCAT('ID: ', ID, ', StudentId: ', StudentId, ', AmountPaid: ', AmountPaid), '; ')
    FROM deleted;

    INSERT INTO [dbo].[LogTable] (TableName, Action, Details)
    VALUES ('StudentsPayment', 'DELETE', @Details);
END;
GO
