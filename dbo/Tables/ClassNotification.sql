CREATE TABLE [dbo].[ClassNotification]
(
    [MTB] INT NOT NULL PRIMARY KEY,
    [CreatedOn] DATE NOT NULL,
    [MaLop] CHAR(4) NULL,
    [Title] NVARCHAR(100) NULL,
    [Content] NVARCHAR(500) NULL,

    CONSTRAINT [FK_ClassNotification_Class] FOREIGN KEY ([MaLop]) REFERENCES [Class]([MaLop]) ON DELETE CASCADE
)
