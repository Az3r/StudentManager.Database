CREATE TABLE [Score] (
    [MaDiem] char(11),
    [MaMonHoc] int NOT NULL ,
    [MaSoSinhVien] char(7)  NOT NULL ,
    [HocKi] int  NOT NULL ,
    [NienKhoa] int  NOT NULL ,
    [LoaiDiem] int NOT NULL,
    [Diem] float NOT NULL DEFAULT 0,
    CONSTRAINT [PK_Score] PRIMARY KEY CLUSTERED (
        [MaDiem],[MaMonHoc],[MaSoSinhVien],[HocKi],[NienKhoa], [LoaiDiem]
    ),

    CONSTRAINT [FK_Score_MMH] FOREIGN KEY([MaMonHoc]) REFERENCES [Subject] ([MaMonHoc]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Score_MSSV] FOREIGN KEY([MaSoSinhVien]) REFERENCES [Student] ([MaHocSinh]) ON DELETE CASCADE ON UPDATE CASCADE, 
    CONSTRAINT [CK_Score_HocKi] CHECK (HocKi >= 1 AND HocKi <= 2),
    CONSTRAINT [CK_Score_Diem] CHECK (Diem >= 0 AND Diem <= 10)
)