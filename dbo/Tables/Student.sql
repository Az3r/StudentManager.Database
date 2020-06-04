CREATE TABLE [Student] (
    [MaSoSinhVien] char(7)  NOT NULL ,
    [DaRaTruong] BIT DEFAULT 0 NOT NULL,
    CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED (
        [MaSoSinhVien] ASC
    )
)