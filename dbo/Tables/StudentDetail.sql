CREATE TABLE [dbo].[StudentDetail]
(
    [MaSoSinhVien] CHAR(7) NOT NULL PRIMARY KEY,
    [Ho] nvarchar(10)  NOT NULL ,
    [Ten] nvarchar(10)  NOT NULL ,
    [TenDem] nvarchar(10)  NOT NULL ,
    [Tuoi] int  NOT NULL ,
    [GioiTinh] bit  NOT NULL ,
    [NgaySinh] datetime  NOT NULL ,
    [Email] varchar(100)  NOT NULL ,
    CONSTRAINT [FK_StudentDetail_Student] FOREIGN KEY ([MaSoSinhVien]) REFERENCES [Student]([MaHocSinh]) ON DELETE CASCADE ON UPDATE CASCADE
)
