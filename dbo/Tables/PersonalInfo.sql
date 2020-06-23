CREATE TABLE [PersonalInfo] (
    [PersonalInfoId] VARCHAR(9) NOT NULL ,

    --address
    [Street] nvarchar(50)  NOT NULL ,
    [District] nvarchar(50)  NOT NULL ,
    [Province] nvarchar(50)  NOT NULL ,

    --name
    [LastName] nvarchar(10)  NOT NULL ,
    [FirstName] nvarchar(10)  NOT NULL ,
    [MiddleName] nvarchar(10)  NOT NULL ,

    --contact
    [Email] varchar(100)  NOT NULL ,
    [PhoneNumber] CHAR(10) NOT NULL, 

     --other
    [IsMale] bit  NOT NULL ,
    [Birthday] date  NOT NULL ,

    CONSTRAINT [CK_PersonalInfo_Email] CHECK (CHARINDEX('@gmail.com', Email) > 0), 
)