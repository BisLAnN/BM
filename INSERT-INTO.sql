INSERT INTO [Role] (RoleName)
VALUES 
('�������������'),
('��������'),
('������')

INSERT INTO [User] (FirstName, LastName, MiddleName, UserLogin, UserPassword, UserRoleID)

VALUES 
('������', '�����', '����������', 'klh7pi4rcbtz@gmail.com', '2L6KZG', 1),
('��������','������','  ���������',',gn0354mbiork@outlook.com','uzWC67',1),
('�������','����','�������������','1o4l05k8dwpv@yahoo.com','8ntwUp',1),
('��������  ','  ������  ','  ��������  ','  hsqixl2vebuz@mail.com  ','  YOyhfR  ',2  ),
('  ���������  ','  ������  ','  ��������  ','  towkse0hf26b@outlook.com  ','  RSbvHv  ',  2),
(  '�����'  ,'  ����  ','  ����������  ','  khx0ncdwz4uj@gmail.com  ','  rwVDh9  ',  2),
(  '���������  ','  ��������  ','  Ը�������  ','  01zji3wfuq7h@outlook.com  ','  LdNyos'  ,  3),
(  '����������'  ,'  ��������  ','  ���������'  ,'  am65k18q7bwp@mail.com  ','  gynQMT  ',3  ),
(  '���������'  ,'  ������  ','  �������������'  ,'  wt9q8i6ypx47@outlook.com'  ,'  AtnDjr  ',  3),
(  '��������  ','  ������  ','  ��������  ','  4o72gufv3xlz@tutanota.com  ','  JlFRCZ  ',  3)

INSERT INTO Client (UserID)
VALUES
(7),
(8),
(9),
(10)


INSERT INTO City (CityName)
VALUES ('�. ���������')

INSERT INTO PickupPoint (MailIndex, CityID, Street, HousNumber)
VALUES
('  344288  ',  1  ,'   ��. ������  ','  1  '  ),
('  614164  ',  1  ,'    ��. �������  ','  30  '  ),
('  394242  ',1  ,'   ��. ����������������  ','  43  '  ),
('  660540  ',  1  ,'   ��. ���������  ','  25  '  ),
('  125837  ',  1  ,'   ��. ���������  ','  40  '  ),
('  125703  ',  1  ,'   ��. ������������  ','  49  '  ),
('  625283  ',1,'   ��. ������  ','  46  '  ),
('  614611  ',1  ,'   ��. ����������  ','  50  '  ),
('  454311  ',  1  ,'   ��. �����  ','  19  '  ),
('  660007  ',  1  ,'   ��. �����������  ','  19  '  ),
('  603036  ',  1  ,'   ��. �������  ','  4  '  ),
('  450983  ',  1  ,'   ��. �������������  ','  26  '  ),
('  394782  ',  1  ,'   ��. ������  ','  3  '  ),
('  603002  ',  1  ,'   ��. ������������  ','  28  '  ),
('  450558  ',  1  ,'   ��. ����������  ','  30  '  ),
('  394060  ',  1  ,'   ��. ������  ','  43  '  ),
('  410661  ',1  ,'  ��. ��������  ','  50  '  ),
('  625590  ',  1  ,'   ��. ����������������  ','  20  '  ),
('  625683  ',  1  ,'   ��. 8 �����  ','  1  '  ),
('  400562  ',  1  ,'   ��. �������  ','  32  '  ),
('  614510  ',  1  ,'   ��. �����������  ','  47  '  ),
('  410542  ',  1  ,'   ��. �������  ','  46  '  ),
('  620839  ',  1  ,'   ��. ���������  ','  8  '  ),
('  443890  ',  1  ,'   ��. ����������������  ','  1  '  ),
('  603379  ',1,'  ��. ����������  ','  46  '  ),
('  603721  ',  1  ,'   ��. ������  ','  41  '  ),
('  410172  ',  1  ,'   ��. ��������  ','  13  '  ),
('  420151  ',  1  ,'   ��. ��������  ','  32  '  ),
('  125061  ',  1  ,'   ��. ���������  ','  8  '  ),
('  630370  ',  1  ,'   ��. ���������  ','  24  '  ),
('  614753  ',  1  ,'   ��. �������  ','  35  '  ),
('  426030  ',  1  ,'   ��. �����������  ','  44  '  ),
('  450375  ',  1  ,'   ��. �������  ','  44  '  ),
('  625560  ',  1  ,'   ��. ���������  ','  12  '  ),
('  630201  ',  1,'   ��. �������������  ','  17  '  ),
('  190949  ',  1  ,'   ��. ��������  ','  26  '  )

