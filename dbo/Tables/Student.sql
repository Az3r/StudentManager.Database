CREATE TABLE [Student] (
    [MaHocSinh] char(7)  NOT NULL ,
    [DaRaTruong] BIT DEFAULT 0 NOT NULL,
    CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED (
        [MaHocSinh] ASC
    ), 
)