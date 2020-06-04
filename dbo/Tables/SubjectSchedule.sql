﻿CREATE TABLE [dbo].[SubjectSchedule]
(
    [MMH] INT NOT NULL PRIMARY KEY,
    [HocKi] INT NOT NULL PRIMARY KEY,
    [NienKhoa] INT NOT NULL PRIMARY KEY,
    [NgayTrongTuan] INT NOT NULL PRIMARY KEY,
    [MTH] INT NULL,
    [MaLop] INT NULL, 
    CONSTRAINT [FK_SubjectSchedule_Session] FOREIGN KEY ([MTH]) REFERENCES [Session]([MTH]) ON DELETE SET NULL,
    CONSTRAINT [FK_SubjectSchedule_Subject] FOREIGN KEY ([MMH]) REFERENCES [Subject]([MMH]) ON DELETE CASCADE
)