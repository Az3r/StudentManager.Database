CREATE VIEW [dbo].[StudentInfo]
    AS SELECT Student.MaHocSinh, DaRaTruong, Ho, Ten, TenDem 
    FROM [Student] join [StudentDetail] on Student.MaHocSinh = StudentDetail.MaSoSinhVien
