-- https://sqldbpool.com/2015/02/03/script-to-list-out-sql-logins-and-database-user-mappings/

create table #loginmappings(  
 LoginName  nvarchar(128) NULL,  
 DBName     nvarchar(128) NULL,  
 UserName   nvarchar(128) NULL,  
 AliasName  nvarchar(128) NULL 
)  
 
insert into #loginmappings
EXEC master..sp_msloginmappings
 
select * from #loginmappings
 
drop table #loginmappings