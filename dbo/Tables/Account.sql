CREATE TABLE [Account] (
    [MaGiaoVien] char(9)  NOT NULL ,
    [Salt] binary(128)  NOT NULL ,
    [Password] binary(128)  NOT NULL ,
    CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED (
        [MaGiaoVien] ASC
    ),
    CONSTRAINT [FK_Account_MaGiaoVien] FOREIGN KEY([MaGiaoVien]) REFERENCES [Teacher] ([MaGiaoVien]) ON DELETE CASCADE ON UPDATE CASCADE
)