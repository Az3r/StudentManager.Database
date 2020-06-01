CREATE TABLE [Student] (
    [MSSV] char(7)  NOT NULL ,
    [Ho] nvarchar(10)  NULL ,
    [Ten] nvarchar(10)  NULL ,
    [TenDem] nvarchar(10)  NULL ,
    [Tuoi] int  NULL ,
    [GioiTinh] bit  NULL ,
    [NgaySinh] datetime  NULL ,
    [Phone] char(10)  NULL ,
    [Email] varchar(100)  NULL ,
    CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED (
        [MSSV] ASC
    )
)