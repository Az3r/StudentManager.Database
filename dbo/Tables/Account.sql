CREATE TABLE [Account] (
    [MaGiaoVien] char(9)  NOT NULL ,
    [Permission] INT NOT NULL DEFAULT 0,
    [Salt] binary(128)  NOT NULL ,
    [Password] binary(128)  NOT NULL ,
    CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED (
        [MaGiaoVien] ASC
    )
)
GO
ALTER TABLE [Account] WITH CHECK ADD CONSTRAINT [FK_Account_MGV] FOREIGN KEY([MaGiaoVien])
REFERENCES [Teacher] ([MaGiaoVien]) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE [Account] CHECK CONSTRAINT [FK_Account_MGV]