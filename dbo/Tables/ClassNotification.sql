CREATE TABLE [dbo].[ClassNotification]
(
    [MaThongBao] INT NOT NULL PRIMARY KEY,
    [CreatedOn] DATE NOT NULL,
    [MaLop] CHAR(4) NOT NULL ,
    [Title] NVARCHAR(100) NOT NULL DEFAULT '',
    [Content] NVARCHAR(500) NOT NULL DEFAULT '',

    CONSTRAINT [FK_ClassNotification_Class] FOREIGN KEY ([MaLop]) REFERENCES [Class]([ClassId]) ON DELETE CASCADE ON UPDATE CASCADE
)
