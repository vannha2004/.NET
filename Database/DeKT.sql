CREATE DATABASE [DeKTNET]
GO
USE [DeKTNET]
GO
--Tạo bảng TheLoai
CREATE TABLE [dbo].[TheLoai](
[MaLoai] [nchar](10) NOT NULL PRIMARY KEY,
[TenLoai] [nvarchar](50) NULL)
GO
--Tạo bảng SanPham
CREATE TABLE [dbo].[SanPham](
[MaSp] [nchar](10) NOT NULL PRIMARY KEY,
[TenSp] [nvarchar](50) NULL,
[GiaBan] [decimal](18,2) NULL,
[NgayNhap] [Datetime] NULL,
[SoLuong] [int] NULL,
[MaLoai] [nchar](10) NULL)
GO
--Tạo các khóa ngoài
ALTER TABLE [dbo].[SanPham] WITH CHECK ADD CONSTRAINT [FK_SanPham_TheLoai]
FOREIGN KEY([MaLoai])
REFERENCES [dbo].[TheLoai] ([MaLoai])
GO
--Chèn dữ liệu cho bảng TheLoai
Insert into TheLoai(MaLoai,TenLoai) values('M01',N'Low Dopamin')
Insert into TheLoai(MaLoai,TenLoai) values('M02',N'Medium Dopamin')
Insert into TheLoai(MaLoai,TenLoai) values('M03',N'High Dopamin')
Insert into TheLoai(MaLoai,TenLoai) values('M04',N'Extra Dopamin')

--Chèn dữ liệu cho bảng SanPham
INSERT INTO SanPham(MaSp, TenSp, GiaBan, NgayNhap, SoLuong, MaLoai) 
VALUES('SP01', N'Loa Microlab', 121.5, '2023-11-11', 10, 'M01')

INSERT INTO SanPham(MaSp, TenSp, GiaBan, NgayNhap, SoLuong, MaLoai) 
VALUES('SP02', N'Tai Nghe Sony', 75.0, '2023-11-12', 15, 'M02')

INSERT INTO SanPham(MaSp, TenSp, GiaBan, NgayNhap, SoLuong, MaLoai) 
VALUES('SP03', N'Microphone', 45.5, '2023-11-13', 20, 'M03')

INSERT INTO SanPham(MaSp, TenSp, GiaBan, NgayNhap, SoLuong, MaLoai) 
VALUES('SP04', N'Loa Bluetooth', 99.9, '2023-11-14', 12, 'M04')

select * from TheLoai
select * from SanPham
