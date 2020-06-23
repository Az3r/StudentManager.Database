CREATE VIEW [dbo].[StudentInfo]
    AS SELECT Student.[StudentId], [IsGraduated], Ho, Ten, TenDem 
    FROM [Student] join [StudentDetail] on Student.[StudentId] = StudentDetail.[MaHocSinh]
