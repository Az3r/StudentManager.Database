CREATE TABLE [dbo].[EnrolledClass]
(
    [StudentId] CHAR(7) NOT NULL,
    [ClassId] CHAR(4) NOT NULL,

    CONSTRAINT [PK_EnrolledClass] PRIMARY KEY CLUSTERED ([StudentId], [ClassId]),
    CONSTRAINT [FK_EnrolledClass_Class] FOREIGN KEY ([ClassId]) REFERENCES [Class]([ClassId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_EnrolledClass_Student] FOREIGN KEY ([StudentId]) REFERENCES [Student]([StudentId]) ON DELETE CASCADE ON UPDATE CASCADE,
)
