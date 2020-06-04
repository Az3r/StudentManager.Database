CREATE TABLE [Score] (
    [MaMonHoc] int NOT NULL ,
    [MaSoSinhVien] char(7)  NOT NULL ,
    [HocKi] int  NOT NULL ,
    [NienKhoa] int  NOT NULL ,
    [Diem15] float  NOT NULL DEFAULT 0 ,
    [Diem45] float  NOT NULL DEFAULT 0 ,
    [DiemHocKi] float  NOT NULL DEFAULT 0 ,
    CONSTRAINT [PK_Score] PRIMARY KEY CLUSTERED (
        [MaMonHoc] ASC,[MaSoSinhVien] ASC,[HocKi] ASC,[NienKhoa] ASC
    )
)
GO
ALTER TABLE [Score] ADD CONSTRAINT [FK_Score_MMH] FOREIGN KEY([MaMonHoc]) 
REFERENCES [Subject] ([MaMonHoc]) ON DELETE CASCADE
GO

ALTER TABLE [Score] CHECK CONSTRAINT [FK_Score_MMH]
GO
ALTER TABLE [Score] ADD CONSTRAINT [FK_Score_MSSV] FOREIGN KEY([MaSoSinhVien])
REFERENCES [Student] ([MaSoSinhVien]) ON DELETE CASCADE
GO

ALTER TABLE [Score] CHECK CONSTRAINT [FK_Score_MSSV]