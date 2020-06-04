CREATE TABLE [Address] (
    [MaDiaChi] int IDENTITY(1,1) NOT NULL ,
    [MaSoSinhVien] char(7)  NOT NULL ,
    [Street] nvarchar(50)  NULL ,
    [District] nvarchar(50)  NULL ,
    [Province] nvarchar(50)  NULL ,
    CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED (
        [MaDiaChi] ASC,[MaSoSinhVien] ASC
    )
)
GO
ALTER TABLE [Address] ADD CONSTRAINT [FK_Address_MSSV] FOREIGN KEY([MaSoSinhVien])
REFERENCES [Student] ([MaSoSinhVien]) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE [Address] CHECK CONSTRAINT [FK_Address_MSSV]