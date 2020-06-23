CREATE TABLE [Address] (
    [AddressId] int IDENTITY(1,1) NOT NULL ,
    [StudentId] char(7)  UNIQUE NOT NULL ,
    [Street] nvarchar(50)  NOT NULL ,
    [District] nvarchar(50)  NOT NULL ,
    [Province] nvarchar(50)  NOT NULL ,
    CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED (
        [AddressId] ASC,[StudentId] ASC
    ),
    CONSTRAINT [FK_Address_Student] FOREIGN KEY([StudentId]) REFERENCES [Student] ([StudentId]) ON DELETE CASCADE ON UPDATE CASCADE
)