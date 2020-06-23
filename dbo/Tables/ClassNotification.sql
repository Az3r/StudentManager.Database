CREATE TABLE [dbo].[ClassNotification]
(
    [NotificationId] INT NOT NULL PRIMARY KEY,
    [CreatedOn] DATE NOT NULL,
    [ClassId] CHAR(4) NOT NULL ,
    [Title] NVARCHAR(100) NOT NULL DEFAULT '',
    [Content] NVARCHAR(500) NOT NULL DEFAULT '',

    CONSTRAINT [FK_ClassNotification_Class] FOREIGN KEY ([ClassId]) REFERENCES [Class]([ClassId]) ON DELETE CASCADE ON UPDATE CASCADE
)
