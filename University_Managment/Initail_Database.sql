CREATE TABLE "Courses"(
    "ID" BIGINT NOT NULL,
    "Name" NVARCHAR(255) NOT NULL,
    "Description" TEXT NOT NULL,
    "DepartmentID" BIGINT NOT NULL,
    "ProfessorID" BIGINT NOT NULL
);
ALTER TABLE
    "Courses" ADD CONSTRAINT "courses_id_primary" PRIMARY KEY("ID");
CREATE TABLE "Categories"(
    "ID" BIGINT NOT NULL,
    "Name" NVARCHAR(255) NOT NULL,
    "Description" TEXT NOT NULL
);
ALTER TABLE
    "Categories" ADD CONSTRAINT "categories_id_primary" PRIMARY KEY("ID");
CREATE TABLE "Courses_Categories"(
    "ID" BIGINT NOT NULL,
    "CourseId" BIGINT NOT NULL,
    "CategoryId" BIGINT NOT NULL
);
ALTER TABLE
    "Courses_Categories" ADD CONSTRAINT "courses_categories_id_primary" PRIMARY KEY("ID");
CREATE TABLE "Teachers"(
    "ID" BIGINT NOT NULL,
    "FirstName" NVARCHAR(255) NOT NULL,
    "LastName" NVARCHAR(255) NOT NULL,
    "Email" NVARCHAR(255) NOT NULL,
    "PhoneNumber" NVARCHAR(255) NOT NULL,
    "HireDate" DATE NOT NULL,
    "DepartmentID" BIGINT NOT NULL
);
ALTER TABLE
    "Teachers" ADD CONSTRAINT "teachers_id_primary" PRIMARY KEY("ID");
CREATE TABLE "Faculties"(
	"ID" BIGINT NOT NULL ,
    "Faculties" BIGINT NOT NULL,
    "FacultyName" NVARCHAR(255) NOT NULL,
    "DeanID" BIGINT NOT NULL
);
ALTER TABLE
    "Faculties" ADD CONSTRAINT "faculties_faculties_primary" PRIMARY KEY("Faculties");
CREATE TABLE "Enrollments"(
    "ID" BIGINT NOT NULL,
    "StudentID" BIGINT NOT NULL,
    "CourseID" BIGINT NOT NULL,
    "EnrollmentDate" DATE NOT NULL,
    "Grade" FLOAT(53) NOT NULL
);
ALTER TABLE
    "Enrollments" ADD CONSTRAINT "enrollments_id_primary" PRIMARY KEY("ID");
CREATE TABLE "Departments"(
    "ID" BIGINT NOT NULL,
    "DepartmentName" NVARCHAR(255) NOT NULL,
    "FacultyID" BIGINT NOT NULL
);
ALTER TABLE
    "Departments" ADD CONSTRAINT "departments_id_primary" PRIMARY KEY("ID");
CREATE TABLE "Students"(
    "ID" BIGINT NOT NULL,
    "FirstName" NVARCHAR(255) NOT NULL,
    "LastName" NVARCHAR(255) NOT NULL,
    "AcademicYear" BIGINT NOT NULL,
    "Gender" BIT NOT NULL,
    "BirthDate" DATE NOT NULL,
    "MajorID" BIGINT NOT NULL,
    "PhoneNumber" NVARCHAR(255) NOT NULL,
    "Email" NVARCHAR(255) NOT NULL,
    "EnrollmentDate" DATE NOT NULL
);
ALTER TABLE
    "Students" ADD CONSTRAINT "students_id_primary" PRIMARY KEY("ID");
CREATE TABLE "StudentsDetails"(
    "ID" BIGINT NOT NULL,
    "AnnualFee" BIGINT NOT NULL,
    "FirstYearPaid" BIGINT NOT NULL,
    "SecondYearPaid" BIGINT NOT NULL,
    "ThirdYearPaid" BIGINT NOT NULL,
    "FourthYearPaid" BIGINT NOT NULL,
    "FifthYearPaid" BIGINT NOT NULL,
    "StudentID" BIGINT NOT NULL
);
ALTER TABLE
    "StudentsDetails" ADD CONSTRAINT "studentsdetails_id_primary" PRIMARY KEY("ID");
