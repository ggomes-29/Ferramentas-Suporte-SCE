--BLOCO 1
USE [master]
GO
CREATE DATABASE [PocketPDV] ON 
( FILENAME = N'C:\SCE\AutoMagazine\Network\4.1\Database\PocketPDV_Data.MDF' ),
( FILENAME = N'C:\SCE\AutoMagazine\Network\4.1\Database\PocketPDV_log.LDF' )
 FOR ATTACH
GO
--FIM BLOCO 1