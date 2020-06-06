CREATE TABLE [dbo].[StudentDetail]
(
    [MaHocSinh] CHAR(7) NOT NULL PRIMARY KEY,
    [Ho] nvarchar(10)  NOT NULL ,
    [Ten] nvarchar(10)  NOT NULL ,
    [TenDem] nvarchar(10)  NOT NULL ,
    [Tuoi] int  NOT NULL ,
    [GioiTinh] bit  NOT NULL ,
    [NgaySinh] date  NOT NULL ,
    [Email] varchar(100)  NOT NULL ,
    CONSTRAINT [FK_StudentDetail_Student] FOREIGN KEY ([MaHocSinh]) REFERENCES [Student]([MaHocSinh]) ON DELETE CASCADE ON UPDATE CASCADE, 
    CONSTRAINT [CK_StudentDetail_Email] CHECK (CHARINDEX('@gmail.com', Email) > 0),
    CONSTRAINT [CK_StudentDetail_Tuoi] CHECK (Tuoi > 0)

)
