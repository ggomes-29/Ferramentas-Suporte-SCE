--BLOCO 2
USE [master]
GO
IF  EXISTS (SELECT * FROM sys.server_principals WHERE name = N'PocketPDV')
DROP LOGIN [PocketPDV]
GO
CREATE LOGIN [PocketPDV] WITH PASSWORD=N'627311', DEFAULT_DATABASE=[PocketPDV],DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
EXEC master..sp_addsrvrolemember @loginame = N'PocketPDV', @rolename = N'sysadmin'
GO
USE [PocketPDV]
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'PocketPDV')
DROP USER [PocketPDV]
GO
CREATE USER [PocketPDV] FOR LOGIN [PocketPDV]
GO
USE [PocketPDV]
GO
EXEC sp_addrolemember N'db_owner', N'PocketPDV'
GO
--FIM BLOCO 2