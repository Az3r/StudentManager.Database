CREATE TABLE [Score] (
    [MaDiem] char(11),
    [MaMonHoc] int NOT NULL ,
    [MaHocSinh] char(7)  NOT NULL ,
    [HocKi] int  NOT NULL ,
    [NienKhoa] int  NOT NULL ,
    [LoaiDiem] int NOT NULL,
    [Diem] float NOT NULL DEFAULT 0,
    CONSTRAINT [PK_Score] PRIMARY KEY CLUSTERED (
        [MaDiem],[MaMonHoc],[MaHocSinh],[HocKi],[NienKhoa], [LoaiDiem]
    ),

    CONSTRAINT [FK_Score_Subject] FOREIGN KEY([MaMonHoc]) REFERENCES [Subject] ([MaMonHoc]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Score_Student] FOREIGN KEY([MaHocSinh]) REFERENCES [Student] ([MaHocSinh]) ON DELETE CASCADE ON UPDATE CASCADE, 
    CONSTRAINT [CK_Score_HocKi] CHECK (HocKi >= 1 AND HocKi <= 2),
    CONSTRAINT [CK_Score_Diem] CHECK (Diem >= -1 AND Diem <= 10), 
    CONSTRAINT [CK_Score_MaDiem] CHECK (ISNUMERIC(MaDiem) = 1)
)