-- Tạo cơ sở dữ liệu QLHS
CREATE DATABASE OnTapNet1;
GO

-- Sử dụng cơ sở dữ liệu QLHS
USE OnTapNet1;
GO

-- Tạo bảng LopHoc
CREATE TABLE LopHoc (
    MaLop NVARCHAR(10) PRIMARY KEY,  -- Mã lớp
    TenLop NVARCHAR(50) NOT NULL     -- Tên lớp
);
GO

-- Thêm dữ liệu vào bảng LopHoc
INSERT INTO LopHoc (MaLop, TenLop) VALUES
('L01', N'Chuyên Toán 1'),
('L02', N'Chuyên Toán 2'),
('L03', N'Chuyên Văn 1'),
('L04', N'Chuyên Văn 2'),
('L05', N'Chuyên Lý 3'),
('L06', N'Chuyên Hóa 2');
GO

-- Tạo bảng HocSinh
CREATE TABLE HocSinh (
    MaHocSinh NVARCHAR(10) PRIMARY KEY, -- Mã học sinh
    HoTen NVARCHAR(100) NOT NULL,       -- Họ và tên
    NgaySinh DATETIME NOT NULL,             -- Ngày sinh
    GioiTinh NVARCHAR(10) NOT NULL,     -- Giới tính
    ConThuongBinh NVARCHAR(20) NOT NULL, -- Con thương binh liệt sĩ
    MaLop NVARCHAR(10) FOREIGN KEY REFERENCES LopHoc(MaLop), -- Mã lớp
    Tuoi INT NOT NULL                   -- Tuổi
);
GO

-- Thêm dữ liệu vào bảng HocSinh
INSERT INTO HocSinh (MaHocSinh, HoTen, NgaySinh, GioiTinh, ConThuongBinh, MaLop, Tuoi) VALUES
('HS01', N'Trần Ngọc Lan', '2010-12-30', N'Nữ', N'Có', 'L02', 16),
('HS02', N'Nguyễn Văn An', '2010-08-15', N'Nam', N'Không', 'L03', 14),
('HS03', N'Phạm Thị Hoa', '2011-03-20', N'Nữ', N'Có', 'L05', 13),
('HS04', N'Đặng Quốc Bảo', '2009-10-10', N'Nam', N'Không', 'L06', 15),
('HS05', N'Hoàng Mai Anh', '2010-07-05', N'Nữ', N'Có', 'L01', 14),
('HS06', N'Trần Đình Phong', '2009-11-25', N'Nam', N'Không', 'L02', 15),
('HS07', N'Ngô Thị Thanh', '2011-01-12', N'Nữ', N'Có', 'L05', 13),
('HS08', N'Vũ Đức Thắng', '2010-04-08', N'Nam', N'Không', 'L03', 14),
('HS09', N'Trần Kim Yến', '2010-06-30', N'Nữ', N'Có', 'L04', 14),
('HS10', N'Lê Minh Quân', '2009-12-22', N'Nam', N'Không', 'L01', 15);
GO

-- Hiển thị dữ liệu từ bảng LopHoc
SELECT * FROM LopHoc;
-- Hiển thị dữ liệu từ bảng HocSinh
SELECT * FROM HocSinh;
GO