CREATE TABLE "StudentsPayment"(
    "ID" INT NOT NULL,
    "StudentId" BIGINT NOT NULL,
    "AmountPaid" DECIMAL(8, 2) NOT NULL,
    "PaymentType" BIGINT NOT NULL,
    "PaymentNote" NVARCHAR(255) NOT NULL,
    "PaymentDate" DATE NOT NULL
);
ALTER TABLE
    "StudentsPayment" ADD CONSTRAINT "studentspayment_id_primary" PRIMARY KEY("ID");
ALTER TABLE
    "StudentsDetails" ADD CONSTRAINT "studentsdetails_studentid_foreign" FOREIGN KEY("StudentID") REFERENCES "Students"("ID");
ALTER TABLE
    "Courses_Categories" ADD CONSTRAINT "courses_categories_courseid_foreign" FOREIGN KEY("CourseId") REFERENCES "Courses"("ID");
ALTER TABLE
    "Enrollments" ADD CONSTRAINT "enrollments_studentid_foreign" FOREIGN KEY("StudentID") REFERENCES "Students"("ID");
ALTER TABLE
    "Faculties" ADD CONSTRAINT "faculties_deanid_foreign" FOREIGN KEY("DeanID") REFERENCES "Departments"("ID");
ALTER TABLE
    "Teachers" ADD CONSTRAINT "teachers_departmentid_foreign" FOREIGN KEY("DepartmentID") REFERENCES "Departments"("ID");
ALTER TABLE
    "StudentsPayment" ADD CONSTRAINT "studentspayment_studentid_foreign" FOREIGN KEY("StudentId") REFERENCES "Students"("ID");
ALTER TABLE
    "Students" ADD CONSTRAINT "students_majorid_foreign" FOREIGN KEY("MajorID") REFERENCES "Departments"("ID");
ALTER TABLE
    "Courses_Categories" ADD CONSTRAINT "courses_categories_categoryid_foreign" FOREIGN KEY("CategoryId") REFERENCES "Categories"("ID");
ALTER TABLE
    "Enrollments" ADD CONSTRAINT "enrollments_courseid_foreign" FOREIGN KEY("CourseID") REFERENCES "Courses"("ID");

--===================================================
CREATE TABLE [dbo].[LogTable] (
    LogID INT IDENTITY(1,1) PRIMARY KEY, -- Auto-incremented unique identifier for each log entry
    TableName NVARCHAR(255) NOT NULL,    -- The name of the table where the event occurred
    Action NVARCHAR(50) NOT NULL,       -- The type of action (INSERT, UPDATE, DELETE, etc.)
    ActionDate DATETIME NOT NULL DEFAULT GETDATE(), -- Timestamp of the event
    Details NVARCHAR(MAX) NOT NULL      -- Details of the action (e.g., specific IDs or fields affected)
);

--===================================================

-- ÅäÔÇÁ ÌÏæá ÇáãæÙÝíä
CREATE TABLE Employees (
    ID BIGINT PRIMARY KEY IDENTITY(1,1),  -- ãÚÑÝ ÇáãæÙÝ
    FirstName NVARCHAR(255) NOT NULL,     -- ÇáÇÓã ÇáÃæá
    LastName NVARCHAR(255) NOT NULL,      -- ÇáÇÓã ÇáÃÎíÑ
    Email NVARCHAR(255) UNIQUE,           -- ÇáÈÑíÏ ÇáÅáßÊÑæäí (íÌÈ Ãä íßæä ÝÑíÏðÇ)
    PhoneNumber NVARCHAR(50),             -- ÑÞã ÇáåÇÊÝ
    HireDate DATE NOT NULL,               -- ÊÇÑíÎ ÇáÊÚííä
    DepartmentID BIGINT,                  -- ãÚÑÝ ÇáÞÓã (ãÝÊÇÍ ÃÌäÈí)
    JobTitle NVARCHAR(255),               -- ÇáãÓãì ÇáæÙíÝí
    Salary DECIMAL(10, 2),                -- ÇáÑÇÊÈ
    CONSTRAINT FK_Employees_Departments FOREIGN KEY (DepartmentID) REFERENCES Departments(ID) 
        ON DELETE SET NULL ON UPDATE CASCADE -- ÅÐÇ Êã ÍÐÝ ÞÓã¡ íÕÈÍ DepartmentID NULL
);

