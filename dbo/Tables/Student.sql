CREATE TABLE [Student] (
    [StudentId] char(7)  NOT NULL ,
    [IsGraduated] BIT DEFAULT 0 NOT NULL,
    CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED (
        [StudentId] ASC
    ), 
    CONSTRAINT [CK_Student_StudentId] CHECK (ISNUMERIC([StudentId]) = 1), 
)