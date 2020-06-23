CREATE VIEW [dbo].[StudentInfo]
    AS SELECT Student.[StudentId], [IsGraduated], [LastName], [FirstName], [MiddleName] 
    FROM [Student] join [StudentDetail] on Student.[StudentId] = StudentDetail.[StudentId]
