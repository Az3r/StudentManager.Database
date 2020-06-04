CREATE TABLE [Subject] (
    [MaMonHoc] int IDENTITY(1,1) NOT NULL ,
    [Ten] nvarchar(50)  NULL ,
    CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED (
        [MaMonHoc] ASC
    ),
    CONSTRAINT [UK_Subject_Ten] UNIQUE (
        [Ten]
    )
)