INSERT INTO OrderStatus ([Value])
VALUES
('��������'),
('�����')

INSERT INTO [Order] (OrderDate, [Date], ClientID, PickupPointID, Code, OrderStatusID)
VALUES
('  15.05.2022  ','  21.05.2022  '  ,NULL,  18  ,'  701  ',  1  ),
('  16.05.2022  ','  22.05.2022  '  ,NULL,  14  ,'  702  ',  2  ),
('  17.05.2022  ','  23.05.2022  ',  3  ,  22  ,'  703  ',  1  ),
('  17.05.2022  ','  23.05.2022  '  ,NULL,  22  ,'  704  ',  2  ),
('  19.05.2022  ','  25.05.2022  ',  2  ,  26  ,'  705  ',  1  ),
('  20.05.2022  ','  26.05.2022  '  ,NULL,  28  ,'  706  ',  2  ),
('  22.05.2022  ','  28.05.2022  ',  4  ,  28  ,'  707  ',  1  ),
('  22.05.2022  ','  28.05.2022  '  ,NULL,  32  ,'  708  ',  2  ),
('  23.05.2022  ','  29.05.2022  '  ,NULL,  36  ,'  709  ',  1  ),
('  24.05.2022  ','  30.05.2022  ',  1  ,  36  ,'  710  ',  1  )

INSERT INTO Category(CategoryName)
VALUES
('���������������� ���������'),
('�������� � �������� ���������'),
('����� ������������ ����� � �������������'),
('������ ����������'),
('������ ����, ����, ������')

INSERT INTO Unit ([Value])
VALUES 
('��.')

INSERT INTO Manufacturer(ManufacturerName)
VALUES
('  ManufacturerName  '),
('  �500  '),
('  ���������  '),
('  Knauf  '),
('  MixMaster  '),
('  ���  '),
('  �����  '),
('  Vinylon  '),
('  ���������� �����   '),
('  Weber  '),
('  Hesler  '),
('  Armero  '),
('  Wenzo Roma  '),
('  KILIMGRIN  '),
('  �����  '),
('  RUIZ  '),
('  Husqvarna  '),
('  Delta  ')

INSERT INTO Supplier (SupplierName)
VALUES
('  ManufacturerName  '),
('  �500  '),
('  ���������  '),
('  Knauf  '),
('  MixMaster  '),
('  ���  '),
('  �����  '),
('  Vinylon  '),
('  ���������� �����   '),
('  Weber  '),
('  Hesler  '),
('  Armero  '),
('  Wenzo Roma  '),
('  KILIMGRIN  '),
('  �����  '),
('  RUIZ  '),
('  Husqvarna  '),
('  Delta  ')

