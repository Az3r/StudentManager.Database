CREATE TABLE [Address] (
    [MaDiaChi] int IDENTITY(1,1) NOT NULL ,
    [MaSoSinhVien] char(7)  NOT NULL ,
    [Street] nvarchar(50)  NOT NULL ,
    [District] nvarchar(50)  NOT NULL ,
    [Province] nvarchar(50)  NOT NULL ,
    CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED (
        [MaDiaChi] ASC,[MaSoSinhVien] ASC
    )
)
GO
ALTER TABLE [Address] ADD CONSTRAINT [FK_Address_MSSV] FOREIGN KEY([MaSoSinhVien])
REFERENCES [Student] ([MaSoSinhVien]) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE [Address] CHECK CONSTRAINT [FK_Address_MSSV]