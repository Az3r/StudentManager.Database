CREATE TABLE [HomeRoom] (
    [MaLop] char(4)  NOT NULL PRIMARY KEY,
    [MaGiaoVien] char(9)  NOT NULL ,
    [NienKhoa] int  NOT NULL ,
    CONSTRAINT [FK_HomeRoom_Teacher] FOREIGN KEY([MaGiaoVien]) REFERENCES [Teacher] ([TeacherId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_HomeRoom_Class] FOREIGN KEY([MaLop]) REFERENCES [Class] ([ClassId]) ON DELETE CASCADE ON UPDATE CASCADE,
)