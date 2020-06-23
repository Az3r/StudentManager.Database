CREATE TABLE [dbo].[Schedule]
(
    [ScheduleId] CHAR(10) PRIMARY KEY,
    [SessionId] INT NOT NULL,
    [SubjectId] INT NOT NULL,
    [ClassId] CHAR(4) NOT NULL, 
    [RoomId] CHAR(10) NOT NULL,
    [Semester] INT NOT NULL,
    [AcademicYear] INT NOT NULL,
    [DayOfWeek] INT NOT NULL,
    CONSTRAINT [FK_SubjectSchedule_Session] FOREIGN KEY ([SessionId]) REFERENCES [Session]([SessionId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_SubjectSchedule_Subject] FOREIGN KEY ([SubjectId]) REFERENCES [Subject]([SubjectId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_SubjectSchedule_Class] FOREIGN KEY ([ClassId]) REFERENCES [Class]([ClassId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_SubjectSchedule_Room] FOREIGN KEY ([RoomId]) REFERENCES [Room]([RoomId]) ON DELETE CASCADE ON UPDATE CASCADE
)
