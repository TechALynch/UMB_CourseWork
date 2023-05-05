--Drop database if already exist
DROP DATABASE IF EXISTS [IT471_GeneralSecurity2.0]

--Create Database named as IT471_GeneralSecurity_TEST
Create Database [IT471_GeneralSecurity2.0] 
GO 

--Choose the database [IT471_GeneralSecurity_TEST]
USE [IT471_GeneralSecurity] 
GO

-- Drop tables if already exist (this part makes your copy & paste & try & error convenient)
BEGIN TRY
	DROP TABLE IF EXISTS [dbo].[Dimension_Location]
	DROP TABLE IF EXISTS [dbo].[Dimension_Time]
	DROP TABLE IF EXISTS [dbo].[Dimension_Employee]
	DROP TABLE IF EXISTS [dbo].[Dimension_Client]
	DROP TABLE IF EXISTS [dbo].[Dimension_Incident]
	DROP TABLE IF EXISTS [dbo].[FACT_GeneralSecurity]			   
END TRY

BEGIN CATCH
	/*No Action*/
END CATCH

CREATE TABLE [Dimension_Location] (
  [AddressID] [nvarchar](50) NOT NULL,
  [StreetName] [nvarchar](50) NOT NULL,
  [StreetNumber] [nvarchar](50) NOT NULL,
  [City] [nvarchar](50) NOT NULL,
  [State] VARCHAR(2), -- MA Format
  [ZipCode] VARCHAR(10),
  PRIMARY KEY ([AddressID])
);

CREATE TABLE [Dimension_Time] (
  [TimeID] [nvarchar](50) NOT NULL,
  [Year] CHAR(4),-- Year value of Date stored in Row,
  [Month] VARCHAR(2), --Number of the Month 1 to 12,
  [Date] DATETIME,
  [Hour] [tinyint] NOT NULL,
  [Minute] [tinyint] NOT NULL,
  [Second] [tinyint] NOT NULL,
  PRIMARY KEY ([TimeID]),
);

CREATE TABLE [Dimension_Employee] (
  [Employee_ID] [nvarchar](50) NOT NULL,
  [E_AddressID] [nvarchar](50) NOT NULL,
  [E_FirstName] [nvarchar](50) NULL,
  [E_MiddleInitial] [nvarchar](50) NULL,
  [E_LastName] [nvarchar](50) NULL,
  [E_Suffix] [nvarchar](3) NULL, -- Jr. Format
  [Position] [nvarchar](50) NOT NULL,
  [PayRate] [float] NULL,
  [EmployeeStatus] VARCHAR(9),
  [E_PhoneNumber] CHAR(12) NOT NULL,
  [E_Email] varchar(80),
  PRIMARY KEY ([Employee_ID])
);

CREATE TABLE [Dimension_Client] (
  [ClientID] [nvarchar](50) NOT NULL,
  [C_AddressID] [nvarchar](50) NOT NULL,
  [ClientFName] [nvarchar](50) NOT NULL,
  [ClientLName] [nvarchar](50) NOT NULL,
  [ClientType] [nvarchar](50) NOT NULL,
  [JobDescription] [nvarchar](500) NOT NULL,
  [C_PhoneNumber] CHAR(12) NOT NULL, -- 617-877-2946 Format
  [C_Email] varchar(80),
  PRIMARY KEY ([ClientID])
);

CREATE TABLE [Dimension_Incident] (
  [IncidentID] [nvarchar](50) NOT NULL,
  [ClientID] [nvarchar](50) NOT NULL,
  [TimeID] [nvarchar](50) NOT NULL,
  [AddressID] [nvarchar](50) NOT NULL,
  [Category] [nvarchar](50) NOT NULL,
  [IncidentDescription ] [nvarchar](500) NOT NULL,
  [DateCreated] DATETIME,
  PRIMARY KEY ([IncidentID])
);

CREATE TABLE [FACT_GeneralSecurity] (
  [ContractID] [nvarchar](50) NOT NULL,
  [ContractAmount] [int] NOT NULL,
  [ContractStatus] VARCHAR(9),
  [EquipmentCost] [int] NULL,
  [AddressID] [nvarchar](50) NOT NULL, 
  [TimeID] [nvarchar](50) NOT NULL, 
  [Employee_ID] [nvarchar](50) NOT NULL, 
  [ClientID][nvarchar](50) NOT NULL, 
  [IncidentID] [nvarchar](50) NOT NULL,
  PRIMARY KEY ([ContractID])
);