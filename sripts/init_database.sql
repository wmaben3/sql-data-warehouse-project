/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/


--Create Database--
USE master; --Accesses master to create database--
GO --seperater for multiple sql statements--

IF EXISTS (SELECT 1 FROM sys.databases WHERE name= 'DataWarehouse') --Checks for existing DataWarehouse name, if exists it drops the DataWarehouse and creates a new one--
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
	END;
	GO


CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
