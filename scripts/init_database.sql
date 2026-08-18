/*
=================================================
Creating Database and Schemas
=================================================

Script Purpose:
  This script creates a new database called 'DataWarehouse' after checking if it already exists.
  If it exists, it is dropped and recreated. Afterwards, the script sets up three schemas within 
  the database: 'bronze', 'silver', and 'gold'.

Warning:
  Running this script will drop the entire database 'DataWarehouse' if it already exists.
  All data in the database will be permanently deleted. Proceed with caution and ensure you have proper
  backups before running the script.
*/

-- Create Database 'DataWarehouse'

USE master;
GO


-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
Begin
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create Database and instruct SQL to use the new database created

CREATE DATABASE DataWarehouse;

USE DataWarehouse;


--Create Schemass

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
Go
CREATE SCHEMA gold;
Go
