USE [master];
GO

CREATE LOGIN [user_name] 
  WITH PASSWORD    = N'0123456789' MUST_CHANGE
, DEFAULT_DATABASE = [databasename]
, CHECK_EXPIRATION = ON
, CHECK_POLICY     = ON;
GO

ALTER SERVER ROLE [sysadmin] ADD MEMBER [user_name];
GO

USE [databasename];
GO

CREATE USER [igadmin] FOR LOGIN [user_name];
ALTER ROLE [db_datareader] ADD MEMBER [user_name];
ALTER ROLE [db_datawriter] ADD MEMBER [user_name];
ALTER ROLE [db_ddladmin] ADD MEMBER [user_name];
ALTER ROLE [db_owner] ADD MEMBER [user_name];
GO


