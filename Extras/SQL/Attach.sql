USE [master]
GO
CREATE DATABASE [NFe] ON 
( FILENAME = N'C:\SCE\AutoMagazine\Network\4.1\Database\NFe_data.mdf' ),
( FILENAME = N'C:\SCE\AutoMagazine\Network\4.1\Database\NFe_log.ldf' )
 FOR ATTACH
GO