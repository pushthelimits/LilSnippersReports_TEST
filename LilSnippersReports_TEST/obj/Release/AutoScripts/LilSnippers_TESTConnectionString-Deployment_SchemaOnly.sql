CREATE USER [IIS APPPOOL\ASP.NET v4.0] FOR LOGIN [IIS APPPOOL\ASP.NET v4.0] WITH DEFAULT_SCHEMA=[dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientID] [int] IDENTITY(1,1) NOT NULL,
	[ClientFirstName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ClientLastName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MonthID] [int] NULL,
	[BirthDate] [int] NULL,
	[BirthYear] [int] NULL,
	[HaircutNotes] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HomeAddressID] [int] NULL,
 CONSTRAINT [PK_Client_1] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[Country] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[EmpFirstName] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmpLastName] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmpAddress1] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmpAddress2] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmpCity] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[StateID] [int] NULL,
	[EmpZIP] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmpPhone] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmpEmail] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmpBirthDate] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HireDate] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HourlyWage] [decimal](2, 2) NULL,
	[TaxStatus] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NumExemptions] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmpPositionID] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpPosition](
	[EmpPositionID] [int] IDENTITY(1,1) NOT NULL,
	[EmpPosition] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_EmpPosition] PRIMARY KEY CLUSTERED 
(
	[EmpPositionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HearAbout](
	[HearAboutID] [int] IDENTITY(1,1) NOT NULL,
	[HearAbout] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_HearAbout] PRIMARY KEY CLUSTERED 
(
	[HearAboutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeAddress](
	[HomeAddressID] [int] IDENTITY(1,1) NOT NULL,
	[HomeAddress1] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HomeAddress2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HomeCity] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[StateID] [int] NULL,
	[HomeZIP] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HomePhone] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HomeEmail] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HearAboutID] [int] NULL,
 CONSTRAINT [PK_HomeAddress] PRIMARY KEY CLUSTERED 
