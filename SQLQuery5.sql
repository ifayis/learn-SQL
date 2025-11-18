SELECT TOP (1000) [EmpId]
      ,[EmpDetailsId]
      ,[EmpDept]
      ,[EmpSalary]
      ,[EmpAge]
  FROM [employersDB].[dbo].[EmpDetails]


  select max(EmpSalary)
  from EmpDetails
  where EmpSalary < (select max(EmpSalary) from EmpDetails)