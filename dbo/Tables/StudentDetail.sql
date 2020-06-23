CREATE TABLE [dbo].[StudentDetail]
(
    [StudentId] CHAR(7) NOT NULL PRIMARY KEY,
    [LastName] nvarchar(10)  NOT NULL ,
    [FirstName] nvarchar(10)  NOT NULL ,
    [MiddleName] nvarchar(10)  NOT NULL ,
    [IsMale] bit  NOT NULL ,
    [Birthday] date  NOT NULL ,
    [Email] varchar(100)  NOT NULL ,
    [PhoneNumber] CHAR(10) NOT NULL, 
    [Avatar] VARCHAR(MAX) NULL, 
    CONSTRAINT [FK_StudentDetail_Student] FOREIGN KEY ([StudentId]) REFERENCES [Student]([StudentId]) ON DELETE CASCADE ON UPDATE CASCADE, 
    CONSTRAINT [CK_StudentDetail_Email] CHECK (CHARINDEX('@gmail.com', Email) > 0),
)