(
	[HomeAddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Media](
	[MediaID] [int] IDENTITY(1,1) NOT NULL,
	[MediaTitle] [varchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MediaTypeID] [int] NOT NULL,
 CONSTRAINT [PK_Media] PRIMARY KEY CLUSTERED 
(
	[MediaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaType](
	[MediaTypeID] [int] IDENTITY(1,1) NOT NULL,
	[MediaType] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_MediaType] PRIMARY KEY CLUSTERED 
(
	[MediaTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Month](
	[MonthID] [int] IDENTITY(1,1) NOT NULL,
	[MonthName] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Month] PRIMARY KEY CLUSTERED 
(
	[MonthID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParentGuardian](
	[ParentGuardianID] [int] IDENTITY(1,1) NOT NULL,
	[ParentFirstName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ParentLastName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HomeAddressID] [int] NULL,
 CONSTRAINT [PK_ParentGuardian] PRIMARY KEY CLUSTERED 
(
	[ParentGuardianID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ItemNo] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Description] [varchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Size] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CostPerEach] [decimal](5, 2) NULL,
	[NoPerPack] [int] NULL,
	[CostPerPack] [decimal](5, 2) NULL,
	[RetailPrice] [decimal](5, 2) NULL,
	[QtyOnHand] [smallint] NULL,
	[PhysicalCount] [smallint] NULL,
	[QtyOnOrder] [smallint] NULL,
	[ReorderLevel] [smallint] NULL,
	[Active] [bit] NULL,
	[ProductTypeID] [int] NULL,
	[SupplierID] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[ItemNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[ProductTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ProductType] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ProductTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ServiceID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceName] [varchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ServicePrice] [decimal](5, 2) NOT NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[State] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StylistTimes](
	[StylistTimeID] [int] IDENTITY(1,1) NOT NULL,
	[TimeMinutes] [int] NULL,
	[EmployeeID] [int] NULL,
 CONSTRAINT [PK_StylistTimes] PRIMARY KEY CLUSTERED 
(
	[StylistTimeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Address1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[City] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[StateID] [int] NULL,
	[Zip] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CountryID] [int] NULL,
	[Website] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Phone] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Fax] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction_Details](
	[UniqueID] [int] IDENTITY(1,1) NOT NULL,
	[TransactionID] [int] NOT NULL,
	[ClientFirstName] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ClientLastName] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ServiceID] [int] NOT NULL,
	[ServiceQuantity] [smallint] NULL,
	[ProductID] [int] NOT NULL,
	[ItemNo] [varchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ProductQuantity] [smallint] NULL,
	[Discount] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Transaction_Details] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC,
	[TransactionID] ASC,
	[ServiceID] ASC,
	[ProductID] ASC,
	[ItemNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[TransactionID] [int] IDENTITY(1,1) NOT NULL,
	[TransDate] [date] NULL,
	[EmployeeID] [int] NULL,
	[HomeAddressID] [int] NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
ALTER TABLE [dbo].[Client]  WITH NOCHECK ADD  CONSTRAINT [FK_Client_HomeAddress] FOREIGN KEY([HomeAddressID])
REFERENCES [dbo].[HomeAddress] ([HomeAddressID])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_HomeAddress]
GO
ALTER TABLE [dbo].[Client]  WITH NOCHECK ADD  CONSTRAINT [FK_Client_Month] FOREIGN KEY([MonthID])
REFERENCES [dbo].[Month] ([MonthID])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Month]
GO
ALTER TABLE [dbo].[Employee]  WITH NOCHECK ADD  CONSTRAINT [FK_Employee_EmpPosition] FOREIGN KEY([EmpPositionID])
REFERENCES [dbo].[EmpPosition] ([EmpPositionID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_EmpPosition]
GO
ALTER TABLE [dbo].[Employee]  WITH NOCHECK ADD  CONSTRAINT [FK_Employee_State] FOREIGN KEY([StateID])
REFERENCES [dbo].[State] ([StateID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_State]
GO
ALTER TABLE [dbo].[HomeAddress]  WITH NOCHECK ADD  CONSTRAINT [FK_HomeAddress_HearAbout] FOREIGN KEY([HearAboutID])
REFERENCES [dbo].[HearAbout] ([HearAboutID])
GO
ALTER TABLE [dbo].[HomeAddress] CHECK CONSTRAINT [FK_HomeAddress_HearAbout]
GO
ALTER TABLE [dbo].[HomeAddress]  WITH NOCHECK ADD  CONSTRAINT [FK_HomeAddress_State] FOREIGN KEY([StateID])
REFERENCES [dbo].[State] ([StateID])
GO
ALTER TABLE [dbo].[HomeAddress] CHECK CONSTRAINT [FK_HomeAddress_State]
GO
ALTER TABLE [dbo].[Media]  WITH NOCHECK ADD  CONSTRAINT [FK_Media_Media] FOREIGN KEY([MediaTypeID])
REFERENCES [dbo].[MediaType] ([MediaTypeID])
GO
ALTER TABLE [dbo].[Media] CHECK CONSTRAINT [FK_Media_Media]
GO
ALTER TABLE [dbo].[ParentGuardian]  WITH NOCHECK ADD  CONSTRAINT [FK_ParentGuardian_HomeAddress] FOREIGN KEY([HomeAddressID])
REFERENCES [dbo].[HomeAddress] ([HomeAddressID])
GO
ALTER TABLE [dbo].[ParentGuardian] CHECK CONSTRAINT [FK_ParentGuardian_HomeAddress]
GO
ALTER TABLE [dbo].[Product]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_ProductType] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[ProductType] ([ProductTypeID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductType]
GO
ALTER TABLE [dbo].[Product]  WITH NOCHECK ADD  CONSTRAINT [FK_Product_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([SupplierID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Supplier]
GO
ALTER TABLE [dbo].[StylistTimes]  WITH NOCHECK ADD  CONSTRAINT [FK_StylistTimes_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[StylistTimes] CHECK CONSTRAINT [FK_StylistTimes_Employee]
GO
ALTER TABLE [dbo].[Supplier]  WITH NOCHECK ADD  CONSTRAINT [FK_Supplier_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_Country]
GO
ALTER TABLE [dbo].[Supplier]  WITH NOCHECK ADD  CONSTRAINT [FK_Supplier_State] FOREIGN KEY([StateID])
REFERENCES [dbo].[State] ([StateID])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_State]
GO
ALTER TABLE [dbo].[Transaction_Details]  WITH NOCHECK ADD  CONSTRAINT [FK_Transaction_Details_Product] FOREIGN KEY([ProductID], [ItemNo])
REFERENCES [dbo].[Product] ([ProductID], [ItemNo])
GO
ALTER TABLE [dbo].[Transaction_Details] NOCHECK CONSTRAINT [FK_Transaction_Details_Product]
GO
ALTER TABLE [dbo].[Transaction_Details]  WITH NOCHECK ADD  CONSTRAINT [FK_Transaction_Details_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[Transaction_Details] NOCHECK CONSTRAINT [FK_Transaction_Details_Service]
GO
ALTER TABLE [dbo].[Transaction_Details]  WITH NOCHECK ADD  CONSTRAINT [FK_Transaction_Details_Transactions] FOREIGN KEY([TransactionID])
REFERENCES [dbo].[Transactions] ([TransactionID])
GO
ALTER TABLE [dbo].[Transaction_Details] NOCHECK CONSTRAINT [FK_Transaction_Details_Transactions]
GO
ALTER TABLE [dbo].[Transactions]  WITH NOCHECK ADD  CONSTRAINT [FK_Transactions_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_Employee]
GO
ALTER TABLE [dbo].[Transactions]  WITH NOCHECK ADD  CONSTRAINT [FK_Transactions_HomeAddress] FOREIGN KEY([HomeAddressID])
REFERENCES [dbo].[HomeAddress] ([HomeAddressID])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_HomeAddress]
GO
