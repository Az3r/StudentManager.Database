CREATE TABLE [dbo].[TeacherDetail]
(
    [MaGiaoVien] CHAR(9) NOT NULL PRIMARY KEY,
    [Ho] nvarchar(10)  NOT NULL ,
    [Ten] nvarchar(10)  NOT NULL ,
    [TenDem] nvarchar(10)  NOT NULL ,
    [GioiTinh] binary  NOT NULL ,
    [NgaySinh] datetime  NOT NULL ,
    [Email] varchar(100)  NOT NULL, 
    [SoDienThoai] char(10) NOT NULL ,

    CONSTRAINT [FK_TeacherDetail_Teacher] FOREIGN KEY ([MaGiaoVien]) REFERENCES [Teacher]([MaGiaoVien]) ON DELETE CASCADE ON UPDATE CASCADE
)
