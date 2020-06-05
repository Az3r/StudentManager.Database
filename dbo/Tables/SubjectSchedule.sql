CREATE TABLE [dbo].[SubjectSchedule]
(
    [MaThoiKhoaBieu] CHAR(10) PRIMARY KEY,
    [MaTietHoc] INT NOT NULL,
    [MaMonHoc] INT NOT NULL,
    [MaLop] CHAR(4) NOT NULL, 
    [MaPhongHoc] CHAR(10) NOT NULL,
    [HocKi] INT NOT NULL,
    [NienKhoa] INT NOT NULL,
    [NgayTrongTuan] INT NOT NULL,
    CONSTRAINT [FK_SubjectSchedule_Session] FOREIGN KEY ([MaTietHoc]) REFERENCES [Session]([MaTietHoc]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_SubjectSchedule_Subject] FOREIGN KEY ([MaMonHoc]) REFERENCES [Subject]([MaMonHoc]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_SubjectSchedule_Class] FOREIGN KEY ([MaLop]) REFERENCES [Class]([MaLop]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_SubjectSchedule_Room] FOREIGN KEY ([MaPhongHoc]) REFERENCES [Room]([MaPhongHoc]) ON DELETE CASCADE ON UPDATE CASCADE
)
