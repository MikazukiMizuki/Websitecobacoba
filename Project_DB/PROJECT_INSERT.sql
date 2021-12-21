USE cArDorm
--Staff
INSERT INTO MsStaff VALUES
('ST001','Alexis George','Female','alexis_george@gmail.com','084385814734','Olabama Str. 57',5400000),
('ST002','Erica Harrison','Female','erica_harrison@yahoo.com','085898973018','Mataderos 23	',5500000),
('ST003','Aliza Byrne','Female','aliza_byrne@yahoo.com','087838936098','12 Hanover Sq.',9500000),
('ST004','Preston Jordan','Male','preston_jordan@yahoo.com','089807364902','Berguvsvägen 8',8900000),
('ST005','Betsy Smith','Female','betsy_smith@gmail.com','088984811657','Forsterstr. 57',9200000),
('ST006','Nicole Kennedy','Male','nicole_kennedy@gmail.com','081643851314','Berguvsvägen 7',9800000),
('ST007','Richard George','Male','richard_george@yahoo.com','083956989695','	35 King George',6700000),
('ST008','Aleena Rose','Female','aleena_rose@gmail.com','080717372692','Walserweg 21.',7800000),
('ST009','Aliyah Rogers','Female','aliyah_rogers@gmail.com','085214009988','Hauptstr. 29',5700000),
('ST010','Betty Jean','Female','betty_jean@yahoo.com','081324544129','Cerrito 333',9500000)
GO
--Car Brand
INSERT INTO MsBrand VALUES
('CB001','Tayato'),
('CB002','Chovrelot'),
('CB003','Dihatsu'),
('CB004','Vilvi'),
('CB005','Nassin'),
('CB006','Masdah'),
('CB007','Mutsibushu'),
('CB008','Kai'),
('CB009','Uadi'),
('CB010','Luxes')
GO
--Car
INSERT INTO MsCar VALUES
('CA001','CB001','Temper',250000000,100),
('CA002','CB004','Origin',900000000,52),
('CA003','CB002','Fragment',1710000000,23),
('CA004','CB010','Prestige',290000000,64),
('CA005','CB003','Millenium',400000000,49),
('CA006','CB008','Resolve',560000000,81),
('CA007','CB004','Albatros',110000000,25),
('CA008','CB002','Dominion',670000000,86),
('CA009','CB007','Tempest',490000000,63),
('CA010','CB009','Catalyst',930000000,77),
('CA011','CB006','Catapult',220000000,84),
('CA012','CB005','Anaconda',440000000,97)
GO
--Customer
INSERT INTO MsCustomer VALUES
('CU001','Erica Jackson','Female','erica_jackson@gmail.com','080665267657','Kirchgasse 6	'),
('CU002','Sara Hunt','Female','sara_hunt@yahoo.com','087978934352','43 rue St. Laurent'),
('CU003','Ariana Hall','Female','ariana_hall@gmail.com','080114755683','Heerstr. 22'),
('CU004','Arthur Carter','Male','arthur_carter@yahoo.com','089047432939','Magazinweg 7'),
('CU005','Everly Roberts','Female','everly_roberts@gmail.com','089255161231','1900 Oak St.'),
('CU006','Aron Ward','Male','aron_ward@yahoo.com','080665267657','Maubelstr. 90'),
('CU007','Ben Promise','Male','ben_promise@gmail.com','082115257432','8 Johnstown Road'),
('CU008','Jack Bulb','Male','jack_bulb@yahoo.com','080875261342','Akergatan 14'),
('CU009','Evelyn Pottery','Female','evelyn_pottery@yahoo.com','080588154422','Berliner Platz 43'),
('CU010','Jessica Sampson','Female','jessica_sampson@gmail.com','081234567819','Åkergatan 24')
GO
--Vendor
INSERT INTO MsVendor VALUES
('VE001','PT Nimbletainment','nimbletainment@yahoo.com','085014871318','Av. Brasil, 442'),
('VE002','PT Tulipphone','tulipphone@yahoo.com','080975078039','Taucherstraße 10'),
('VE003','PT Flower','flower@gmail.com','086318666547','Estrada da saúde n. 58	'),
('VE004','PT Lightning','lightning@yahoo.com','082184428014','Geislweg 14	'),
('VE005','PT Berry','berry@yahoo.com','085697309700','2743 Bering St.	'),
('VE006','PT Over','over@gmail.com','085112542598','South House 300 Queensbridge'),
('VE007','PT Triad','trinity@gmail.com','082340116216','89 Chiaroscuro Rd.'),
('VE008','PT Fortissimo','fortissimo@gmail.com','087221435420','12 Orchestra Terrace'),
('VE009','PT Gold Axe','gold_axe@yahoo.com','081227654321','Berliner Platz 43'),
('VE010','PT Silver Spoon','silver_spoon@yahoo.com','085993431235','Via Monte Bianco 34')
GO
--Transaction
INSERT INTO [Transaction] VALUES 
('TR001','CU002','ST010','2019-01-22'),
('TR002','CU004','ST008','2019-02-02'),
('TR003','CU003','ST007','2019-04-17'),
('TR004','CU005','ST006','2019-05-26'),
('TR005','CU002','ST004','2019-06-07'),
('TR006','CU001','ST001','2019-06-10'),
('TR007','CU009','ST001','2019-07-02'),
('TR008','CU010','ST003','2019-07-19'),
('TR009','CU006','ST002','2019-07-23'),
('TR010','CU009','ST004','2019-08-01'),
('TR011','CU008','ST010','2019-09-14'),
('TR012','CU005','ST005','2019-10-05'),
('TR013','CU007','ST010','2019-11-17'),
('TR014','CU003','ST009','2019-12-18'),
('TR015','CU004','ST002','2020-01-27'),
('TR016','CU001','ST001','2020-02-15'),
('TR017','CU006','ST004','2020-03-16')
GO
--Purchase
INSERT INTO Purchase VALUES
('PU001','VE009','ST002','2019-01-22'),
('PU002','VE001','ST001','2019-01-27'),
('PU003','VE010','ST003','2019-02-01'),
('PU004','VE003','ST006','2019-02-10'),
('PU005','VE004','ST008','2019-03-24'),
('PU006','VE006','ST009','2019-04-18'),
('PU007','VE008','ST010','2019-04-26'),
('PU008','VE007','ST007','2019-05-04'),
('PU009','VE002','ST007','2019-06-09'),
('PU010','VE005','ST005','2019-06-12'),
('PU011','VE002','ST004','2019-07-14'),
('PU012','VE004','ST006','2019-08-19'),
('PU013','VE003','ST008','2019-09-11'),
('PU014','VE007','ST010','2019-10-21'),
('PU015','VE009','ST009','2019-11-05'),
('PU016','VE004','ST001','2019-12-13'),
('PU017','VE001','ST002','2020-01-16'),
('PU018','VE010','ST004','2019-02-15')
GO
--TransactionDetail
INSERT INTO TransactionDetail VALUES
('TR001','CA001',2),
('TR001','CA002',1),
('TR001','CA011',1),
('TR002','CA004',4),
('TR003','CA004',1),
('TR003','CA005',1),
('TR003','CA012',2),
('TR004','CA007',2),
('TR005','CA008',1),
('TR005','CA012',2),
('TR006','CA003',1),
('TR006','CA005',3),
('TR007','CA006',4),
('TR007','CA009',1),
('TR007','CA010',2),
('TR008','CA003',1),
('TR008','CA006',2),
('TR009','CA007',1),
('TR010','CA002',2),
('TR011','CA003',3),
('TR012','CA008',2),
('TR012','CA012',2),
('TR013','CA004',1),
('TR013','CA007',3),
('TR014','CA011',2),
('TR014','CA012',1),
('TR015','CA004',1),
('TR015','CA006',1),
('TR015','CA009',1),
('TR016','CA005',2),
('TR016','CA008',5),
('TR016','CA011',1),
('TR017','CA001',1),
('TR017','CA002',1),
('TR017','CA004',1)
GO
--PurchaseDetail
INSERT INTO PurchaseDetail VALUES
('PU001','CA003',2),
('PU001','CA004',2),
('PU002','CA012',4),
('PU003','CA001',1),
('PU003','CA007',3),
('PU003','CA009',2),
('PU004','CA008',3),
('PU004','CA002',2),
('PU005','CA008',1),
('PU005','CA012',1),
('PU006','CA011',4),
('PU007','CA005',2),
('PU007','CA008',3),
('PU008','CA006',2),
('PU008','CA009',5),
('PU009','CA003',2),
('PU009','CA010',2),
('PU009','CA011',1),
('PU010','CA001',1),
('PU010','CA002',2),
('PU010','CA003',3),
('PU011','CA005',2),
('PU011','CA008',3),
('PU011','CA009',2),
('PU011','CA011',1),
('PU012','CA007',2),
('PU013','CA004',2),
('PU013','CA006',3),
('PU014','CA005',2),
('PU014','CA009',4),
('PU015','CA010',1),
('PU016','CA002',1),
('PU016','CA003',4),
('PU017','CA004',2),
('PU017','CA005',3),
('PU018','CA007',1)

--SELECT * FROM MsCustomer
--SELECT * FROM MsBrand
--SELECT * FROM MsCar
--SELECT * FROM MsStaff
--SELECT * FROM [Transaction]
--SELECT * FROM TransactionDetail
--SELECT * FROM Purchase
--SELECT * FROM PurchaseDetail

