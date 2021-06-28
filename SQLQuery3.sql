IF EXISTS (SELECT * FROM sys.databases WHERE Name='Example5'
	DROP DATABASE Example5
GO
CREATE DATABASE Example5
USE Example5
GO

--Tảo bảng lớp học
CREATE TABLE LopHoc(
	MaLopHoc INT PRIMARY KEY IDENTITY,
	TenLopHoc VARCHAR(10)
)
GO
--tạo bảng sinh viên có khóa ngoại là cột MaLopHoc, nối với bang LọHoc
CREATE TABLE SinhVien(
MaSV int PRIMARY KEY.
TenSV varchar(40),
MaLopHoc int,
CONSTRAINT fk FOREIGN KEY (MaLopHoc) REFERENCES LopHoc(MaLopHoc)
)
GO
--Tạo bảng sanpham với một cột NULL một cột NOT NULL
CREATE TABLE SanPham(
MaSP int NOT NULL,
TenSP varchar(40) NULL
)
GO
--tạo bảng với thuộc tính default cho cột price
CREATE TABLE StoreProduct(
	ProductID int NOT NULL,
	Name varchar(40) NOT NULL,
	price money NOT NULL DEFAULT (100)
)
--Thử kiểm tra xem giá trị default có được sử dụng hay không
INSERT INTO StoreProduct (ProductID, Name) VALUES (111, rivets)
Go

--tạo bảng contactPhone với thuộc tính IDENTITY
CREATE TABLE ContactPhone(
	person_ID int IDENTITY(500,1) NOT NULL,
	MobileNumber bigint NOT NULL
)
GO
--Tạo cột nhận duy nhất tổng thể
CREATE TABLE CellularPhone(
	Person_ID uniqueidentifier DEFAULT NEWID() NOT NULL,
	PersonName varchar (60) NOT NULL
)
--Chèn 1 record vào
INSERT INTO CellularPhone(PersonName) VALUES ('William Smith')
Go
--Kiểm tra giá trị của cột Person_ID tự động sinh
SELECT * FROM CellularPhone
Go
--Tạo bảng ContactPhone với cột MobileNumber có thuộc tính UNIQUE
CREATE BLE ContactPhone(
Person_ID int PRIMARY KEY,
MobileNumber bigint UNIQUE,
Serviceprovider varchar (30),
LandLineNumber bigint UNIQUE
)
--chèn 2 bản ghi có giá trị giống nhau ở cột mobileNumber và lanlieNumber để quan sát lỗi
INSERT INTO ContactPhone values (101, 983345674, 'Hutch', NULL)
INSERT INTO ContactPhone values (102, 983345674, 'Alex', NULL)
GO
--Tạo bảng PhoneExpenses có một CHECT ở cột Amount
CREATE TABLE PhoneExpenses
	Expense_ID int PRIMARY KEY,
	MobileNumber bigint FOREIGN KEY REFERENCES  ContactPhone(MibileNumber),
		Amount bigint CHECK (Amount >0)
)
GO

--chỉnh sửa cột trong bảng
ALTER TABLE ContactPhone
	ALTER COLUMN ServiceProvider varchar (45)
	GO
--Xóa cột trong bảng
ALTER TABLE ContactPhone
	DROP COLUMN ServiceProvider
Go
--Thêm 1 rằng buộc bào bảng
ALTER TABLE ContractPhone ADD CONSTRAINT CHK_RC CHECK (rentelCharges >0)
GO
--xóa 1 rằng buộc 
ALTER TABLE Person.ContactPhone
	DROP CONSTRAINT CHK_RC


