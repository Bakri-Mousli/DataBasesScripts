-- Create index on "LogTable" for faster search by "TableName"
CREATE NONCLUSTERED INDEX IX_LogTable_TableName ON LogTable(TableName);

-- Create index on "LogTable" for faster search by "Action"
CREATE NONCLUSTERED INDEX IX_LogTable_ActionDate ON LogTable(Action);

-- Create index on "Students" for faster search by "Email" (email search is frequent)
CREATE NONCLUSTERED INDEX IX_Students_Email ON Students(Email);

-- Create index on "Students" for faster search by "PhoneNumber" (phone search is common)
CREATE NONCLUSTERED INDEX IX_Students_PhoneNumber ON Students(PhoneNumber);

-- Create index on "Students" for faster search by "FirstName" (filtering students by FirstName)
CREATE NONCLUSTERED INDEX IX_Students_FirstName ON Students(FirstName);

-- Create index on "Enrollments" for faster search by "StudentID" and "CourseID"
CREATE NONCLUSTERED INDEX IX_Enrollments_StudentID_CourseID ON Enrollments(StudentID, CourseID);

-- Create index on "Enrollments" for faster search by "EnrollmentDate" (date-based search)
CREATE NONCLUSTERED INDEX IX_Enrollments_EnrollmentDate ON Enrollments(EnrollmentDate);

-- Create index on "StudentsDetails" for faster search by "StudentID"
CREATE NONCLUSTERED INDEX IX_StudentsDetails_StudentID ON StudentsDetails(StudentID);

-- Create index on "StudentsPayment" for faster search by "StudentId"
CREATE NONCLUSTERED INDEX IX_StudentsPayment_StudentId ON StudentsPayment(StudentId);

-- Create index on "StudentsPayment" for faster search by "PaymentDate" (filtering payments by date)
CREATE NONCLUSTERED INDEX IX_StudentsPayment_PaymentDate ON StudentsPayment(PaymentDate);

-- Create index on "Exams" for faster search by "CourseID" (filtering exams by course)
CREATE NONCLUSTERED INDEX IX_Exams_CourseID ON Exams(CourseID);

-- Create index on "Exams" for faster search by "ExamDate" (filtering exams by date)
CREATE NONCLUSTERED INDEX IX_Exams_ExamDate ON Exams(ExamDate);

-- Create index on "ExamResults" for faster search by "ExamID" and "StudentID"
CREATE NONCLUSTERED INDEX IX_ExamResults_ExamID_StudentID ON ExamResults(ExamID, StudentID);

-- Create index on "ExamResults" for faster search by "Score" (sorting or filtering by score)
CREATE NONCLUSTERED INDEX IX_ExamResults_Score ON ExamResults(Score);

-- Create index on "Employees" for faster search by "DepartmentID"
CREATE NONCLUSTERED INDEX IX_Employees_DepartmentID ON Employees(DepartmentID);

-- Create index on "Employees" for faster search by "Email" (email search is frequent for employees)
CREATE NONCLUSTERED INDEX IX_Employees_Email ON Employees(Email);


--===========================================================
SELECT 
    OBJECT_NAME(S.[OBJECT_ID]) AS TableName,
    I.[NAME] AS IndexName,
    I.[TYPE_DESC] AS IndexType,
    S.[USER_SEEKS] AS UserSeeks,
    S.[USER_SCANS] AS UserScans,
    S.[USER_LOOKUPS] AS UserLookups,
    S.[USER_UPDATES] AS UserUpdates
FROM 
    SYS.DM_DB_INDEX_USAGE_STATS AS S
    INNER JOIN SYS.INDEXES AS I 
        ON I.[OBJECT_ID] = S.[OBJECT_ID]
        AND I.[INDEX_ID] = S.[INDEX_ID]
WHERE 
    OBJECTPROPERTY(S.[OBJECT_ID],'IsUserTable') = 1;