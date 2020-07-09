USE [master];
GO

CREATE LOGIN [igadmin] 
  WITH PASSWORD    = N'0123456789' MUST_CHANGE
, DEFAULT_DATABASE = [IGDB_PROD]
, CHECK_EXPIRATION = ON
, CHECK_POLICY     = ON;
GO

ALTER SERVER ROLE [sysadmin] ADD MEMBER [igadmin];
GO

USE [IGDB_PROD];
GO

CREATE USER [igadmin] FOR LOGIN [igadmin];
ALTER ROLE [db_datareader] ADD MEMBER [igadmin];
ALTER ROLE [db_datawriter] ADD MEMBER [igadmin];
ALTER ROLE [db_ddladmin] ADD MEMBER [igadmin];
ALTER ROLE [db_owner] ADD MEMBER [igadmin];
GO


