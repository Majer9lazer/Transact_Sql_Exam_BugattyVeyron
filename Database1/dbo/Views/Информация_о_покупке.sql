CREATE VIEW [dbo].[Информация_о_покупке]
AS
SELECT        dbo.Автомобили.CarName, dbo.Автомобили.CarHorsePower, dbo.Автомобили.CarEngineSize, dbo.Автомобили.CarNumberOfСylinders, dbo.Автомобили.CarLentgh, dbo.Автомобили.CarWidth, 
                         dbo.Автомобили.CarDateOfRelease, dbo.Автомобили.CarChargeOfFuel, dbo.Автомобили.CarFuelCharacteristics, dbo.Шины.TireTypeName, dbo.Должности.StaffPositionName, dbo.Должности.BonusForPosition, 
                         dbo.Цвета.ColorName, dbo.Корпорации.CorporationName, dbo.Корпорации.CountryId, dbo.Корпорации.Address, dbo.Страны.CountryName, dbo.Продажи.CorporationId, dbo.Продажи.DateOfSelling, dbo.Продажи.Price, 
                         dbo.Покупатели.BuyerName, dbo.Покупатели.BuyerLastName, dbo.Покупатели.BuyerPassport, dbo.Персонал.StaffName, dbo.Персонал.StaffNumber, dbo.Персонал.StaffSalary, dbo.Оборудование.EquipmentName, 
                         dbo.Отделы.DepartmentName
FROM            dbo.Автомобили INNER JOIN
                         dbo.Шины ON dbo.Автомобили.TypeOfTiresId = dbo.Шины.TireId INNER JOIN
                         dbo.Цвета ON dbo.Автомобили.ColorId = dbo.Цвета.ColorId INNER JOIN
                         dbo.Страны ON dbo.Автомобили.CountryId = dbo.Страны.CountryId INNER JOIN
                         dbo.Продажи ON dbo.Автомобили.CarId = dbo.Продажи.CarId AND dbo.Страны.CountryId = dbo.Продажи.CountryId INNER JOIN
                         dbo.Покупатели ON dbo.Продажи.ByerId = dbo.Покупатели.BuyerId INNER JOIN
                         dbo.Корпорации ON dbo.Автомобили.CorporationId = dbo.Корпорации.CorporationId AND dbo.Страны.CountryId = dbo.Корпорации.CountryId AND dbo.Продажи.CorporationId = dbo.Корпорации.CorporationId INNER JOIN
                         dbo.Персонал ON dbo.Продажи.StaffId = dbo.Персонал.StaffId INNER JOIN
                         dbo.Должности ON dbo.Персонал.StaffPositionId = dbo.Должности.StaffPositionId INNER JOIN
                         dbo.Оборудование ON dbo.Персонал.EquipmentId = dbo.Оборудование.EquipmentId INNER JOIN
                         dbo.Отделы ON dbo.Оборудование.DepartmentId = dbo.Отделы.DepartmentId
GROUP BY dbo.Автомобили.CarName, dbo.Автомобили.CarHorsePower, dbo.Автомобили.CarEngineSize, dbo.Автомобили.CarNumberOfСylinders, dbo.Автомобили.CarLentgh, dbo.Автомобили.CarWidth, 
                         dbo.Автомобили.CarDateOfRelease, dbo.Автомобили.CarChargeOfFuel, dbo.Автомобили.CarFuelCharacteristics, dbo.Шины.TireTypeName, dbo.Должности.StaffPositionName, dbo.Должности.BonusForPosition, 
                         dbo.Цвета.ColorName, dbo.Корпорации.CorporationName, dbo.Корпорации.CountryId, dbo.Корпорации.Address, dbo.Страны.CountryName, dbo.Продажи.CorporationId, dbo.Продажи.DateOfSelling, dbo.Продажи.Price, 
                         dbo.Покупатели.BuyerName, dbo.Покупатели.BuyerLastName, dbo.Покупатели.BuyerPassport, dbo.Персонал.StaffName, dbo.Персонал.StaffNumber, dbo.Персонал.StaffSalary, dbo.Оборудование.EquipmentName, 
                         dbo.Отделы.DepartmentName

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Автомобили"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 237
               Right = 286
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "Шины"
            Begin Extent = 
               Top = 6
               Left = 324
               Bottom = 102
               Right = 494
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Цвета"
            Begin Extent = 
               Top = 6
               Left = 532
               Bottom = 102
               Right = 702
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Страны"
            Begin Extent = 
               Top = 6
               Left = 740
               Bottom = 102
               Right = 910
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Продажи"
            Begin Extent = 
               Top = 6
               Left = 948
               Bottom = 136
               Right = 1118
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "Покупатели"
            Begin Extent = 
               Top = 6
               Left = 1156
               Bottom = 136
               Right = 1328
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Должности"
            Begin Extent = 
               Top = 102
               Left = 324
               Bottom = 215
               Right = 512
            End
            DisplayFlags = 280
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Информация_о_покупке'


GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'            TopColumn = 0
         End
         Begin Table = "Корпорации"
            Begin Extent = 
               Top = 102
               Left = 550
               Bottom = 232
               Right = 735
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Персонал"
            Begin Extent = 
               Top = 102
               Left = 773
               Bottom = 232
               Right = 998
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Оборудование"
            Begin Extent = 
               Top = 138
               Left = 1036
               Bottom = 251
               Right = 1215
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Отделы"
            Begin Extent = 
               Top = 216
               Left = 324
               Bottom = 312
               Right = 508
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Информация_о_покупке'


GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Информация_о_покупке'