-- ÅäÔÇÁ ÌÏæá ÇáÇãÊÍÇäÇÊ
CREATE TABLE Exams (
    ID BIGINT PRIMARY KEY IDENTITY(1,1),  -- ãÚÑÝ ÇáÇãÊÍÇä
    CourseID BIGINT NOT NULL,             -- ãÚÑÝ ÇáÏæÑÉ (ãÝÊÇÍ ÃÌäÈí)
    ExamName NVARCHAR(255) NOT NULL,      -- ÇÓã ÇáÇãÊÍÇä
    ExamDate DATE NOT NULL,               -- ÊÇÑíÎ ÇáÇãÊÍÇä
    Duration INT NOT NULL,                -- ãÏÉ ÇáÇãÊÍÇä (ÈÇáÏÞÇÆÞ)
    CONSTRAINT FK_Exams_Courses FOREIGN KEY (CourseID) REFERENCES Courses(ID) 
        ON DELETE CASCADE ON UPDATE CASCADE -- ÅÐÇ Êã ÍÐÝ ÏæÑÉ¡ íÊã ÍÐÝ ÇáÇãÊÍÇäÇÊ ÇáÊÇÈÚÉ
);

-- ÅäÔÇÁ ÌÏæá äÊÇÆÌ ÇáÇãÊÍÇäÇÊ
CREATE TABLE ExamResults (
    ID BIGINT PRIMARY KEY IDENTITY(1,1),  -- ãÚÑÝ ÇáäÊíÌÉ
    ExamID BIGINT NOT NULL,               -- ãÚÑÝ ÇáÇãÊÍÇä (ãÝÊÇÍ ÃÌäÈí)
    StudentID BIGINT NOT NULL,            -- ãÚÑÝ ÇáØÇáÈ (ãÝÊÇÍ ÃÌäÈí)
    Score DECIMAL(5, 2) CHECK (Score >= 0 AND Score <= 100), -- ÇáÏÑÌÉ (0 Åáì 100)
    CONSTRAINT FK_ExamResults_Exams FOREIGN KEY (ExamID) REFERENCES Exams(ID) 
        ON DELETE CASCADE ON UPDATE CASCADE, -- ÅÐÇ Êã ÍÐÝ ÇáÇãÊÍÇä¡ íÊã ÍÐÝ ÇáäÊÇÆÌ ÇáÊÇÈÚÉ
    CONSTRAINT FK_ExamResults_Students FOREIGN KEY (StudentID) REFERENCES Students(ID) 
        ON DELETE CASCADE ON UPDATE CASCADE  -- ÅÐÇ Êã ÍÐÝ ÇáØÇáÈ¡ íÊã ÍÐÝ ÇáäÊÇÆÌ ÇáÊÇÈÚÉ
);

-- ÅÖÇÝÉ ÞíæÏ ÅÖÇÝíÉ ÅÐÇ áÒã ÇáÃãÑ
-- ÇáÊÍÞÞ ãä ÚÏã æÌæÏ äÝÓ ÇáÇãÊÍÇä ÈÇÓã æÊÇÑíÎ ãßÑÑ
ALTER TABLE Exams ADD CONSTRAINT UQ_Exams UNIQUE (CourseID, ExamName, ExamDate);

-- ÇáÊÃßÏ ãä ÚÏã ÊßÑÇÑ ÇáäÊíÌÉ áäÝÓ ÇáØÇáÈ æÇáÇãÊÍÇä
ALTER TABLE ExamResults ADD CONSTRAINT UQ_ExamResults UNIQUE (ExamID, StudentID);
