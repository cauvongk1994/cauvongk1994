CREATE DATABASE KiemTra
go
USE KiemTra
GO
CREATE TABLE V_Parts(
	PartID int identity(1,1) primary key,
	PartName nvarchar(100),
	CateID char(6),
	Description nvarchar(1000)
)
GO
INSERT INTO V_Parts(
	CateName, 
	CateID,
	Photo,
)
Values (
	N'Nguyễn Văn A',',
	CPU,HDD,RAM'
),
(
	N'Nguyễn Văn B',
	',CPU,HDD,RAM'
)
go
SELECT * FROM V_Parts WHERE V_Parts Like '%100%'