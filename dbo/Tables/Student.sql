CREATE TABLE [Student] (
    [StudentId] char(7)  NOT NULL ,
    [DaRaTruong] BIT DEFAULT 0 NOT NULL,
    CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED (
        [StudentId] ASC
    ), 
    CONSTRAINT [CK_Student_MaHocSinh] CHECK (ISNUMERIC([StudentId]) = 1), 
)