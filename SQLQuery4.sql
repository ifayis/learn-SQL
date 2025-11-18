USE employersDB;

IF OBJECT_ID('EmpDetails', 'U') IS NOT NULL DROP TABLE EmpDetails;
IF OBJECT_ID('Employees', 'U') IS NOT NULL DROP TABLE Employees;
IF OBJECT_ID('GetEmployee', 'P') IS NOT NULL DROP PROCEDURE GetEmployee;



CREATE TABLE Employees(
EmpId INT PRIMARY KEY,
EmpName VARCHAR(20) NOT NULL,
);

CREATE TABLE EmpDetails(
EmpId INT,
EmpDetailsId INT PRIMARY KEY,
EmpDept VARCHAR(20),
EmpSalary DECIMAL,
EmpAge INT CHECK (EmpAge > 18),

CONSTRAINT EmpDetails_Empoyees
FOREIGN KEY (EmpId) REFERENCES Employees(EmpId)
);

GO

INSERT INTO Employees(EmpId, EmpName)
VALUES (1, 'ajmal'),
       (2, 'afeef'),
       (3, 'jithin'),
       (4, 'dennis'),
       (5, 'gokul'),
       (6, 'indran');

INSERT INTO EmpDetails(EmpId, EmpDetailsId, EmpDept, EmpSalary, EmpAge)
VALUES (1, 101, 'HR', 25000, 28),
       (2, 102, 'IT', 19000, 23),
       (3, 103, 'HR', 24000, 27),
       (4, 104, 'IT', 20000, 24),
       (5, 105, 'Sales', 14000, 20),
       (6, 106, 'Sales', 15000, 21);


  SELECT * FROM EmpDetails

  CREATE PROCEDURE AboveAVG
  AVG(EmpSalary)
  AS
  BEGIN
  SELECT EmpSalary
  FROM EmpDetails
  WHERE 


