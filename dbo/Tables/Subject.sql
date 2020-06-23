CREATE TABLE [Subject] (
    [SubjectId] int IDENTITY(1,1) NOT NULL ,
    [Ten] nvarchar(50)  NOT NULL ,
    CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED (
        [SubjectId] ASC
    ),
    CONSTRAINT [UK_Subject_Ten] UNIQUE (
        [Ten]
    )
)