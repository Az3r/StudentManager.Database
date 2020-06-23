CREATE TABLE [Account] (
    [TeacherId] char(9)  NOT NULL ,
    [Salt] binary(128)  NOT NULL ,
    [Password] binary(128)  NOT NULL ,
    CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED (
        [TeacherId] ASC
    ),
    CONSTRAINT [FK_Account_MaGiaoVien] FOREIGN KEY([TeacherId]) REFERENCES [Teacher] ([TeacherId]) ON DELETE CASCADE ON UPDATE CASCADE
)