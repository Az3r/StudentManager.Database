CREATE TABLE [EnrolledClass] (
    [MSSV] char(7)  NOT NULL ,
    [MaLop] char(4)  NOT NULL ,
    CONSTRAINT [PK_EnrolledClass] PRIMARY KEY CLUSTERED (
        [MSSV] ASC
    ),
    CONSTRAINT [UK_EnrolledClass_MaLop] UNIQUE (
        [MaLop]
    )
)
GO
ALTER TABLE [EnrolledClass] ADD CONSTRAINT [FK_EnrolledClass_MSSV] FOREIGN KEY([MSSV])
REFERENCES [Student] ([MSSV]) ON DELETE CASCADE
GO

ALTER TABLE [EnrolledClass] CHECK CONSTRAINT [FK_EnrolledClass_MSSV]
GO
ALTER TABLE [EnrolledClass] ADD CONSTRAINT [FK_EnrolledClass_MaLop] FOREIGN KEY([MaLop])
REFERENCES [Class] ([MaLop]) ON DELETE CASCADE
GO

ALTER TABLE [EnrolledClass] CHECK CONSTRAINT [FK_EnrolledClass_MaLop]