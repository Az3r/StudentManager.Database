CREATE TABLE [Account] (
    [MGV] char(9)  NOT NULL ,
    [Salt] binary(128)  NOT NULL ,
    [Password] binary(128)  NOT NULL ,
    CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED (
        [MGV] ASC
    )
)
GO
ALTER TABLE [Account] WITH CHECK ADD CONSTRAINT [FK_Account_MGV] FOREIGN KEY([MGV])
REFERENCES [Teacher] ([MGV]) ON DELETE CASCADE
GO

ALTER TABLE [Account] CHECK CONSTRAINT [FK_Account_MGV]