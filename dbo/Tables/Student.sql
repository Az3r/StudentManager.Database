CREATE TABLE [Student] (
    [StudentId] char(7)  NOT NULL ,
    [IsGraduated] BIT DEFAULT 0 NOT NULL,
    [PersonalInfoId] VARCHAR(9) NOT NULL, 
    CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED (
        [StudentId] ASC
    ),
    CONSTRAINT [FK_Student_PersonalInfo] FOREIGN KEY ([PersonalInfoId]) REFERENCES [PersonalInfo]([PersonalInfoId])
)