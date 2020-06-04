CREATE TABLE [Teacher] (
    [MGV] char(9)  NOT NULL ,
    [ChuyenMon] INT NULL,
    [Ho] nvarchar(10)  NULL ,
    [Ten] nvarchar(10)  NULL ,
    [TenDem] nvarchar(10)  NULL ,
    [GioiTinh] binary  NULL ,
    [NgaySinh] datetime  NULL ,
    [ChucVu] nvarchar(50)  NULL ,
    [Email] varchar(100)  NULL ,
    CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED (
        [MGV] ASC
    ),
    CONSTRAINT [FK_Teacher_Subject] FOREIGN KEY ([ChuyenMon]) REFERENCES [Subject]([MMH]) ON DELETE SET NULL ON UPDATE CASCADE
)