INSERT INTO Product (Articul, [Name], UnitID, Cost, MaxSaleSize, ManufacturerID, SupplierID, CategoryID, CurrentDiscount, AmountInStok, [Description])
VALUES
('  PMEZMH  ','  ������  ',  1  ,'  440  ','  10  ',  1  ,  1  ,  1  ,'  8  ','  34  ','  ������ ���������� �500 �0 ��� I 42,5 50 ��  '),
('  BPV4MM  ','  ������ �����������  ',  1  ,'  8  ','  13  ',  2  ,  2  ,  1  ,'  8  ','  2  ','  ������ ����������� �������������� ��������� 60 �� 3 � ����� 1,5 �, ���.�  '),
('  JVL42J  ','  ������ �����������  ',  1  ,'  13  ','  1  ',  2  ,  2  ,  1  ,'  4  ','  34  ','  ������ ����������� �������������� ��������� 100 �� 3 � ����� 1,5 �, ���.�  '),
('  F895RB  ','  ����� ������������  ',  1  ,'  102  ','  17  ',  3  ,  3  ,  1  ,'  6  ','  7  ','  ����� ������������ 50 ��  '),
('  3XBOTN  ','  �������� �������  ',  1  ,'  110  ','  14  ',  4  ,  4  ,  1  ,'  5  ','  21  ','  �������� ������� 10-20 �� 0,05 ���.�  '),
('  3L7RCZ  ','  ���������  ',  1  ,'  7400  ','  7  ',  5  ,  5  ,  2  ,'  2  ','  20  ','  ��������� ��� 100�250�625 �� D400  '),
('  S72AM3  ','  ������������� �����   ',  1  ,'  500  ','  9  ',  6  ,  6  ,  2  ,'  5  ','  35  ','  ������������� ����� ����� ����� 667�500�80 �� ����������  '),
('  2G3280  ','  ���� ��������  ',  1  ,'  795  ','  16  ',  7  ,  7  ,  2  ,'  9  ','  20  ','  ���� �������� Vinylon 3050 �� ����-�������  '),
('  MIO8YV  ','  ������  ',  1  ,'  30  ','  9  ',  6  ,  6  ,  2  ,'  9  ','  31  ','  ������ ������� �������� ���������� �150 250�120�65 �� 1NF  '),
('  UER2QD  ','  ����� ��� ������������� �����  ',  1  ,'  25  ','  20  ',  3  ,  3  ,  2  ,'  8  ','  27  ','  ����� ��� ������������� ����� Knauf �1 120�100 ��  '),
('  ZR70B4  ','  ������  ',  1  ,'  16  ','  3  ',  8  ,  8  ,  2  ,'  3  ','  26  ','  ������ ������� ���������� ���������� ����� ���������� �200 250�120�65 �� 1NF  '),
('  LPDDM4  ','  ���������� ��������  ',  1  ,'  500  ','  17  ',  3  ,  3  ,  3  ,'  6  ','  38  ','  ���������� �������� Knauf ������� 30 ��  '),
('  LQ48MW  ','  ���������� ��������  ',  1  ,'  462  ','  16  ',  9  ,  9  ,  3  ,'  6  ','  33  ','  ���������� �������� Knauf ��-75 �������� 30 ��  '),
('  O43COU  ','  ���������  ',  1  ,'  750  ','  9  ',  6  ,  6  ,  3  ,'  1  ','  16  ','  ��������� ���������� Weber.vetonit LR + ��� ����� ��������� ����� 20 ��  '),
('  M26EXW  ','  ���� ��� ������, ������������� � �����  ',  1  ,'  340  ','  8  ',  3  ,  3  ,  3  ,'  8  ','  2  ','  ���� ��� ������, ������������� � ����� ����� ��������� ����� (����� �1) 25 ��  '),
('  K0YACK  ','  ����� ��������-��������  ',  1  ,'  160  ','  9  ',  4  ,  4  ,  3  ,'  8  ','  19  ','  ����� ��������-�������� (���) 300 �� �� MixMaster ��������� 25 ��  '),
('  ASPXSG  ','  ���������  ',  1  ,'  711  ','  17  ',  9  ,  9  ,  3  ,'  10  ','  20  ','  ��������� (�������� ���) �������� Weber.vetonit 4100 ������������������� ������������� 20 ��  '),
('  ZKQ5FF  ','  ������ ��� ����   ',  1  ,'  65  ','  13  ',  10  ,  10  ,  4  ,'  6  ','  6  ','  ������ ��� ���� Hesler 18 �� ������ (10 ��.)  '),
('  4WZEOT  ','  ������ ��� ����   ',  1  ,'  110  ','  2  ',  11  ,  11  ,  4  ,'  6  ','  17  ','  ������ ��� ���� Armero 18 �� ������ (10 ��.)  '),
('  4JR1HN  ','  �������  ',  1  ,'  26  ','  3  ',  10  ,  10  ,  4  ,'  6  ','  7  ','  ������� �������� 100 �� � ����������� ������  '),
('  Z3XFSP  ','  ��� ������������   ',  1  ,'  63  ','  19  ',  10  ,  10  ,  4  ,'  8  ','  5  ','  ��� ������������ Hesler 18 �� � ���������� ������� ����������� ������  '),
('  I6MH89  ','  �����  ',  1  ,'  326  ','  12  ',  12  ,  12  ,  4  ,'  6  ','  3  ','  ����� Wenzo Roma ��������� 250 �� ���� 18 �� ��� ������ ������� � ������������ �� ������ ������ � ���������  '),
('  83M5ME  ','  �����  ',  1  ,'  122  ','  16  ',  11  ,  11  ,  4  ,'  9  ','  26  ','  ����� ������� ��������� ������ 100�12 �� ��� ������ � ������������ �� ������ ������  '),
('  61PGH3  ','  ���� ��������  ',  1  ,'  184  ','  2  ',  13  ,  13  ,  5  ,'  6  ','  25  ','  ���� �������� Delta Plus KILIMANDJARO (KILIMGRIN) �������� � ����������� �������  '),
('  GN6ICZ  ','  ����� ��������   ',  1  ,'  154  ','  10  ',  14  ,  14  ,  5  ,'  6  ','  8  ','  ����� �������� ����� (���001�) ���������  '),
('  Z3LO0U  ','  ���� ��������   ',  1  ,'  228  ','  19  ',  15  ,  15  ,  5  ,'  9  ','  11  ','  ���� �������� Delta Plus RUIZ (RUIZ1VI) �������� � ����������� �������  '),
('  QHNOKR  ','  ����� ��������  ',  1  ,'  251  ','  6  ',  14  ,  14  ,  5  ,'  2  ','  22  ','  ����� �������� ����� (���001) ������������ � ������������  '),
('  EQ6RKO  ','  ����������  ',  1  ,'  36  ','  17  ',  16  ,  16  ,  5  ,'  3  ','  22  ','  ���������� ��� ����� �����������  '),
('  81F1WG  ','  ����� ��������  ',  1  ,'  1500  ','  1  ',  17  ,  17  ,  5  ,'  2  ','  13  ','  ����� �������� Delta Plus BASEBALL DIAMOND V UP (DIAM5UPBCFLBS) �����  '),
('  0YGHZ7  ','  ���� ��������   ',  1  ,'  700  ','  9  ',  16  ,  16  ,  5  ,'  9  ','  36  ','  ���� �������� Husqvarna Clear (5449638-01) �������� � ����������� �������  ')

INSERT INTO OrderContent (OredrID, ProductID, Amount)
VALUES
(  1  ,  1  ,  2  ),
(  1  ,  3  ,  15  ),
(  2  ,  4  ,  13  ),
(  2  ,  7  ,  40  ),
(  3  ,  9  ,  100  ),
(  3  ,  11  ,  20  ),
(  4  ,  13  ,  50  ),
(  4  ,  15  ,  40  ),
(  5  ,  18  ,  10  ),
(  5  ,  26  ,  1  ),
(  6  ,  1  ,  2  ),
(  6  ,  3  ,  15  ),
(  7  ,  5  ,  17  ),
(  7  ,  8  ,  100  ),
(  8  ,  10  ,  100  ),
(  8  ,  12  ,  20  ),
(  9  ,  14  ,  50  ),
(  9  ,  16  ,  40  ),
(  10  ,  19  ,  10  ),
(  10  ,  27  ,  1  )
