CREATE DATABASE BuildMaterial
GO
USE BuildMaterial
GO

CREATE TABLE [Role] (
	RoleID INT PRIMARY KEY,
	RoleName NVARCHAR(50)
)

CREATE TABLE [User] (
	UserID INT PRIMARY KEY,
	FirstName NVARCHAR (50),
	LastName NVARCHAR (50),
	MiddleName NVARCHAR (50),
	UserLogin NVARCHAR(max),
	UserPassword NVARCHAR(max),
	UserRoleID INT FOREIGN KEY REFERENCES [Role](RoleID)
)

CREATE TABLE Client (
	ClientID INT PRIMARY KEY,
	UserID INT FOREIGN KEY REFERENCES [User](UserID)
)

CREATE TABLE City (
	CityID INT PRIMARY KEY,
	CityName NVARCHAR(50)
)

CREATE TABLE PickupPoint (
	PickupPointID INT PRIMARY KEY ,
	MailIndex NVARCHAR(50) ,
	CityID INT FOREIGN KEY REFERENCES [City](CityID),
	Street NVARCHAR (50),
	HousNumber NVARCHAR(50)
)

CREATE TABLE Order_Status(
	Order_StatusID INT PRIMARY KEY,
	[Value] NVARCHAR(50)
)

CREATE TABLE [Order] (
	OrderID INT PRIMARY KEY,
	OrderDate DATE,
	[Date] DATE,
	ClientID INT FOREIGN KEY REFERENCES [Client](ClientID),
	PickupPointID INT FOREIGN KEY REFERENCES PickupPoint(PickupPointID),
	Code NVARCHAR(50),
	Order_StatusID INT FOREIGN KEY REFERENCES Order_Status(Order_StatusID)
)

CREATE TABLE Category (
	CategoryID INT PRIMARY KEY,
	CategoryName NVARCHAR (50)
)

CREATE TABLE Unit (
	UnitID INT PRIMARY KEY,
	[Value] NVARCHAR(20)
)

CREATE TABLE Manufacturer (
	ManufacturerID INT PRIMARY KEY,
	ManufacturerName NVARCHAR (50)
)

CREATE TABLE Supplier (
	SupplierID INT PRIMARY KEY,
	SupplierName NVARCHAR(50)
)

CREATE Table [Image] (
	ImageID INT PRIMARY KEY,
	ImageName IMAGE
)
CREATE TABLE Goods(
	Articul NVARCHAR(50) PRIMARY KEY,
	[Name] NVARCHAR (50),
	UnitID INT FOREIGN KEY REFERENCES Unit(UnitID),
	Cost NVARCHAR (50),
	MaxSaleSize NVARCHAR (50),
	ManufacturerID INT FOREIGN KEY REFERENCES Manufacturer(ManufacturerID),
	SupplierID INT FOREIGN KEY REFERENCES Supplier(SupplierID),
	CategoryID INT FOREIGN KEY REFERENCES Category(CategoryID),
	CurrentDiscount NVARCHAR(50),
	AmountInStok NVARCHAR (50),
	[Description] NVARCHAR(max),
	[Image] INT FOREIGN KEY REFERENCES [Image](ImageID)
)

CREATE TABLE Order_Content (
	Order_ContentID INT PRIMARY KEY,
	OredrID INT FOREIGN KEY REFERENCES [Order](OrderID),
	GoodsID NVARCHAR(50) FOREIGN KEY REFERENCES Goods(Articul),
	Amount INT
)

