-- Tạo cơ sở dữ liệu QLHS
CREATE DATABASE QLHS;
GO

-- Sử dụng cơ sở dữ liệu QLHS
USE QLHS;
GO

-- Tạo bảng HocSinh
CREATE TABLE HocSinh (
    MaHocSinh NVARCHAR(10) PRIMARY KEY, -- Mã học sinh
    HoTen NVARCHAR(100) NOT NULL,       -- Họ và tên
    NgaySinh DATE NOT NULL,             -- Ngày sinh
    GioiTinh NVARCHAR(10) NOT NULL,     -- Giới tính
    ConThuongBinh NVARCHAR(20) NOT NULL, -- Con thương binh liệt sĩ
    TenLop NVARCHAR(50) NOT NULL,       -- Tên lớp
    Tuoi INT NOT NULL                   -- Tuổi
);
GO

-- Thêm dữ liệu vào bảng HocSinh
INSERT INTO HocSinh (MaHocSinh, HoTen, NgaySinh, GioiTinh, ConThuongBinh, TenLop, Tuoi) VALUES
('HS01', N'Trần Ngọc Lan', '2010-12-30', N'Nữ', N'Có', N'Chuyên Toán 2', 16),
('HS02', N'Nguyễn Văn An', '2010-08-15', N'Nam', N'Không', N'Chuyên Văn 1', 14),
('HS03', N'Phạm Thị Hoa', '2011-03-20', N'Nữ', N'Có', N'Chuyên Lý 3', 13),
('HS04', N'Đặng Quốc Bảo', '2009-10-10', N'Nam', N'Không', N'Chuyên Hóa 2', 15),
('HS05', N'Hoàng Mai Anh', '2010-07-05', N'Nữ', N'Có', N'Chuyên Anh 1', 14),
('HS06', N'Trần Đình Phong', '2009-11-25', N'Nam', N'Không', N'Chuyên Tin 2', 15),
('HS07', N'Ngô Thị Thanh', '2011-01-12', N'Nữ', N'Có', N'Chuyên Sinh 3', 13),
('HS08', N'Vũ Đức Thắng', '2010-04-08', N'Nam', N'Không', N'Chuyên Sử 1', 14),
('HS09', N'Trần Kim Yến', '2010-06-30', N'Nữ', N'Có', N'Chuyên Địa 2', 14),
('HS10', N'Lê Minh Quân', '2009-12-22', N'Nam', N'Không', N'Chuyên Toán 1', 15);
GO

SELECT *FROM HocSinh
