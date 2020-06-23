CREATE TABLE [PersonalInfo] (
    [PersonalInfoId] VARCHAR(9) NOT NULL ,

    [Address] nvarchar(300) NOT NULL,

    --name
    [LastName] nvarchar(10)  NOT NULL ,
    [FirstName] nvarchar(10)  NOT NULL ,
    [MiddleName] nvarchar(10)  NOT NULL ,

    --contact
    [Email] varchar(100)  NOT NULL ,
    [PhoneNumber] CHAR(10) NOT NULL, 

     --other
    [IsMale] bit  NOT NULL DEFAULT 0 ,
    [Birthday] date  NOT NULL ,

    [Photo] VARCHAR(MAX) NULL, 

    CONSTRAINT [CK_PersonalInfo_Email] CHECK (CHARINDEX('@gmail.com', Email) > 0), 
)