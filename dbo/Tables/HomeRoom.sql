CREATE TABLE [HomeRoom] (
    [ClassId] char(4)  NOT NULL PRIMARY KEY,
    [TeacherId] char(9)  NOT NULL ,
    [AcademicYear] int  NOT NULL ,
    CONSTRAINT [FK_HomeRoom_Teacher] FOREIGN KEY([TeacherId]) REFERENCES [Teacher] ([TeacherId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_HomeRoom_Class] FOREIGN KEY([ClassId]) REFERENCES [Class] ([ClassId]) ON DELETE CASCADE ON UPDATE CASCADE,
)