USE cArDorm
--1
SELECT CustomerName = CONCAT('Mrs ',CustomerName),
CustomerGender=UPPER(CustomerGender),
[Total Transaction] = COUNT(TransactionID)
FROM MsCustomer mc JOIN [Transaction] t 
ON mc.CustomerID = t.CustomerID
WHERE CustomerName LIKE '% %' AND CustomerGender ='Female'
GROUP BY CustomerName,CustomerGender
--2
SELECT mca.CarId, CarName, CarBrandName = BrandName, CarPrice,
[Total of Car That Has Been Sold] = CONCAT(COUNT(TransactionQuantity),' Car(s)')
FROM MsCar mca JOIN TransactionDetail td 
ON mca.CarID = td.CarID
JOIN MsBrand mcb
ON mcb.BrandID = mca.BrandID
WHERE CarPrice > 300000000 AND RIGHT(mca.CarID,3) % 2 = 1
GROUP BY mca.CarId, CarName, BrandName, CarPrice
HAVING COUNT(TransactionQuantity) > 1
--3
SELECT StaffID = REPLACE(ms.StaffID,'ST','Staff'), StaffName,
[Total Transaction Handled] = COUNT(pd.PurchaseID),
[Maximum Quantity in One Transaction] = MAX(PurchaseQuantity)
FROM MsStaff ms JOIN Purchase p
ON ms.StaffID = p.StaffID
JOIN PurchaseDetail pd
ON pd.PurchaseID = p.PurchaseID
WHERE DATENAME(MONTH,PurchaseDate) = 'April' AND StaffName LIKE '% %'
GROUP BY ms.StaffID,StaffName
HAVING COUNT(pd.PurchaseID) > 1
ORDER BY COUNT(PurchaseQuantity) DESC
--4
SELECT CustomerName, 
CustomerGender = LEFT(CustomerGender,1),
[Total Purchase] = COUNT(t.TransactionID),
[Total of Car That Has Been Purchased] = SUM(TransactionQuantity)
FROM MsCustomer mc JOIN [Transaction] t
ON mc.CustomerID = t.CustomerID
JOIN TransactionDetail td
ON td.TransactionID = t.TransactionID
WHERE CustomerEmail LIKE '%@gmail.com'
GROUP BY CustomerName,CustomerGender
HAVING SUM(TransactionQuantity) > 2
--5
SELECT VendorID = REPLACE(mv.VendorID,'VE','Vendor'),
VendorPhoneNumber = VendorPhone,
[Purchase ID Number] = RIGHT(p.PurchaseID,3),
[Quantity]= PurchaseQuantity
FROM
MsVendor mv JOIN Purchase p
ON mv.VendorID = p.VendorID
JOIN PurchaseDetail pd
ON p.PurchaseID = pd.PurchaseID,
(SELECT [avg_qty] = AVG(PurchaseQuantity) FROM PurchaseDetail) as rerata
WHERE VendorName LIKE '%a%' AND PurchaseQuantity > rerata.avg_qty
--6
SELECT [Name] = CONCAT(UPPER(BrandName),' ',UPPER(CarName)),
[Price] = CONCAT('Rp. ',CarPrice),
[Stock] = CONCAT(' Stock(s)',CarStock)
FROM 
MsCar mca JOIN MsBrand mcb
ON mca.BrandID = mcb.BrandID,(SELECT [avg_price] = AVG(CAST(CarPrice AS BIGINT)) FROM MsCar) as rata
WHERE CarName LIKE '%e%' AND CarPrice > rata.avg_price
--7
SELECT [Car ID Number] = RIGHT(mca.CarID,3),
CarName,
[Brand] = UPPER(BrandName),
[Price] = CONCAT('Rp. ',CarPrice),
[Total of Car That Has Been Sold] = SUM(PurchaseQuantity)
FROM
MsCar mca JOIN MsBrand mcb
ON mca.BrandID = mcb.BrandID
JOIN PurchaseDetail pd
ON mca.CarID = pd.CarID
WHERE CarPrice > 200000000  AND CarName LIKE '%o%'
GROUP BY RIGHT(mca.CarID,3),UPPER(BrandName),CONCAT('Rp. ',CarPrice),CarName
HAVING SUM(PurchaseQuantity) > (SELECT [avg_sum] = AVG(x.sum_qty) 
FROM 
(SELECT [sum_qty] = SUM(PurchaseQuantity) 
FROM
MsCar mca JOIN MsBrand mcb
ON mca.BrandID = mcb.BrandID
JOIN PurchaseDetail pd
ON mca.CarID = pd.CarID
GROUP BY RIGHT(mca.CarID,3),UPPER(BrandName),CONCAT('Rp. ',CarPrice),CarName) AS x)
--8
SELECT [Staff First Name] = LEFT(StaffName,CHARINDEX(' ',StaffName)),
[Staff Last Name] = SUBSTRING(StaffName,CHARINDEX(' ',StaffName)+1,LEN(StaffName)),
[Total of Car That Has Been Sold] = SUM(TransactionQuantity)
FROM
MsStaff ms JOIN [Transaction] t 
ON ms.StaffID = t.StaffID
JOIN TransactionDetail td
ON t.TransactionID = td.TransactionID
WHERE StaffName LIKE '% %'
GROUP BY  StaffName,td.TransactionID
HAVING SUM(TransactionQuantity) > (SELECT [avg_sum] = AVG(y.sum_qty) 
FROM 
(SELECT [sum_qty] = SUM(TransactionQuantity) 
FROM
MsStaff ms JOIN [Transaction] t 
ON ms.StaffID = t.StaffID
JOIN TransactionDetail td
ON t.TransactionID = td.TransactionID 
GROUP BY StaffName,td.TransactionID) AS y)
--9
GO
CREATE VIEW Vendor_Transaction_Handled_and_Minimum_View
AS
SELECT VendorID = REPLACE(mv.VendorID,'VE','Vendor'),VendorName,
[Total Transaction Handled] = COUNT(p.PurchaseID),
[Minimum Purchases in One Transaction]=MIN(PurchaseQuantity)
FROM MsVendor mv JOIN Purchase p 
ON mv.VendorID = p.VendorID
JOIN PurchaseDetail pd
ON pd.PurchaseID = p.PurchaseID
WHERE DATENAME(MONTH,PurchaseDate) = 'May' AND VendorName LIKE '%a%'
GROUP BY mv.VendorID,VendorName
--10
GO
CREATE VIEW Staff_Total_Purchase_and_Max_Car_Purchase_View
AS
SELECT ms.StaffID,StaffName,
StaffEmail = UPPER(StaffEmail),
[Total Purchase]=COUNT(p.PurchaseID),
[Maximum of Car That Has Been Purchased in One Purchase] = MAX(PurchaseQuantity)
FROM MsStaff ms JOIN Purchase p
ON ms.StaffID = p.StaffID
JOIN PurchaseDetail pd
ON pd.PurchaseID = p.PurchaseID
WHERE StaffEmail LIKE '%@yahoo.com' AND StaffGender ='Female'
GROUP BY ms.StaffID,StaffName,StaffEmail
