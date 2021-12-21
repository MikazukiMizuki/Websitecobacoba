Create DataBase cArDorm;
USE cArDorm
GO
-- MsStaff
Create table MsStaff (
StaffID CHAR(5) PRIMARY KEY NOT NULL CHECK(StaffID like 'ST[0-9][0-9][0-9]'),
StaffName VARCHAR(50) NOT NULL,
StaffGender VARCHAR(10) NOT NULL,
StaffEmail VARCHAR(50) NOT NULL CHECK (StaffEmail LIKE '%@gmail.com' OR StaffEmail LIKE '%@yahoo.com'),
StaffPhone VARCHAR(12) NOT NULL, 
StaffAddress VARCHAR(100) NOT NULL,
StaffSalary INT NOT NULL CHECK (StaffSalary BETWEEN 5000000 and 10000000 ) 
)
GO 
--MsVendor
create table MsVendor(
VendorID CHAR(5) PRIMARY KEY NOT NULL CHECK(VendorID like 'VE[0-9][0-9][0-9]'),
VendorName VARCHAR(50) NOT NULL,
VendorEmail VARCHAR(50) NOT NULL CHECK (VendorEmail LIKE '%@gmail.com' OR VendorEmail LIKE '%@yahoo.com'),
VendorPhone VARCHAR(12) NOT NULL, 
VendorAddress VARCHAR(100) NOT NULL,
)
GO
--MsCustomer 
Create Table MsCustomer(
CustomerID CHAR(5) PRIMARY KEY NOT NULL CHECK(CustomerID like 'CU[0-9][0-9][0-9]'),
CustomerName VARCHAR(50) NOT NULL,
CustomerGender VARCHAR(10) NOT NULL,
CustomerEmail VARCHAR(50) NOT NULL CHECK (CustomerEmail LIKE '%@gmail.com' OR CustomerEmail LIKE '%@yahoo.com'),
CustomerPhone VARCHAR(12) NOT NULL, 
CustomerAddress VARCHAR(100) NOT NULL,
)
GO
--MsBrand
Create Table MsBrand(
BrandID CHAR(5) PRIMARY KEY NOT NULL CHECK(BrandID like 'CB[0-9][0-9][0-9]'),
BrandName VARCHAR(20) NOT NULL,
)
GO
--MsCar
Create Table MsCar(
CarID CHAR(5) PRIMARY KEY NOT NULL CHECK(CarID like 'CA[0-9][0-9][0-9]'),
BrandID CHAR(5) FOREIGN KEY REFERENCES MsBrand(BrandID) ON UPDATE CASCADE ON DELETE CASCADE,
CarName VARCHAR(20) NOT NULL,
CarPrice INT NOT NULL,
CarStock INT NOT NULL,
)
GO
--Purchase 
Create Table Purchase(
PurchaseID CHAR(5) PRIMARY KEY NOT NULL CHECK(PurchaseID like 'PU[0-9][0-9][0-9]'),
VendorID CHAR(5) FOREIGN KEY REFERENCES MsVendor(VendorID) ON UPDATE CASCADE ON DELETE CASCADE,
StaffID CHAR(5) FOREIGN KEY REFERENCES MsStaff(StaffID) ON UPDATE CASCADE ON DELETE CASCADE,
PurchaseDate DATE CHECK(PurchaseDate <= GetDate()),
)
GO
--Transaction
Create Table [Transaction](
TransactionID CHAR(5) PRIMARY KEY NOT NULL CHECK(TransactionID like 'TR[0-9][0-9][0-9]'),
CustomerID CHAR(5) FOREIGN KEY REFERENCES MsCustomer(CustomerID) ON UPDATE CASCADE ON DELETE CASCADE,
StaffID CHAR(5) FOREIGN KEY REFERENCES MsStaff(StaffID) ON UPDATE CASCADE ON DELETE CASCADE,
TransactionDate DATE CHECK(TransactionDate <= GetDate()),
)
GO
--PurchaseDetail
Create Table PurchaseDetail(
PurchaseID CHAR(5) FOREIGN KEY REFERENCES Purchase(PurchaseID) ON UPDATE CASCADE ON DELETE CASCADE,
CarID CHAR(5) FOREIGN KEY REFERENCES MsCar(CarID) ON UPDATE CASCADE ON DELETE CASCADE,
PurchaseQuantity INT NOT NULL
Primary Key(PurchaseID,CarID)
)
GO
--TransactionDetail
Create Table TransactionDetail(
TransactionID CHAR(5) FOREIGN KEY REFERENCES [Transaction](TransactionID) ON UPDATE CASCADE ON DELETE CASCADE,
CarID CHAR(5) FOREIGN KEY REFERENCES MsCar(CarID) ON UPDATE CASCADE ON DELETE CASCADE,
TransactionQuantity INT NOT NULL
Primary Key(TransactionID,CarID)
)

--DROP TABLE TransactionDetail
--DROP TABLE PurchaseDetail
--DROP TABLE Purchase
--DROP TABLE [Transaction]
--DROP TABLE MsCar
--DROP TABLE MsBrand
--DROP TABLE MsVendor
--DROP TABLE MsCustomer
--DROP TABLE MsStaff