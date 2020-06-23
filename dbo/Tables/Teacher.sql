CREATE TABLE [Teacher] (
    [TeacherId] CHAR(9)  NOT NULL ,
    [SubjectId] INT NOT NULL,
    [SchoolRoleId] CHAR(10)  NOT NULL ,
    [PersonalInfoId] VARCHAR(9) NOT NULL, 
    CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED (
        [TeacherId] ASC
    ),
    CONSTRAINT [FK_Teacher_Subject] FOREIGN KEY ([SubjectId]) REFERENCES [Subject]([SubjectId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Teacher_SchoolRole] FOREIGN KEY ([SchoolRoleId]) REFERENCES [SchoolRole]([RoleId]) ON DELETE CASCADE ON UPDATE CASCADE, 
    CONSTRAINT [FK_Teacher_PersonalInfo] FOREIGN KEY ([PersonalInfoId]) REFERENCES [PersonalInfo]([PersonalInfoId]),

)