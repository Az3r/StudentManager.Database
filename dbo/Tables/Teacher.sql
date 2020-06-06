CREATE TABLE [Teacher] (
    [MaGiaoVien] CHAR(9)  NOT NULL ,
    [ChuyenMon] INT NOT NULL,
    MaChucVu CHAR(10)  NOT NULL ,
    CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED (
        [MaGiaoVien] ASC
    ),
    CONSTRAINT [FK_Teacher_Subject] FOREIGN KEY ([ChuyenMon]) REFERENCES [Subject]([MaMonHoc]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Teacher_SchoolRole] FOREIGN KEY ([MaChucVu]) REFERENCES [SchoolRole]([MaChucVu]) ON DELETE CASCADE ON UPDATE CASCADE, 
    CONSTRAINT [CK_Teacher_MaGiaoVien] CHECK (ISNUMERIC(MaGiaoVien) = 1),
)