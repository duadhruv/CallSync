USE [HexCallRegister]
GO

/****** Object:  Table [dbo].[ListOfClients]    Script Date: 10/01/2019 01:52:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ListOfClients]') AND type in (N'U'))
DROP TABLE [dbo].[ListOfClients]
GO

/****** Object:  Table [dbo].[CallLogs]    Script Date: 10/01/2019 01:52:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CallLogs]') AND type in (N'U'))
DROP TABLE [dbo].[CallLogs]
GO

/****** Object:  Table [dbo].[HexCompanyContacts]    Script Date: 10/01/2019 01:52:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HexCompanyContacts]') AND type in (N'U'))
DROP TABLE [dbo].[HexCompanyContacts]
GO

/****** Object:  Table [dbo].[HexContacts]    Script Date: 10/01/2019 01:52:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HexContacts]') AND type in (N'U'))
DROP TABLE [dbo].[HexContacts]
GO

/****** Object:  Table [dbo].[ConnectionLog]    Script Date: 10/01/2019 01:52:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConnectionLog]') AND type in (N'U'))
DROP TABLE [dbo].[ConnectionLog]
GO

/****** Object:  Table [dbo].[OldCallLogs]    Script Date: 10/01/2019 01:52:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OldCallLogs]') AND type in (N'U'))
DROP TABLE [dbo].[OldCallLogs]
GO

/****** Object:  Table [dbo].[Hex_Emp_Number]    Script Date: 10/01/2019 01:52:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hex_Emp_Number]') AND type in (N'U'))
DROP TABLE [dbo].[Hex_Emp_Number]
GO

USE [HexCallRegister]
GO

/****** Object:  Table [dbo].[ListOfClients]    Script Date: 10/01/2019 01:52:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ListOfClients](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_ListOfClients] PRIMARY KEY CLUSTERED 
(
	[CompanyName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [HexCallRegister]
GO

/****** Object:  Table [dbo].[CallLogs]    Script Date: 10/01/2019 01:52:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CallLogs](
	[CallID] [nvarchar](50) NOT NULL,
	[LogID] [int] NOT NULL,
	[HexPhNo] [nvarchar](50) NOT NULL,
	[CallerPhNo] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[TimeDateID] [nvarchar](50) NOT NULL,
	[Duration] [int] NOT NULL,
	[CallerPhName] [nvarchar](50) NOT NULL,
	[RecordingFound] [nvarchar](50) NOT NULL,
	[ServerLogTime] [datetime] NULL,
	[AppVersion] [nvarchar](50) NULL,
	[Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_HexCallLogs] PRIMARY KEY CLUSTERED 
(
	[CallID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

USE [HexCallRegister]
GO

/****** Object:  Table [dbo].[HexCompanyContacts]    Script Date: 10/01/2019 01:52:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[HexCompanyContacts](
	[PhName] [nvarchar](85) NOT NULL,
	[CompanyName] [nvarchar](85) NOT NULL
) ON [PRIMARY]

GO

USE [HexCallRegister]
GO

/****** Object:  Table [dbo].[HexContacts]    Script Date: 10/01/2019 01:52:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[HexContacts](
	[PhName] [nvarchar](50) NOT NULL,
	[CompanyName] [nvarchar](50) NULL
) ON [PRIMARY]

GO

USE [HexCallRegister]
GO

/****** Object:  Table [dbo].[ConnectionLog]    Script Date: 10/01/2019 01:52:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ConnectionLog](
	[HexPhNo] [nvarchar](50) NOT NULL,
	[MacID] [nvarchar](50) NULL,
	[LastConnected] [datetime] NULL,
	[Version] [nvarchar](50) NULL
) ON [PRIMARY]

GO

USE [HexCallRegister]
GO

/****** Object:  Table [dbo].[OldCallLogs]    Script Date: 10/01/2019 01:52:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OldCallLogs](
	[CallID] [nvarchar](50) NOT NULL,
	[LogID] [int] NOT NULL,
	[HexPhNo] [nvarchar](50) NOT NULL,
	[CallerPhNo] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[TimeDateID] [nvarchar](50) NOT NULL,
	[Duration] [int] NOT NULL,
	[CallerPhName] [nvarchar](50) NOT NULL,
	[RecordingFound] [nvarchar](50) NOT NULL,
	[ServerLogTime] [datetime] NULL,
	[AppVersion] [nvarchar](50) NULL
) ON [PRIMARY]

GO

USE [HexCallRegister]
GO

/****** Object:  Table [dbo].[Hex_Emp_Number]    Script Date: 10/01/2019 01:52:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Hex_Emp_Number](
	[HexEmpID] [int] IDENTITY(1,1) NOT NULL,
	[HexPhNo] [nvarchar](50) NULL,
	[HexEmpName] [nvarchar](50) NULL,
	[HexEmpColour] [nvarchar](50) NULL,
	[Admin] [bit] NULL,
 CONSTRAINT [PK_Hex_Emp_Number] PRIMARY KEY CLUSTERED 
(
	[HexEmpID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


-----------------------------Views


USE [HexCallRegister]
GO

/****** Object:  View [dbo].[View_Calllogs]    Script Date: 10/01/2019 01:52:27 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_Calllogs]'))
DROP VIEW [dbo].[View_Calllogs]
GO

/****** Object:  View [dbo].[CallLogs_View_TotalStats]    Script Date: 10/01/2019 01:52:27 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[CallLogs_View_TotalStats]'))
DROP VIEW [dbo].[CallLogs_View_TotalStats]
GO

USE [HexCallRegister]
GO

/****** Object:  View [dbo].[View_Calllogs]    Script Date: 10/01/2019 01:52:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_Calllogs]
AS
SELECT     dbo.CallLogs.CallID, dbo.CallLogs.LogID, dbo.CallLogs.HexPhNo, dbo.CallLogs.CallerPhNo, dbo.CallLogs.Type, dbo.CallLogs.TimeDateID, dbo.CallLogs.Duration, dbo.CallLogs.CallerPhName, 
                      dbo.CallLogs.RecordingFound, dbo.CallLogs.ServerLogTime, dbo.CallLogs.AppVersion, dbo.CallLogs.Remarks, dbo.HexCompanyContacts.CompanyName, 
                      dbo.Hex_Emp_Number.HexEmpName
FROM         dbo.CallLogs LEFT OUTER JOIN
                      dbo.Hex_Emp_Number ON dbo.CallLogs.HexPhNo = dbo.Hex_Emp_Number.HexPhNo LEFT OUTER JOIN
                      dbo.HexCompanyContacts ON dbo.CallLogs.CallerPhName = dbo.HexCompanyContacts.PhName

GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[10] 2[4] 3) )"
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
         Begin Table = "CallLogs"
            Begin Extent = 
               Top = 6
               Left = 96
               Bottom = 225
               Right = 305
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "HexCompanyContacts"
            Begin Extent = 
               Top = 0
               Left = 676
               Bottom = 123
               Right = 823
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Hex_Emp_Number"
            Begin Extent = 
               Top = 101
               Left = 518
               Bottom = 257
               Right = 678
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
      Begin ColumnWidths = 15
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Calllogs'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Calllogs'
GO

/****** Object:  View [dbo].[CallLogs_View_TotalStats]    Script Date: 10/01/2019 01:52:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[CallLogs_View_TotalStats]
AS
SELECT     TOP (100) PERCENT SUBSTRING(TimeDateID, 1, 6) AS dateId, CallerPhName, HexPhNo,
                          (SELECT     HexEmpName
                            FROM          dbo.Hex_Emp_Number
                            WHERE      (HexPhNo = dbo.CallLogs.HexPhNo)) AS EmpName,
                          (SELECT     HexEmpColour
                            FROM          dbo.Hex_Emp_Number AS Hex_Emp_Number_1
                            WHERE      (HexPhNo = dbo.CallLogs.HexPhNo)) AS EmpColour, DATENAME(weekday, SUBSTRING(TimeDateID, 1, 6)) AS Day, COUNT(*) AS calls, CAST(ROUND(CAST(SUM(Duration) 
                      AS numeric(36, 2)) / CAST(60 AS numeric(36, 2)), 2) AS numeric(36, 2)) AS totDur
FROM         dbo.CallLogs
GROUP BY SUBSTRING(TimeDateID, 1, 6), HexPhNo, CallerPhName
ORDER BY totdur DESC

GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[17] 2[23] 3) )"
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
         Begin Table = "CallLogs"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 254
               Right = 462
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CallLogs_View_TotalStats'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CallLogs_View_TotalStats'
GO

--------------------------------Stored Procedures




USE [HexCallRegister]
GO

/****** Object:  StoredProcedure [dbo].[HexCallRegister_AddCompany]    Script Date: 10/01/2019 01:53:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HexCallRegister_AddCompany]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[HexCallRegister_AddCompany]
GO

/****** Object:  StoredProcedure [dbo].[HexCallRegister_UpdateCompanyName]    Script Date: 10/01/2019 01:53:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HexCallRegister_UpdateCompanyName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[HexCallRegister_UpdateCompanyName]
GO

/****** Object:  StoredProcedure [dbo].[HexCallRegister_CallLogsReport]    Script Date: 10/01/2019 01:53:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HexCallRegister_CallLogsReport]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[HexCallRegister_CallLogsReport]
GO

/****** Object:  StoredProcedure [dbo].[HexCallRegister_InsertContacts]    Script Date: 10/01/2019 01:53:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HexCallRegister_InsertContacts]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[HexCallRegister_InsertContacts]
GO

/****** Object:  StoredProcedure [dbo].[HexCallRegister_MaxDBLog]    Script Date: 10/01/2019 01:53:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HexCallRegister_MaxDBLog]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[HexCallRegister_MaxDBLog]
GO

/****** Object:  StoredProcedure [dbo].[HexCallRegister_CallerTop90]    Script Date: 10/01/2019 01:53:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HexCallRegister_CallerTop90]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[HexCallRegister_CallerTop90]
GO

/****** Object:  StoredProcedure [dbo].[HexCallRegister_CallerTop5]    Script Date: 10/01/2019 01:53:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HexCallRegister_CallerTop5]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[HexCallRegister_CallerTop5]
GO

/****** Object:  StoredProcedure [dbo].[HexCallRegister_RecFile]    Script Date: 10/01/2019 01:53:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HexCallRegister_RecFile]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[HexCallRegister_RecFile]
GO

/****** Object:  StoredProcedure [dbo].[HexCallRegister_LogCallDetails]    Script Date: 10/01/2019 01:53:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HexCallRegister_LogCallDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[HexCallRegister_LogCallDetails]
GO

USE [HexCallRegister]
GO

/****** Object:  StoredProcedure [dbo].[HexCallRegister_AddCompany]    Script Date: 10/01/2019 01:53:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[HexCallRegister_AddCompany] 
						@CompanyName Nvarchar(50)
						
AS

BEGIN
	IF EXISTS (select * from ListOfClients where CompanyName = @CompanyName)
		select '1' as Command
		--return
	ELSE
		Insert into ListOfClients(CompanyName) values (@CompanyName);
	Select '1' as Command
END



GO

/****** Object:  StoredProcedure [dbo].[HexCallRegister_UpdateCompanyName]    Script Date: 10/01/2019 01:53:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[HexCallRegister_UpdateCompanyName] 
						@ContactName Nvarchar(50),
						@CompanyName Nvarchar(50)
						
AS

BEGIN
	IF EXISTS (select * from HexCompanyContacts where PhName = @ContactName)
		update HexCompanyContacts set CompanyName = @CompanyName  where PhName = @ContactName
	ELSE
		Insert into HexCompanyContacts(CompanyName,PhName) values (@CompanyName,@ContactName);
	Select '1' as Command
END



GO

/****** Object:  StoredProcedure [dbo].[HexCallRegister_CallLogsReport]    Script Date: 10/01/2019 01:53:27 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER OFF
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[HexCallRegister_CallLogsReport] 
						@Duration int,
						@Type Nvarchar(50),
						@Time Numeric(18,0),
						@EmpName Nvarchar(50),
						@CompanyName nvarchar(50)
						
AS
--********************************************************************************************
--       Creation Date                      :      20.11.2018  01:11
--       Created By                         :      
--       Usage                                                                                
--                                                                                            
--                                                                                            
--                                                                                            
--********************************************************************************************


Declare @cn nvarchar(50)
set @cn = "%"+RTRIM(@companyname)+"%"
print(@cn)
if @CompanyName='Any Company'
	if @Type = 'Any Type'
		if @EmpName = 'Any Emp'
			Begin
			print '1'
			select * from View_Calllogs where Duration > @Duration and TimeDateID > @Time and hexphno<>'9310495656' order by TimeDateID desc
			End
		else
			Begin
			print '2'
			select * from View_Calllogs where Duration > @Duration and TimeDateID > @Time and hexphno<>'9310495656' and HexEmpName = @EmpName order by TimeDateID desc
			End
	else
		if @EmpName = 'Any Emp'
			Begin
			print '3'
			select * from View_Calllogs where Duration > @Duration and TimeDateID > @Time and[Type] = @Type and hexphno<>'9310495656' order by TimeDateID desc
			End
		else
			Begin
			print '4'
			select * from View_Calllogs where Duration > @Duration and TimeDateID > @Time and hexphno<>'9310495656' and HexEmpName = @EmpName order by TimeDateID desc
			End
		
else
	if @Type = 'Any Type'
		if @EmpName = 'Any Emp'
			Begin
			print '1'
			select * from View_Calllogs where Duration > @Duration and TimeDateID > @Time and hexphno<>'9310495656' and CompanyName like @cn order by TimeDateID desc
			End
		else
			Begin
			print '2'
			select * from View_Calllogs where Duration > @Duration and TimeDateID > @Time and hexphno<>'9310495656' and HexEmpName = @EmpName and CompanyName like @cn order by TimeDateID desc
			End
	else
		if @EmpName = 'Any Emp'
			Begin
			print '3'
			select * from View_Calllogs where Duration > @Duration and TimeDateID > @Time and[Type] = @Type and hexphno<>'9310495656' and CompanyName like @cn order by TimeDateID desc
			End
		else
			Begin
			print '4'
			select * from View_Calllogs where Duration > @Duration and TimeDateID > @Time and hexphno<>'9310495656' and HexEmpName = @EmpName and CompanyName like @cn order by TimeDateID desc
			End

GO

/****** Object:  StoredProcedure [dbo].[HexCallRegister_InsertContacts]    Script Date: 10/01/2019 01:53:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[HexCallRegister_InsertContacts] 
						@PhNo nvarchar(50),
						@PhName nvarchar(50),
						@HexPhNo Nvarchar(50)
						
AS
--********************************************************************************************
--       Creation Date                      :      20.11.2018  01:11
--       Created By                         :      
--       Usage                                                                                
--                                                                                            
--                                                                                            
--                                                                                            
--********************************************************************************************



BEGIN
	if((SELECT COUNT(1)FROM HexContacts WHERE PhNo = @PhNo ) <> 1)
		insert into HexContacts (PhName,PhNo,HexPhNo) values (@PhName,@PhNo,@HexPhNo);
	select '1' as COMMAND
END

GO

/****** Object:  StoredProcedure [dbo].[HexCallRegister_MaxDBLog]    Script Date: 10/01/2019 01:53:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[HexCallRegister_MaxDBLog] 
						@HexPhNo Nvarchar(50),
						@Version Nvarchar(50)
						
AS
--********************************************************************************************
--       Creation Date                      :      20.11.2018  01:11
--       Created By                         :      
--       Usage                                                                                
--                                                                                            
--                                                                                            
--                                                                                            
--********************************************************************************************



BEGIN
	if(Select count(*) from CallLogs where HexPhNo = @HexPhNo)<>0
		select Max(LogID) as LogId from CallLogs where HexPhNo = @HexPhNo;		 
	else
		begin
			select '-1' as LogId 
			return
		end
	if(Select count(*) from ConnectionLog where HexPhNo = @HexPhNo)<>0
		UPDATE ConnectionLog SET LastConnected = GETDATE(),Version=@Version where HexPhNo = @HexPhNo
	else
		INSERT into ConnectionLog(HexPhNo,LastConnected,Version) Values(@HexPhNo,GETDATE(),'--')
END

GO

/****** Object:  StoredProcedure [dbo].[HexCallRegister_CallerTop90]    Script Date: 10/01/2019 01:53:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[HexCallRegister_CallerTop90] 
						@HexPhNo Nvarchar(50),
						@DateId Nvarchar(50)
AS
Declare @percent as int;
Declare @TopCnt as int;	
SET @percent=100
SET @TopCnt=0
if ((SELECT SUM(totdur) FROM calllogs_view_totalstats where dateid like @DateID + '%' and hexPhNo like @HexPhNo +'%') = 0)
	return
if(@HexPhNo<>'All')
begin
	WHILE @Percent > 10 And @TopCnt < 9
		BEGIN
			SET @TopCnt = @TopCnt + 1; 
			select @Percent=sum(totdur)*100/(SELECT SUM(totdur) FROM calllogs_view_totalstats where dateid like @DateID + '%' and hexPhNo like @HexPhNo +'%') from calllogs_view_totalstats where dateid like @DateId + '%' and hexPhNo like @HexPhNo +'%' and callerphname not in (select Top(@TopCnt) callerphname from calllogs_view_totalstats where dateid like @DateId + '%' and hexPhNo like @HexPhNo +'%' order by totdur desc) group by hexphno,dateid,empname	
			--Select @Percent as Perc
			--Select @TopCnt as Topcnt
		END
		--select @TopCnt as fnltopcnt
		select dateid,callerPhName,hexphno,empname,calls,totdur,totdur*100/(SELECT SUM(totdur) FROM calllogs_view_totalstats where dateid like @DateID + '%' and hexPhNo like @HexPhNo +'%') as per from (select Top(@TopCnt) * from calllogs_view_totalstats where dateid like @DateID+'%' and hexPhNo like @HexPhNo +'%' order by totdur desc) as q1
		UNION all
		select dateid,'Other' as callerPhName,hexphno,empname,sum(calls) as calls,sum(totdur) as totdur ,sum(totdur)*100/(SELECT SUM(totdur) FROM calllogs_view_totalstats where dateid like @DateID + '%' and hexPhNo like @HexPhNo +'%') as per from calllogs_view_totalstats where dateid like @DateID+'%' and hexPhNo like @HexPhNo +'%' and callerphname not in (select Top(@TopCnt) callerphname from calllogs_view_totalstats where dateid like @DateID+'%' and hexPhNo like @HexPhNo +'%' order by totdur desc) group by hexphno,dateid,empname
END
else
begin
	WHILE @Percent > 10 And @TopCnt < 9
		BEGIN
			SET @TopCnt = @TopCnt + 1; 
			select @Percent=sum(totdur)*100/(SELECT SUM(totdur) FROM calllogs_view_totalstats where dateid like @DateID + '%' ) from calllogs_view_totalstats where dateid like @DateId + '%' and callerphname not in (select Top(@TopCnt) callerphname from calllogs_view_totalstats where dateid like @DateId + '%'  order by totdur desc) group by dateid	
			--Select @Percent as Perc
			--Select @TopCnt as Topcnt
		END
		--select @TopCnt as fnltopcnt
		select dateid,callerPhName,calls,totdur,totdur*100/(SELECT SUM(totdur) FROM calllogs_view_totalstats where dateid like @DateID + '%' ) as per from (select Top(@TopCnt) * from calllogs_view_totalstats where dateid like @DateID+'%' order by totdur desc) as q1
		UNION all
		select dateid,'Other' as callerPhName,sum(calls) as calls,sum(totdur) as totdur ,sum(totdur)*100/(SELECT SUM(totdur) FROM calllogs_view_totalstats where dateid like @DateID + '%' ) as per from calllogs_view_totalstats where dateid like @DateID+'%' and callerphname not in (select Top(@TopCnt) callerphname from calllogs_view_totalstats where dateid like @DateID+'%' order by totdur desc) group by dateid
END


GO

/****** Object:  StoredProcedure [dbo].[HexCallRegister_CallerTop5]    Script Date: 10/01/2019 01:53:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[HexCallRegister_CallerTop5] 
						@HexPhNo Nvarchar(50),
						@DateId Nvarchar(50)
AS
Declare @percent as int;
Declare @TopCnt as int;	
SET @percent=100
SET @TopCnt=0
WHILE @Percent > 10 And @TopCnt < 9
	BEGIN
		SET @TopCnt = @TopCnt + 1; 
		select @Percent=sum(totdur)*100/(SELECT SUM(totdur) FROM calllogs_view_totalstats where dateid like @DateID + '%' and hexPhNo = @HexPhNo) from calllogs_view_totalstats where dateid like @DateId + '%' and hexPhNo = @HexPhNo and callerphname not in (select Top(@TopCnt) callerphname from calllogs_view_totalstats where dateid like @DateId + '%' and hexPhNo = @HexPhNo order by totdur desc) group by hexphno,dateid,empname	
		--Select @Percent as Perc
		--Select @TopCnt as Topcnt
	END
	--select @TopCnt as fnltopcnt
	select dateid,callerPhName,hexphno,empname,calls,totdur,totdur*100/(SELECT SUM(totdur) FROM calllogs_view_totalstats where dateid like @DateID + '%' and hexPhNo = @HexPhNo) as per from (select Top(@TopCnt) * from calllogs_view_totalstats where dateid like @DateID+'%' and hexPhNo = @HexPhNo order by totdur desc) as q1
	UNION all
	select dateid,'Other' as callerPhName,hexphno,empname,sum(calls) as calls,sum(totdur) as totdur ,sum(totdur)*100/(SELECT SUM(totdur) FROM calllogs_view_totalstats where dateid like @DateID + '%' and hexPhNo = @HexPhNo) as per from calllogs_view_totalstats where dateid like @DateID+'%' and hexPhNo = @HexPhNo and callerphname not in (select Top(@TopCnt) callerphname from calllogs_view_totalstats where dateid like @DateID+'%' and hexPhNo = @HexPhNo order by totdur desc) group by hexphno,dateid,empname


GO

/****** Object:  StoredProcedure [dbo].[HexCallRegister_RecFile]    Script Date: 10/01/2019 01:53:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[HexCallRegister_RecFile] 
						@CallID Nvarchar(50),
						@CallerID  Nvarchar(50),
						@HexPhNo Nvarchar(50),
						@TimeDateID Nvarchar(50),
						@FileName Nvarchar(50),
						@FileString Nvarchar(MAX)
AS
--********************************************************************************************
--       Creation Date                      :      20.11.2018  01:11
--       Created By                         :      
--       Usage                                                                                
--                                                                                            
--                                                                                            
--                                                                                            
--********************************************************************************************


BEGIN
	INSERT INTO CallRecordingFiles (CallID,CallerID,HexPhNo,TimeDateID,[FileName],FileString) VALUES (@CallID,@CallerID,@HexPhNo,@TimeDateID,@FileName,@FileString);
	Select '1' AS Command;		 
	
END

GO

/****** Object:  StoredProcedure [dbo].[HexCallRegister_LogCallDetails]    Script Date: 10/01/2019 01:53:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[HexCallRegister_LogCallDetails] 
						@CallID Nvarchar(50),
						@LogID  int,
						@HexPhNo Nvarchar(50),
						@CallerPhNo Nvarchar(50),
						@Type Nvarchar(50),
						@TimeDateID Nvarchar(50),
						@Duration Nvarchar(50),
						@CallerPhName Nvarchar(50),
						@RecordingFound Nvarchar(50),
						@AppVersion Nvarchar(50)
AS
--********************************************************************************************
--       Creation Date                      :      20.11.2018  01:11
--       Created By                         :      
--       Usage                                                                                
--                                                                                            
--                                                                                            
--                                                                                            
--********************************************************************************************


BEGIN
	INSERT INTO CallLogs (CallID,LogID,HexPhNo,CallerPhNo,[Type],TimeDateID,Duration,CallerPhName,RecordingFound,ServerLogTime,AppVersion) VALUES (@CallID,@LogID,@HexPhNo,@CallerPhNo,@Type,@TimeDateID,@Duration,@CallerPhName,@RecordingFound,GETDATE(),@AppVersion);
	Select '1' AS Command;		 
	
END

GO


