USE AdventureWorks2019 -- sử dụng cơ sở dữ liệu AdventureWorks

SELECT * FROM HumanResources.Employee
--khai báo biến
Go
DECLARE @deptID INT -- khai báo biến cục bộ tên là deptID kiểu int
SELECT @deptID=1 -- Gán giá trị cho biến bằng 1
SELECT Name, GroupName FROM HumanResources.Department WHERE DepartmentID = @deptID
go

SELECT @@LANGUAGE --Hiển thị thông thin của biến toàn cục @@LANGUAGE, trả lại thông tin ngôn ngữ sử dụng trong sql server
SELECT @@VERSION  --Hiển thị thông thin của biến toàn cục @@VERSION, trả lại thông tin về phiên bản sql server
Go

--Lấy tổng tất cả giá trị các bản ghi trường StadardCost thuộc bảng ProductCostHistory
SELECT SUM(StandardCost) FROM Production.ProductCostHistory

--tính giá trị trung bình của trường StadardCost thuộc bảng ProductCostHistory
SELECT AVG(StandardCost) FROM Production.ProductCostHistory

--Lấy ra giá trị lờn nhất của trường StandardCost trong bảng ProductCostHistory
SELECT MAX(StandardCost) FROM Production.ProductCostHistory

--Đếm tổng số bản ghi trong bảng ProductPhoto
SELECT COUNT(*) FROM Production.ProductPhoto
SELECT * FROM Production.ProductPhoto

--lấy ra ngày giờ hệ thống:
SELECT GETDATE()

--Lấy ra giờ hệ thống:
SELECT DATEPART(hh,GETDATE())

--Định dạng ngày dùng hàm CONVERT:
SELECT CONVERT(VarChar(50), GETDATE(), 103)

/*
http://ww.java2s.com/code/SQLServer/Date-Timezone/CONVERTVarChar50GETDATE102.htm
*/

--lấy ra định danh của cơ sở dữ liệu
SELECT DB_ID(AdventureWorks2019)

tạo cơ sở dữ liệu:
CREATE DATABASE EXAMPLE3

USE EXAMPLE3

-- Tảo bảng trong cơ sở dữ liệu
CREATE TABLE Contacts
(MailID VARCHAR(20),
Name NTEXT, 
TelephoneNumber INT)

--thêm 1 cột vào bảng đã có:
ALTER TABLE contacts ADD Address NVARCHAR(50)

--thêm dữ liệu vào bảng Contacts:
INSERT INTO Contacts values ('abc@yahoo.com', N'Nguyễn Văn A', 9898998, N'Hà Nội')
INSERT INTO Contacts values ('nguyenthiB@yahoo.com' ,N'Nguyễn thị B'4329234, N'Hà Nội')
INSERT INTO Contacts values ('tranvanC@yahoo.com' ,N'Trần văn C',905243524, N'Hà Nội')
INSERT INTO Contacts values ('trinhvanC@yahoo.com' ,N'Trịnh Văn C' ,4563576, N'Hà Nội')

--Lấy ra tất cả bản ghi trong bảng:
SELECT * FROM Contacts

--xóa bản ghi có chứa mailID=tranvanC@yahoo.com
DELETE FROM Contacts WHERE MailID='tranvanC@yahoo.com'

sửa bản ghi có mailID=trinhvanD@yahoo.com
UPDATE Contacts SET Name=N'Trinh Hoang Long' WHERE MailID='trinhvanD@yahoo.com'

--tao login account để test GRANT
CREATE LOGIN example3 WITH PASWORD='123456'

--tạo user từ login account vừa tạo 
CREATE USER example3 FROM LOGIN example3

--Hủy bỏ tất cả các quyền của user example3 trên bảng contacts
REVOKE all ON contacts FROM example3

--disconnect và connect lại với user example3/12345, thực hieenk câu lệnh select để demo cho sinh viên thấy user không còn bất kỳ

--gán quyền select cho example3 trên bảng contacts
GRANT SELECT ON Contacts TO example3