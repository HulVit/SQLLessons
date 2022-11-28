CREATE OR ALTER VIEW OverqualifiedPersons
AS
SELECT [first_name]
      ,[last_name]
      ,[dateOfBirth]
      ,[email]
      ,[phone]
  FROM [SalaryBase].[dbo].[Salary]
  WHERE passedExams > 30