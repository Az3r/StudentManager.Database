CREATE TABLE [EnrolledClass] (
    MaSoSinhVien char(7)  NOT NULL ,
    [MaLop] char(4)  NOT NULL ,
    CONSTRAINT [PK_EnrolledClass] PRIMARY KEY CLUSTERED (
        MaSoSinhVien ASC
    ),
    CONSTRAINT [UK_EnrolledClass_MaLop] UNIQUE (
        [MaLop]
    )
)
GO
ALTER TABLE [EnrolledClass] ADD CONSTRAINT [FK_EnrolledClass_MSSV] FOREIGN KEY(MaSoSinhVien)
REFERENCES [Student] ([MaHocSinh]) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE [EnrolledClass] CHECK CONSTRAINT [FK_EnrolledClass_MSSV]
GO
ALTER TABLE [EnrolledClass] ADD CONSTRAINT [FK_EnrolledClass_MaLop] FOREIGN KEY([MaLop])
REFERENCES [Class] ([MaLop]) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE [EnrolledClass] CHECK CONSTRAINT [FK_EnrolledClass_MaLop]