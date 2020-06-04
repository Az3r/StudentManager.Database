CREATE TABLE [Address] (
    [MaDiaChi] int IDENTITY(1,1) NOT NULL ,
    [MaHocSinh] char(7)  NOT NULL ,
    [Street] nvarchar(50)  NOT NULL ,
    [District] nvarchar(50)  NOT NULL ,
    [Province] nvarchar(50)  NOT NULL ,
    CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED (
        [MaDiaChi] ASC,[MaHocSinh] ASC
    ),
    CONSTRAINT [FK_Address_Student] FOREIGN KEY([MaHocSinh]) REFERENCES [Student] ([MaHocSinh]) ON DELETE CASCADE ON UPDATE CASCADE
)