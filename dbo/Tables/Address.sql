CREATE TABLE [Address] (
    [MDC] int IDENTITY(1,1) NOT NULL ,
    [MSSV] char(7)  NOT NULL ,
    [Street] nvarchar(50)  NULL ,
    [District] nvarchar(50)  NULL ,
    [Province] nvarchar(50)  NULL ,
    CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED (
        [MDC] ASC,[MSSV] ASC
    )
)
GO
ALTER TABLE [Address] ADD CONSTRAINT [FK_Address_MSSV] FOREIGN KEY([MSSV])
REFERENCES [Student] ([MSSV]) ON DELETE CASCADE
GO

ALTER TABLE [Address] CHECK CONSTRAINT [FK_Address_MSSV]