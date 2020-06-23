CREATE TABLE [Score] (
    [ScoreId] char(11),
    [SubjectId] int NOT NULL ,
    [StudentId] char(7)  NOT NULL ,
    [Semester] int  NOT NULL ,
    [AcademicYear] int  NOT NULL ,
    [ScoreType] int NOT NULL,
    [ScoreValue] float NOT NULL DEFAULT -1,
    CONSTRAINT [PK_Score] PRIMARY KEY CLUSTERED (
        [ScoreId],[SubjectId],[StudentId],[Semester],[AcademicYear], [ScoreType]
    ),

    CONSTRAINT [FK_Score_Subject] FOREIGN KEY([SubjectId]) REFERENCES [Subject] ([SubjectId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Score_Student] FOREIGN KEY([StudentId]) REFERENCES [Student] ([StudentId]) ON DELETE CASCADE ON UPDATE CASCADE, 
    CONSTRAINT [CK_Score_HocKi] CHECK ([Semester] >= 1 AND [Semester] <= 2),
    CONSTRAINT [CK_Score_Diem] CHECK ([ScoreValue] >= -1 AND [ScoreValue] <= 10), 
    CONSTRAINT [CK_Score_MaDiem] CHECK (ISNUMERIC([ScoreId]) = 1)
)